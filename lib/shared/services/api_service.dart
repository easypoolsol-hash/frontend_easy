import 'package:bus_kiosk_api/bus_kiosk_api.dart';
import 'package:dio/dio.dart';

import 'package:frontend_easy/core/config/api_config.dart';

/// API Service wrapper around generated bus_kiosk_api
/// Provides configured Dio instance and API client
/// Single responsibility: API client configuration
class ApiService {
  // Private constructor for singleton pattern
  ApiService._();

  static final ApiService _instance = ApiService._();

  /// Get singleton instance
  factory ApiService() => _instance;

  late final Dio _dio;
  late final ApiApi _apiClient;

  /// Initialize API service
  /// Must be called before using any API clients
  void initialize() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: ApiConfig.timeout,
        receiveTimeout: ApiConfig.timeout,
      ),
    );

    // Add logging interceptor in debug mode
    if (ApiConfig.enableLogging) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        error: true,
      ));
    }

    _apiClient = ApiApi(_dio, basePathOverride: ApiConfig.baseUrl);
  }

  /// Get the main API client
  /// Provides access to all endpoints: routes, buses, students, etc.
  ///
  /// Example usage:
  /// ```dart
  /// final routes = await apiService.api.apiV1RoutesGet();
  /// final buses = await apiService.api.apiV1BusesGet();
  /// ```
  ApiApi get api => _apiClient;

  /// Direct access to Dio instance for custom requests if needed
  Dio get dio => _dio;
}
