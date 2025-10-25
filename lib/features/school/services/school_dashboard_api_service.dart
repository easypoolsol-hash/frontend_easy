/// School Dashboard API Service - Optimized for 4000+ students
/// Uses dedicated dashboard APIs (no redundant calls)
/// PII decryption handled by backend
library;

import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/features/school/models/bus_fleet_status.dart';
import 'package:frontend_easy/features/school/models/movement_event_status.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';
import 'package:frontend_easy/features/school/models/student_movement_row.dart';

/// School Dashboard API Service
/// OPTIMIZED: Uses dedicated dashboard endpoints
/// - ✅ /api/v1/dashboard/stats/ (cached, fast)
/// - ✅ /api/v1/dashboard/students/ (efficient JOIN query)
/// - ❌ No longer fetches ALL students/buses (was 4000+ records!)
class SchoolDashboardApiService {
  final ApiApi _apiClient;

  /// Constructor
  SchoolDashboardApiService(this._apiClient);

  /// Fetch dashboard summary statistics
  /// Uses: apiV1DashboardStatsRetrieve (NEW optimized endpoint)
  Future<SchoolDashboardSummary> getDashboardSummary({
    DateTime? date,
  }) async {
    // Use new dedicated dashboard stats API
    final response = await _apiClient.apiV1DashboardStatsRetrieve(
      date: date != null ? Date(date.year, date.month, date.day) : null,
    );

    final stats = response.data;
    if (stats == null) {
      throw Exception('Failed to load dashboard stats');
    }

    return SchoolDashboardSummary(
      alertCount: 0,
      alerts: const AlertBreakdown(high: 0, medium: 0),
      buses: BusStats(
        total: stats.totalBuses,
        arrived: 0,
        enRoute: stats.activeBuses,
        delayed: 0,
        inactive: stats.totalBuses - stats.activeBuses,
      ),
      students: StudentStats(
        total: 0, // Not available in stats endpoint
        departed: 0,
        onCampus: stats.studentsBoardedToday,
        attention: 0,
        absent: 0,
        inTransit: 0,
      ),
      gradeStats: {},
      lastUpdated: stats.lastUpdated,
    );
  }

  /// Fetch bus fleet status - Operation ID: apiV1BusesList
  Future<List<BusFleetStatus>> getBusFleetStatus() async {
    final response = await _apiClient.apiV1BusesList();
    final buses = response.data?.results ?? [];

    return buses.map((bus) => BusFleetStatus(
      busId: bus.busId,
      busNumber: bus.licensePlate,
      routeName: bus.routeName,
      status: bus.isAvailable ? BusOperationalStatus.active : BusOperationalStatus.inactive,
      studentsBoarded: bus.assignedStudentsCount,
      studentsExpected: bus.capacity,
      lastLocationUpdate: bus.updatedAt,
      currentLocation: 'En Route',
      driverName: 'Driver',
    )).toList();
  }

  /// Fetch student movement - Uses NEW optimized endpoint
  /// Uses: apiV1DashboardStudentsRetrieve
  Future<List<StudentMovementRow>> getStudentMovement({
    DateTime? date,
    int? limit,
    int? offset,
  }) async {
    // Use new dedicated dashboard students API
    final response = await _apiClient.apiV1DashboardStudentsRetrieve(
      date: date != null ? Date(date.year, date.month, date.day) : null,
      limit: limit,
      offset: offset,
    );

    final data = response.data;
    if (data == null) {
      return [];
    }

    return (data.results ?? []).map((studentActivity) {
      // Determine pickup/dropoff status from events
      final hasPickup = studentActivity.events?.any(
            (e) => e.eventType == 'pickup' || e.eventType == 'boarding',
          ) ??
          false;
      final hasDropoff = studentActivity.events?.any(
            (e) => e.eventType == 'dropoff',
          ) ??
          false;

      final pickupEvent = hasPickup
          ? studentActivity.events?.firstWhere(
              (e) => e.eventType == 'pickup' || e.eventType == 'boarding',
              orElse: () => studentActivity.events!.first,
            )
          : null;

      final dropoffEvent = hasDropoff
          ? studentActivity.events?.firstWhere(
              (e) => e.eventType == 'dropoff',
            )
          : null;

      final pickupStatus = pickupEvent != null
          ? MovementEventStatus.completed(
              timestamp: pickupEvent.timestamp,
              location: studentActivity.routeName ?? 'Unknown',
            )
          : MovementEventStatus.pending();

      final dropoffStatus = dropoffEvent != null
          ? MovementEventStatus.completed(
              timestamp: dropoffEvent.timestamp,
              location: studentActivity.routeName ?? 'Unknown',
            )
          : MovementEventStatus.pending();

      return StudentMovementRow(
        uuid: studentActivity.studentId.toString(),
        schoolStudentId: studentActivity.studentId.toString(),
        studentName: studentActivity.studentName,
        grade: studentActivity.grade,
        busNumber: studentActivity.busNumber,
        routeName: studentActivity.routeName,
        pickupStatus: pickupStatus,
        dropoffStatus: dropoffStatus,
        photoUrl: null,
        requiresAttention: false,
      );
    }).toList();
  }

  /// Fetch students requiring attention
  Future<List<StudentMovementRow>> getStudentsRequiringAttention() async {
    final allStudents = await getStudentMovement();
    return allStudents.where((s) => s.requiresAttention).toList();
  }
}
