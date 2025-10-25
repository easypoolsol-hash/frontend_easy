import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/core/config/api_config.dart';
import 'package:frontend_easy/shared/services/auth_interceptor.dart';

/// API Service - Centralized HTTP client with security features
/// - Automatic token refresh on 401
/// - Secure token storage
/// - Environment-based configuration
class ApiService {
  ApiService._();
  static final ApiService _instance = ApiService._();

  /// Get singleton instance of ApiService
  factory ApiService() => _instance;

  late final FrontendEasyApi _api;

  /// Initialize API client with base URL and interceptors
  void initialize() {
    // Use environment-configured base URL
    _api = FrontendEasyApi(basePathOverride: ApiConfig.baseUrl);

    // Add automatic token refresh interceptor (Fortune 500 standard)
    _api.dio.interceptors.add(AuthInterceptor(_api.dio));
  }

  /// Get API endpoints access
  ApiApi get api => _api.getApiApi();

  /// Get Kiosk activation endpoints access
  KioskActivationApi get kioskApi => _api.getKioskActivationApi();

  /// Get underlying HTTP client for custom requests
  FrontendEasyApi get client => _api;
}
