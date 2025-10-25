import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/features/school/providers/auto_refresh_provider.dart';
import 'package:frontend_easy/features/school/providers/dashboard_stats_provider.dart';

/// Provider for student activity (boarding events)
/// Uses the optimized /api/v1/dashboard/students/ endpoint (paginated)
///
/// CACHING: Keeps data alive for navigation, invalidates every 30s via autoRefresh
/// Backend also caches (10s) so double-caching is efficient
final studentActivityProvider =
    FutureProvider<DashboardStudentsResponse>((ref) async {
  // Auto-refresh every 30 seconds
  ref.watch(autoRefreshProvider);

  // Keep alive so data persists during navigation
  ref.keepAlive();

  final service = ref.watch(dashboardApiServiceProvider);
  return service.getStudentActivity(limit: 50);
});

/// Provider for student activity with filters
///
/// NOTE: Date filtering disabled due to Dart OpenAPI generator limitation
/// The generator creates DateTime param but backend expects "YYYY-MM-DD" string
/// Always shows today's data. See school_dashboard_api_service.dart for details.
final studentActivityFilteredProvider = FutureProvider.family<
    DashboardStudentsResponse,
    StudentActivityParams>((ref, params) async {
  // Auto-refresh every 30 seconds
  ref.watch(autoRefreshProvider);

  // Keep alive for navigation
  ref.keepAlive();

  final service = ref.watch(dashboardApiServiceProvider);
  return service.getStudentActivity(
    date: params.date,  // Ignored - always uses today
    limit: params.limit,
    offset: params.offset,
  );
});

/// Parameters for filtering student activity
class StudentActivityParams {
  /// Date filter (default: today)
  final DateTime? date;

  /// Number of students per page (default: 50)
  final int? limit;

  /// Pagination offset (default: 0)
  final int? offset;

  /// Search query for name or student ID (client-side filter)
  final String? searchQuery;

  /// Creates student activity filter parameters
  const StudentActivityParams({
    this.date,
    this.limit,
    this.offset,
    this.searchQuery,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentActivityParams &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          limit == other.limit &&
          offset == other.offset &&
          searchQuery == other.searchQuery;

  @override
  int get hashCode =>
      date.hashCode ^
      limit.hashCode ^
      offset.hashCode ^
      searchQuery.hashCode;
}
