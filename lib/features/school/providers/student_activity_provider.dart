import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';
import 'package:frontend_easy/features/school/providers/dashboard_stats_provider.dart';

/// Provider for student activity (boarding events)
/// Uses the optimized /api/v1/dashboard/students/ endpoint (paginated)
final studentActivityProvider =
    FutureProvider<DashboardStudentsResponse>((ref) async {
  final service = ref.watch(dashboardApiServiceProvider);
  return service.getStudentActivity(limit: 50);
});

/// Provider for student activity with filters
final studentActivityFilteredProvider = FutureProvider.family<
    DashboardStudentsResponse,
    StudentActivityParams>((ref, params) async {
  final service = ref.watch(dashboardApiServiceProvider);
  return service.getStudentActivity(
    date: params.date,
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

  /// Creates student activity filter parameters
  const StudentActivityParams({
    this.date,
    this.limit,
    this.offset,
  });
}
