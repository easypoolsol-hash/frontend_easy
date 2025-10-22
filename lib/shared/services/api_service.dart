import 'package:frontend_easy_api/api.dart';

/// API Service wrapper around generated frontend_easy_api
/// Provides configured Dio instance and API client
/// Single responsibility: API client configuration
class ApiService {
  // Private constructor for singleton pattern
  ApiService._();

  static final ApiService _instance = ApiService._();

  /// Get singleton instance
  factory ApiService() => _instance;

  late final ApiApi _apiApi;
  late final ApiClient _apiClient;

  /// Initialize API service
  /// Must be called before using any API clients
  void initialize() {
    _apiClient = ApiClient(basePath: 'http://localhost:8000');
    _apiApi = ApiApi(_apiClient);
  }

  /// Get the main API client
  /// Provides access to all endpoints: routes, buses, students, etc.
  ///
  /// Example usage:
  /// ```dart
  /// final routes = await apiService.api.apiV1RoutesList();
  /// final buses = await apiService.api.apiV1BusesList();
  /// ```
  ApiApi get api => _apiApi;

  /// Get the API client for setting authentication
  ApiClient get client => _apiClient;
}
