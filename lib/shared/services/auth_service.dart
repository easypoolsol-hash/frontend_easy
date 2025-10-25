import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:frontend_easy/shared/services/api_service.dart';

/// Authentication Service - Fortune 500 Security Standards
/// Uses encrypted storage (KeyChain/KeyStore) instead of plain text
/// Single responsibility: Manage authentication state and tokens
/// NOTE: Clears tokens on app startup for development/demo purposes
class AuthService {
  // Singleton pattern
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  // Secure storage using platform-specific encryption
  // iOS: KeyChain | Android: KeyStore | Web: AES encryption
  final _secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
    ),
  );

  // Storage keys
  static const _keyAccessToken = 'secure_access_token';
  static const _keyRefreshToken = 'secure_refresh_token';

  /// Check if user is authenticated
  Future<bool> isAuthenticated() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }

  /// Get stored access token from secure storage
  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: _keyAccessToken);
  }

  /// Get stored refresh token from secure storage
  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: _keyRefreshToken);
  }

  /// Store authentication tokens in encrypted storage
  /// Industry standard: Tokens encrypted at rest
  Future<void> storeTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    // Write to encrypted storage (KeyChain/KeyStore)
    await _secureStorage.write(key: _keyAccessToken, value: accessToken);
    await _secureStorage.write(key: _keyRefreshToken, value: refreshToken);

    // Update API client authorization header
    ApiService().client.dio.options.headers['Authorization'] = 'Bearer $accessToken';
  }

  /// Clear authentication tokens and logout
  /// Security: Blacklist token on server + remove from encrypted storage
  Future<void> logout() async {
    try {
      final refreshToken = await getRefreshToken();
      final accessToken = await getAccessToken();

      // Call server to blacklist token (Fortune 500 standard)
      if (refreshToken != null && refreshToken.isNotEmpty) {
        try {
          // Ensure Authorization header is set for authenticated logout endpoint
          await ApiService().client.dio.post<Map<String, dynamic>>(
            '/api/v1/users/logout/',
            data: {'refresh': refreshToken},
            options: accessToken != null
                ? Options(headers: {'Authorization': 'Bearer $accessToken'})
                : null,
          );
        } catch (e) {
          // Ignore server errors - still clear local tokens
        }
      }
    } catch (e) {
      // Ignore errors - still proceed with local logout
    }

    // Clear tokens from secure storage
    await _secureStorage.delete(key: _keyAccessToken);
    await _secureStorage.delete(key: _keyRefreshToken);

    // Clear authorization header from API client
    ApiService().client.dio.options.headers.remove('Authorization');
  }

  /// Initialize auth state (call on app startup)
  /// Production mode: Restore existing tokens if valid
  Future<void> initialize() async {
    // Production: Keep tokens, let interceptor handle refresh
    // The AuthInterceptor will automatically add auth headers on each request
    // No need to do anything here - tokens persist across app restarts
  }
}
