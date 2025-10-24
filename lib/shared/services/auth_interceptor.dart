import 'package:dio/dio.dart';
import 'package:frontend_easy/shared/services/auth_service.dart';

/// JWT Token Refresh Interceptor - Fortune 500 Standard
/// Automatically refreshes expired access tokens using refresh token
/// Prevents user from being logged out when access token expires
class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final AuthService _authService = AuthService();

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
      // Try to refresh the token
      final refreshed = await _refreshToken();

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
    }

    // Pass through non-401 errors
    return handler.next(err);
  }

  /// Refresh access token using refresh token
  /// Returns true if successful, false if refresh failed
  Future<bool> _refreshToken() async {
    try {
      final refreshToken = await _authService.getRefreshToken();

      if (refreshToken == null || refreshToken.isEmpty) {
        return false;
      }

      // Call refresh endpoint
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/v1/auth/token/refresh/',
        data: {'refresh': refreshToken},
        options: Options(
          headers: {
            // Don't include Authorization header for refresh
            'Authorization': null,
          },
        ),
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
