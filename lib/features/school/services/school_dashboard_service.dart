import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/features/school/models/bus_fleet_status.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';
import 'package:frontend_easy/features/school/models/student_movement_row.dart';

/// School Dashboard Service
/// Handles all API calls for school dashboard
/// NOTE: PII decryption is handled by the backend - frontend receives decrypted data
///
/// TODO: Implement full integration with backend APIs
/// Current status: Stub implementation returning empty data
class SchoolDashboardService {
  final ApiApi _apiClient;

  /// Constructor
  SchoolDashboardService({
    required ApiApi apiClient,
  }) : _apiClient = apiClient;

  /// Fetch dashboard summary with real-time statistics
  /// TODO: Implement backend integration
  Future<SchoolDashboardSummary?> getDashboardSummary({
    required String schoolId,
  }) async {
    // Stub implementation - returns null until backend integration is complete
    // Backend endpoints needed:
    // - GET /api/v1/buses/ (with school filter)
    // - GET /api/v1/students/ (with school filter)
    // - GET /api/v1/boarding-events/recent (dashboard endpoint)
    return null;
  }

  /// Fetch bus fleet status with real-time location
  /// TODO: Implement backend integration
  Future<List<BusFleetStatus>> getBusFleetStatus({
    required String schoolId,
  }) async {
    // Stub implementation - returns empty list until backend integration is complete
    // Backend endpoints needed:
    // - GET /api/v1/buses/ (with school/route filters)
    // - GET /api/v1/bus-locations/ (for real-time GPS)
    return [];
  }

  /// Fetch student movement data with decrypted PII
  /// Backend handles PII decryption - frontend receives `decryptedName` field
  /// TODO: Implement backend integration
  Future<List<StudentMovementRow>> getStudentMovement({
    required String schoolId,
    int? limit,
  }) async {
    // Stub implementation - returns empty list until backend integration is complete
    // Backend endpoints needed:
    // - GET /api/v1/students/ (with school filter)
    // - GET /api/v1/boarding-events/ (to track pickup/dropoff)
    //
    // Student model includes:
    // - `name`: encrypted PII (not displayed)
    // - `decryptedName`: decrypted by backend for display
    return [];
  }

  /// Fetch students requiring attention
  /// TODO: Implement backend integration
  Future<List<StudentMovementRow>> getStudentsRequiringAttention({
    required String schoolId,
  }) async {
    final allStudents = await getStudentMovement(schoolId: schoolId);
    return allStudents.where((s) => s.requiresAttention).toList();
  }
}
