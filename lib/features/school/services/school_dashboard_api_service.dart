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


  /// Fetch dashboard summary statistics (today only)
  /// Returns: DashboardStats (API model)
  /// Backend always returns today's stats (no date parameter)
  Future<DashboardStats> getDashboardStats() async {
    final response = await _apiClient.apiV1DashboardStatsRetrieve();

    if (response.data == null) {
      throw Exception('Failed to load dashboard stats');
    }

    return response.data!;
  }

  /// Fetch student boarding activity (today only)
  /// Returns: DashboardStudentsResponse (API model with pagination)
  /// Backend always returns today's students (no date parameter)
  /// Params:
  ///   - limit: Number of students per page (default=50)
  ///   - offset: Pagination offset (default=0)
  Future<DashboardStudentsResponse> getStudentActivity({
    int? limit,
    int? offset,
  }) async {
    final response = await _apiClient.apiV1DashboardStudentsRetrieve(
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
