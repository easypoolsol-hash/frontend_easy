import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/core/config/api_config.dart';
import 'package:frontend_easy/core/services/token_manager.dart';
import 'package:frontend_easy/shared/services/auth_interceptor.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

/// API Service - Centralized HTTP client with security features
/// - Automatic token refresh on 401/403
/// - Centralized token management via dependency injection
/// - Environment-based configuration
///
/// Fortune 500 Pattern: Provider-based dependency injection
/// - Single TokenManager instance shared across entire app
/// - No singletons, all dependencies injected
/// - Proper separation of concerns
class ApiService {
  final TokenManager _tokenManager;
  late final FrontendEasyApi _api;

  ApiService(this._tokenManager) {
    // Initialize API client with base URL
    _api = FrontendEasyApi(basePathOverride: ApiConfig.baseUrl);

    // Add debug logging interceptor
    _api.dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) {
          print('[API] Response from ${response.requestOptions.path}');
          print('[API] Status code: ${response.statusCode}');
          print('[API] Response data type: ${response.data?.runtimeType}');
          if (response.requestOptions.path.contains('/routes/')) {
            print('[API] Routes response data: ${response.data}');
          }
          handler.next(response);
        },
        onError: (error, handler) {
          print('[API] Error from ${error.requestOptions.path}');
          print('[API] Error: ${error.message}');
          handler.next(error);
        },
      ),
    );

    // Add centralized auth interceptor with injected TokenManager
    _api.dio.interceptors.add(AuthInterceptor(_tokenManager));
  }

  /// Get API endpoints access (all endpoints are under this API class)
  /// Note: frontend_easy is school-only (no parent portal)
  ApiApi get api => _api.getApiApi();

  /// Get Buses API endpoints (separate from main API)
  BusesApi get buses => _api.getBusesApi();

  /// Get underlying HTTP client for custom requests
  FrontendEasyApi get client => _api;
}

/// Provider-based API Service (industry standard pattern)
/// Depends on tokenManagerProvider for centralized token management
final apiServiceProvider = Provider<ApiService>((ref) {
  final tokenManager = ref.watch(tokenManagerProvider);
  return ApiService(tokenManager);
});
