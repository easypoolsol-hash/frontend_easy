import 'dart:html' as html;

/// API Configuration
/// Single source of truth for backend connection
/// Runtime environment variables injected via window.ENV (web) or compile-time (mobile)
class ApiConfig {
  // Private constructor to prevent instantiation
  ApiConfig._();

  /// Base URL for backend API
  /// Web: Reads from window.ENV.API_BASE_URL (injected by docker entrypoint)
  /// Mobile: Uses --dart-define at build time
  // The generated API client already prefixes paths with '/api/v1',
  // so keep base URL to the host only to avoid duplicated segments.
  static String get baseUrl {
    try {
      // For web: read from window.ENV
      final env = html.window as dynamic;
      if (env.ENV != null && env.ENV['API_BASE_URL'] != null) {
        return env.ENV['API_BASE_URL'] as String;
      }
    } catch (e) {
      // Not web platform or ENV not available
    }
    // Fallback for mobile or if window.ENV not set
    return const String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: 'http://localhost:8000',
    );
  }

  /// Google Maps API Key
  /// Web: Reads from window.ENV.GOOGLE_MAPS_API_KEY (injected by docker entrypoint)
  /// Mobile: Uses --dart-define at build time
  static String get googleMapsApiKey {
    try {
      // For web: read from window.ENV
      final env = html.window as dynamic;
      if (env.ENV != null && env.ENV['GOOGLE_MAPS_API_KEY'] != null) {
        return env.ENV['GOOGLE_MAPS_API_KEY'] as String;
      }
    } catch (e) {
      // Not web platform or ENV not available
    }
    // Fallback for mobile or if window.ENV not set
    return const String.fromEnvironment(
      'GOOGLE_MAPS_API_KEY',
      defaultValue: '',
    );
  }

  /// API timeout duration
  static const Duration timeout = Duration(seconds: 30);

  /// Enable debug logging
  static const bool enableLogging = true;
}
