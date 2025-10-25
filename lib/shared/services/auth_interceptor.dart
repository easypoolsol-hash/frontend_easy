import 'dart:async';
import 'package:dio/dio.dart';
import 'package:frontend_easy/shared/services/auth_service.dart';

/// JWT Token Refresh Interceptor - Fortune 500 Standard
/// Automatically refreshes expired access tokens using refresh token
/// Prevents user from being logged out when access token expires
/// Pattern: Improved from bus_kiosk with request queuing via Completer
class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final AuthService _authService = AuthService();

  // Completer to queue concurrent 401 requests (improved from bus_kiosk)
  static Completer<bool>? _refreshCompleter;
  // Lock to prevent race condition when creating the completer
  static bool _isRefreshing = false;

  AuthInterceptor(this._dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Add authorization header if we have a token
    final token = await _authService.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Check if error is 401 Unauthorized
    if (err.response?.statusCode == 401) {
      // If refresh is already in progress, wait for it
      if (_isRefreshing) {
        // Wait for the ongoing refresh to complete
        if (_refreshCompleter != null) {
          final refreshed = await _refreshCompleter!.future;

          if (refreshed) {
            // Refresh succeeded - retry this request with new token
            try {
              final response = await _retry(err.requestOptions);
              return handler.resolve(response);
            } catch (e) {
              // Retry failed
              return handler.next(err);
            }
          } else {
            // Refresh failed
            return handler.next(err);
          }
        } else {
          // Edge case: flag is true but no completer (shouldn't happen)
          return handler.next(err);
        }
      }

      // Atomic check-and-set to prevent race condition
      if (_isRefreshing) {
        // Another request beat us to it, wait for their refresh
        if (_refreshCompleter != null) {
          final refreshed = await _refreshCompleter!.future;
          if (refreshed) {
            try {
              final response = await _retry(err.requestOptions);
              return handler.resolve(response);
            } catch (e) {
              return handler.next(err);
            }
          }
        }
        return handler.next(err);
      }

      // We're first - start the refresh
      _isRefreshing = true;
      _refreshCompleter = Completer<bool>();

      try {
        // Try to refresh the token
        final refreshed = await _refreshToken();

        // Complete the completer so waiting requests can proceed
        _refreshCompleter!.complete(refreshed);

        if (refreshed) {
          // Retry the original request with new token
          try {
            final response = await _retry(err.requestOptions);
            return handler.resolve(response);
          } catch (e) {
            // If retry fails, pass the error through
            return handler.next(err);
          }
        } else {
          // Refresh failed - user needs to re-login
          await _authService.logout();
          return handler.next(err);
        }
      } catch (e) {
        // Exception during refresh - complete with failure
        if (!_refreshCompleter!.isCompleted) {
          _refreshCompleter!.complete(false);
        }
        await _authService.logout();
        return handler.next(err);
      } finally {
        // Clear the lock and completer
        _isRefreshing = false;
        Future.delayed(const Duration(milliseconds: 100), () {
          _refreshCompleter = null;
        });
      }
    }

    // Pass through non-401 errors
    return handler.next(err);
  }

  /// Refresh access token using refresh token
  /// Returns true if successful, false if refresh failed
  /// Uses separate Dio instance to avoid recursive interceptor calls (bus_kiosk pattern)
  Future<bool> _refreshToken() async {
    try {
      final refreshToken = await _authService.getRefreshToken();

      if (refreshToken == null || refreshToken.isEmpty) {
        return false;
      }

      // Create a new Dio instance WITHOUT interceptors to avoid recursion
      // This prevents the refresh endpoint from triggering this interceptor again
      final refreshDio = Dio(
        BaseOptions(
          baseUrl: _dio.options.baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {'Content-Type': 'application/json'},
        ),
      );

      // Call refresh endpoint
      final response = await refreshDio.post<Map<String, dynamic>>(
        '/api/v1/auth/token/refresh/',
        data: {'refresh': refreshToken},
      );

      if (response.statusCode == 200 && response.data != null) {
        final newAccessToken = response.data!['access'];
        final newRefreshToken = response.data!['refresh'];

        if (newAccessToken != null && newRefreshToken != null) {
          // Store new tokens
          await _authService.storeTokens(
            accessToken: newAccessToken,
            refreshToken: newRefreshToken,
          );
          return true;
        }
      }

      return false;
    } catch (e) {
      // Refresh failed (network error, invalid refresh token, etc.)
      return false;
    }
  }

  /// Retry the failed request with new access token
  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final token = await _authService.getAccessToken();

    // Update authorization header
    requestOptions.headers['Authorization'] = 'Bearer $token';

    // Retry the request
    return await _dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        method: requestOptions.method,
        headers: requestOptions.headers,
      ),
    );
  }
}
