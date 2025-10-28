import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Firebase Auth Interceptor - Industry Standard (Google Security)
/// Automatically attaches Firebase ID token to all API requests
/// Firebase handles token refresh automatically - NO manual refresh needed!
/// Benefits: Zero security bugs, automatic token rotation, industry standard
class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AuthInterceptor(this._dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Get fresh Firebase ID token (automatically refreshed by Firebase SDK)
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      try {
        // Firebase SDK handles token refresh automatically
        // forceRefresh=true ensures we always get a valid token
        final idToken = await user.getIdToken(true);
        if (idToken != null && idToken.isNotEmpty) {
          // Send Firebase token to backend
          options.headers['Authorization'] = 'Bearer $idToken';
          // Also cache for offline use
          await _storage.write(key: 'firebase_id_token', value: idToken);
        }
      } catch (e) {
        // Token refresh failed - user may be offline or token revoked
        // Try to use cached token
        final cachedToken = await _storage.read(key: 'firebase_id_token');
        if (cachedToken != null) {
          options.headers['Authorization'] = 'Bearer $cachedToken';
        }
      }
    }
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // With Firebase Auth, 401 errors mean:
    // 1. User token is invalid/revoked (sign out user)
    // 2. Backend configuration issue
    // Firebase SDK already handles token refresh, so we don't need manual refresh logic!
    if (err.response?.statusCode == 401) {
      // Token is invalid - sign out user
      await _firebaseAuth.signOut();
      await _storage.delete(key: 'firebase_id_token');
    }

    // Pass through all errors
    return handler.next(err);
  }
}
