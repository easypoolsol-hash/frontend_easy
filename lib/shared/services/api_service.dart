import 'package:bus_kiosk_api/bus_kiosk_api.dart';
import 'package:dio/dio.dart';

import '../../core/config/api_config.dart';

/// API Service wrapper around generated bus_kiosk_api
/// Provides configured Dio instance and API clients
/// Single responsibility: API client configuration
class ApiService {
  // Private constructor for singleton pattern
  ApiService._();

  static final ApiService _instance = ApiService._();
  factory ApiService() => _instance;

  late final BusKioskApi _api;

  /// Initialize API service
  /// Must be called before using any API clients
  void initialize() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: ApiConfig.timeout,
        receiveTimeout: ApiConfig.timeout,
      ),
    );

    // Add logging interceptor in debug mode
    if (ApiConfig.enableLogging) {
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        error: true,
      ));
    }

    _api = BusKioskApi(dio: dio, basePathOverride: ApiConfig.baseUrl);
  }

  /// Get Routes API client
  RouteApi get routes => _api.getRouteApi();

  /// Get Buses API client
  BusApi get buses => _api.getBusApi();

  /// Get Bus Stops API client (when added to backend)
  // BusStopApi get busStops => _api.getBusStopApi();

  /// Get Students API client
  StudentApi get students => _api.getStudentApi();

  /// Get Kiosk API client
  KioskApi get kiosks => _api.getKioskApi();
}
