import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/features/school/models/bus_fleet_status.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';
import 'package:frontend_easy/features/school/models/student_movement_row.dart';
import 'package:frontend_easy/features/school/services/school_dashboard_api_service.dart';
import 'package:frontend_easy/shared/services/api_service.dart';

/// API Client Provider (OpenAPI Generated)
/// Uses ApiService singleton to ensure AuthInterceptor is attached
final apiClientProvider = Provider<ApiApi>((ref) {
  return ApiService().api;
});

/// API Service Provider
final dashboardApiServiceProvider = Provider<SchoolDashboardApiService>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return SchoolDashboardApiService(apiClient);
});

/// Dashboard Summary Provider (AsyncValue - 2025 Best Practice)
final schoolDashboardProvider = FutureProvider<SchoolDashboardSummary>((ref) async {
  final service = ref.watch(dashboardApiServiceProvider);
  return service.getDashboardSummary();
});

/// Bus Fleet Provider (AsyncValue)
final busFleetProvider = FutureProvider<List<BusFleetStatus>>((ref) async {
  final service = ref.watch(dashboardApiServiceProvider);
  return service.getBusFleetStatus();
});

/// Student Movement Provider (AsyncValue)
final studentMovementProvider = FutureProvider<List<StudentMovementRow>>((ref) async {
  final service = ref.watch(dashboardApiServiceProvider);
  return service.getStudentMovement();
});

/// Students Requiring Attention Provider
final studentsRequiringAttentionProvider = FutureProvider<List<StudentMovementRow>>((ref) async {
  final service = ref.watch(dashboardApiServiceProvider);
  return service.getStudentsRequiringAttention();
});

/// Auto-refresh timer provider
final autoRefreshProvider = StateProvider<DateTime>((ref) {
  return DateTime.now();
});
