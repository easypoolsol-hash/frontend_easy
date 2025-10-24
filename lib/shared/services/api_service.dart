import 'package:frontend_easy_api/frontend_easy_api.dart';

class ApiService {
  ApiService._();
  static final ApiService _instance = ApiService._();
  factory ApiService() => _instance;

  late final FrontendEasyApi _api;

  void initialize() {
    _api = FrontendEasyApi(basePathOverride: 'http://localhost:8000');
  }

  ApiApi get api => _api.getApiApi();
  KioskActivationApi get kioskApi => _api.getKioskActivationApi();
  FrontendEasyApi get client => _api;
}
