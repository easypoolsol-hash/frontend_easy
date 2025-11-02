import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend_easy/core/services/token_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Firebase Auth Interceptor - Centralized Token Management
/// Uses TokenManager for single source of truth
/// Automatically attaches Firebase ID token to all API requests
/// Benefits: No duplicate token requests, automatic refresh, industry standard
class AuthInterceptor extends Interceptor {
  final TokenManager _tokenManager;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AuthInterceptor(this._tokenManager);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Get token from centralized manager (cached + auto-refreshed)
    final token = await _tokenManager.getToken();

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle 401/403 errors - token may be expired or invalid
    if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
      // Try force refresh token once
      final newToken = await _tokenManager.forceRefreshToken();

      if (newToken != null) {
        // Retry request with new token
        final opts = err.requestOptions;
        opts.headers['Authorization'] = 'Bearer $newToken';

        try {
          final dio = Dio();
          final response = await dio.fetch(opts);
          return handler.resolve(response);
        } catch (e) {
          // Retry failed - sign out user
          await _firebaseAuth.signOut();
        }
      } else {
        // Token refresh failed - sign out user
        await _firebaseAuth.signOut();
      }
    }

    // Pass through all errors
    return handler.next(err);
  }
}

/// Provider for AuthInterceptor
final authInterceptorProvider = Provider<AuthInterceptor>((ref) {
  final tokenManager = ref.watch(tokenManagerProvider);
  return AuthInterceptor(tokenManager);
});
