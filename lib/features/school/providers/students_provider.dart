import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

/// Provider for fetching paginated students list
/// Supports search functionality
final studentsListProvider = FutureProvider.family<PaginatedStudentList, String>(
  (ref, searchQuery) async {
    final apiService = ref.watch(apiServiceProvider);
    final api = apiService.getApi();

    try {
      final result = await api.apiV1StudentsList(
        search: searchQuery.isNotEmpty ? searchQuery : null,
        page: 1,
      );

      if (result == null) {
        throw Exception('Failed to fetch students');
      }

      return result;
    } catch (e) {
      rethrow;
    }
  },
);
