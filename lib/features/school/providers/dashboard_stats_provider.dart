import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy/features/school/services/school_dashboard_api_service.dart';

/// Provider for dashboard stats API service
final dashboardApiServiceProvider = Provider<SchoolDashboardApiService>((ref) {
  final apiClient = ApiService().api;
  return SchoolDashboardApiService(apiClient);
});

/// Provider for dashboard statistics
/// Auto-caches and refreshes on demand
/// Uses the optimized /api/v1/dashboard/stats/ endpoint (cached 10s on backend)
final dashboardStatsProvider = FutureProvider<DashboardStats>((ref) async {
  final service = ref.watch(dashboardApiServiceProvider);
  return service.getDashboardStats();
});

/// Provider for dashboard stats with specific date
final dashboardStatsByDateProvider =
    FutureProvider.family<DashboardStats, DateTime?>((ref, date) async {
  final service = ref.watch(dashboardApiServiceProvider);
  return service.getDashboardStats(date: date);
});
