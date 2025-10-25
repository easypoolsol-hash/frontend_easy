import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/features/school/providers/dashboard_stats_provider.dart';

/// Provider for student activity (boarding events) - manual refresh only
/// Uses the optimized /api/v1/dashboard/students/ endpoint (paginated)
///
/// CACHING: Keeps data alive for navigation, refresh manually via refresh button
final studentActivityProvider =
    FutureProvider<DashboardStudentsResponse>((ref) async {
  // No auto-refresh - manual only (avoid wasteful polling for 4000 students)
  // Use refresh button for updates

  // Keep alive so data persists during navigation
  ref.keepAlive();

  final service = ref.watch(dashboardApiServiceProvider);
  return service.getStudentActivity(limit: 50);
});

/// Provider for student activity with filters - real-time via WebSocket
final studentActivityFilteredProvider = FutureProvider.family<
    DashboardStudentsResponse,
    StudentActivityParams>((ref, params) async {
  // No auto-refresh - WebSocket provides real-time updates
  // Manual refresh button also available

  // Keep alive for navigation
  ref.keepAlive();

  final service = ref.watch(dashboardApiServiceProvider);
  return service.getStudentActivity(
    limit: params.limit,
    offset: params.offset,
  );
});

/// Parameters for filtering student activity (pagination + search)
class StudentActivityParams {

  /// Number of students per page (default: 50)
  final int? limit;

  /// Pagination offset (default: 0)
  final int? offset;

  /// Search query for name or student ID (client-side filter)
  final String? searchQuery;

  /// Creates student activity filter parameters
  const StudentActivityParams({
    this.limit,
    this.offset,
    this.searchQuery,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentActivityParams &&
          runtimeType == other.runtimeType &&
          limit == other.limit &&
          offset == other.offset &&
          searchQuery == other.searchQuery;

  @override
  int get hashCode =>
      limit.hashCode ^
      offset.hashCode ^
      searchQuery.hashCode;
}
