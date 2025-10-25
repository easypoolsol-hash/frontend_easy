import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy/features/school/services/school_dashboard_api_service.dart';
import 'package:frontend_easy/features/school/providers/auto_refresh_provider.dart';

/// Provider for dashboard stats API service
final dashboardApiServiceProvider = Provider<SchoolDashboardApiService>((ref) {
  final apiClient = ApiService().api;
  return SchoolDashboardApiService(apiClient);
});

/// Provider for dashboard statistics
/// Auto-caches and refreshes on demand
/// Uses the optimized /api/v1/dashboard/stats/ endpoint (cached 10s on backend)
///
/// CACHING: Keeps data alive for navigation, invalidates every 30s via autoRefresh
final dashboardStatsProvider = FutureProvider<DashboardStats>((ref) async {
  // Auto-refresh every 30 seconds
  ref.watch(autoRefreshProvider);

  // Keep alive so data persists during navigation
  ref.keepAlive();

  final service = ref.watch(dashboardApiServiceProvider);
  return service.getDashboardStats();
});

/// Provider for dashboard stats with specific date
///
/// NOTE: Date filtering disabled due to Dart OpenAPI generator limitation
/// Always shows today's data. See school_dashboard_api_service.dart for details.
final dashboardStatsByDateProvider =
    FutureProvider.family<DashboardStats, DateTime?>((ref, date) async {
  // Auto-refresh every 30 seconds
  ref.watch(autoRefreshProvider);

  // Keep alive for navigation
  ref.keepAlive();

  final service = ref.watch(dashboardApiServiceProvider);
  return service.getDashboardStats(date: date);  // Ignored - always uses today
});
