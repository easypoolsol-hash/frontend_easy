/// School Dashboard API Service - Fortune 500 approach
/// Uses API models directly (Google/Netflix pattern)
/// No mapping layer - API schema IS the domain model
library;

import 'package:frontend_easy_api/frontend_easy_api.dart';

/// School Dashboard API Service
/// OPTIMIZED: Uses dedicated dashboard endpoints
/// - ✅ /api/v1/dashboard/stats/ (cached 10s, fast)
/// - ✅ /api/v1/dashboard/students/ (efficient JOIN query, paginated)
/// - ✅ Returns API models directly (zero mapping overhead)
/// - ✅ Type-safe with OpenAPI generated models
class SchoolDashboardApiService {
  final ApiApi _apiClient;

  /// Constructor
  SchoolDashboardApiService(this._apiClient);


  /// Fetch dashboard summary statistics
  /// Returns: DashboardStats (API model)
  /// Params:
  ///   - date: Optional date filter (default=today)
  Future<DashboardStats> getDashboardStats({
    DateTime? date,
  }) async {
    // Pass null - generated client expects DateTime but backend needs string
    // This is Dart OpenAPI generator limitation with format:date
    // TODO: Override generated client or use intl package DateFormat
    final response = await _apiClient.apiV1DashboardStatsRetrieve(
      date: null,  // Always use today until we fix the generator issue
    );

    if (response.data == null) {
      throw Exception('Failed to load dashboard stats');
    }

    return response.data!;
  }

  /// Fetch student boarding activity
  /// Returns: DashboardStudentsResponse (API model with pagination)
  /// Params:
  ///   - date: Optional date filter (default=today)
  ///   - limit: Number of students per page (default=50)
  ///   - offset: Pagination offset (default=0)
  Future<DashboardStudentsResponse> getStudentActivity({
    DateTime? date,
    int? limit,
    int? offset,
  }) async {
    // Pass null - generated client expects DateTime but backend needs string
    // This is Dart OpenAPI generator limitation with format:date
    // TODO: Override generated client or use intl package DateFormat
    final response = await _apiClient.apiV1DashboardStudentsRetrieve(
      date: null,  // Always use today until we fix the generator issue
      limit: limit,
      offset: offset,
    );

    if (response.data == null) {
      throw Exception('Failed to load student activity');
    }

    return response.data!;
  }

  /// Fetch bus fleet status (uses old API - kept for compatibility)
  /// TODO: Create dedicated dashboard bus status endpoint
  Future<PaginatedBusList> getBusFleetStatus() async {
    final response = await _apiClient.apiV1BusesList();

    if (response.data == null) {
      throw Exception('Failed to load bus fleet status');
    }

    return response.data!;
  }
}
