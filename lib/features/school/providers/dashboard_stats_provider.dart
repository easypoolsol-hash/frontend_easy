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

/// Provider for dashboard statistics (manual refresh only)
/// Uses the optimized /api/v1/dashboard/stats/ endpoint (cached 10s on backend)
///
/// CACHING: Keeps data alive for navigation, refresh manually via refresh button
final dashboardStatsProvider = FutureProvider<DashboardStats>((ref) async {
  // No auto-refresh - manual only (avoid wasteful polling for 4000 students)
  // Use refresh button for updates

  // Keep alive so data persists during navigation
  ref.keepAlive();

  final service = ref.watch(dashboardApiServiceProvider);
  return service.getDashboardStats();
});

