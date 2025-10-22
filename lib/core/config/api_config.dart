/// API Configuration
/// Single source of truth for backend connection
class ApiConfig {
  // Private constructor to prevent instantiation
  ApiConfig._();

  /// Base URL for backend API
  /// TODO: Move to environment variables for production
  static const String baseUrl = 'http://localhost:8000/api/v1';

  /// API timeout duration
  static const Duration timeout = Duration(seconds: 30);

  /// Enable debug logging
  static const bool enableLogging = true;
}
