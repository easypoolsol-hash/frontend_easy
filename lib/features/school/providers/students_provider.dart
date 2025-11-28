import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/data/repositories/student_repository.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

/// Parameters for student list fetching
class StudentListParams {
  final int page;
  final String? search;
  final bool forceRefresh;

  const StudentListParams({
    this.page = 1,
    this.search,
    this.forceRefresh = false,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentListParams &&
          page == other.page &&
          search == other.search &&
          forceRefresh == other.forceRefresh;

  @override
  int get hashCode => Object.hash(page, search, forceRefresh);
}

/// Provider for fetching paginated students list with caching
/// Uses the ALL students API endpoint (not just today's boarders)
final studentsListProvider =
    FutureProvider.family<PaginatedStudentListList, StudentListParams>(
  (ref, params) async {
    final repository = ref.watch(studentRepositoryProvider);

    return await repository.getStudents(
      page: params.page,
      search: params.search,
      forceRefresh: params.forceRefresh,
    );
  },
);
