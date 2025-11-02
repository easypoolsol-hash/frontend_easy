/// API Configuration
/// Single source of truth for backend connection
/// Runtime environment variables injected via --dart-define
class ApiConfig {
  // Private constructor to prevent instantiation
  ApiConfig._();

  /// Base URL for backend API
  /// Uses --dart-define at build time: flutter run --dart-define=API_BASE_URL=...
  static String get baseUrl {
    return const String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: 'http://localhost:8000',
    );
  }

  /// Google Maps API Key
  /// HARDCODED - This key is used for all environments
  /// Key: AIzaSyDZDOD6oQbVcDytzN2XE6DWakpLDEJbDdI
  static String get googleMapsApiKey {
    // HARDCODED KEY - DO NOT CHANGE
    return 'AIzaSyDZDOD6oQbVcDytzN2XE6DWakpLDEJbDdI';
  }

  /// API timeout duration
  static const Duration timeout = Duration(seconds: 30);

  /// Enable debug logging
  static const bool enableLogging = true;
}
