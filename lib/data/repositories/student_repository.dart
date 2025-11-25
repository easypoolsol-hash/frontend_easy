/// Student Repository - Google-style data layer with caching
///
/// Follows the same pattern as route_repository:
/// - Single source of truth for student data
/// - In-memory caching with TTL
/// - Pagination support
/// - Search functionality
/// - Separation of API and UI concerns

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

/// Student Repository - manages student data with caching
class StudentRepository {
  final ApiService _apiService;

  /// Cache for paginated results (page number -> data)
  final Map<int, PaginatedStudentList> _cache = {};

  /// Cache for search results (search query -> data)
  final Map<String, Map<int, PaginatedStudentList>> _searchCache = {};

  /// Cache timestamp for invalidation (5 minutes TTL)
  DateTime? _lastFetch;
  static const _cacheDuration = Duration(minutes: 5);

  StudentRepository(this._apiService);

  /// Check if cache is valid
  bool get _isCacheValid {
    if (_lastFetch == null) return false;
    return DateTime.now().difference(_lastFetch!) < _cacheDuration;
  }

  /// Fetch ALL registered students with pagination and caching
  ///
  /// Uses the students list API which returns ALL registered students:
  /// - school_student_id, name, grade, assigned_bus, status
  /// - NOT limited to students who boarded today
  ///
  /// Parameters:
  /// - [page]: Page number (1-indexed, directly passed to API)
  /// - [search]: Optional search query (searches name, ID, grade)
  /// - [forceRefresh]: Force refresh from API (bypasses cache)
  Future<PaginatedStudentList> getStudents({
    int page = 1,
    String? search,
    bool forceRefresh = false,
  }) async {
    // Build cache key based on page and search
    final cacheKey = search != null ? 'search_${search}_$page' : 'page_$page';

    // Check cache first (if not force refresh)
    if (!forceRefresh) {
      if (search != null) {
        final searchCache = _searchCache[search];
        if (searchCache != null && searchCache.containsKey(page) && _isCacheValid) {
          return searchCache[page]!;
        }
      } else if (_cache.containsKey(page) && _isCacheValid) {
        return _cache[page]!;
      }
    }

    // Fetch from API - using ALL students endpoint
    try {
      final response = await _apiService.api.apiV1StudentsList(
        page: page,
        search: search,
      );

      if (response.data == null) {
        throw Exception('API returned null data for students list');
      }

      final data = response.data!;

      // Update cache
      _lastFetch = DateTime.now();
      if (search != null) {
        _searchCache.putIfAbsent(search, () => {})[page] = data;
      } else {
        _cache[page] = data;
      }

      return data;
    } catch (e, stackTrace) {
      // Log detailed error for debugging (dev mode only)
      assert(() {
        // ignore: avoid_print
        print('StudentRepository Error fetching students:');
        // ignore: avoid_print
        print('Error: $e');
        // ignore: avoid_print
        print('Stack trace: $stackTrace');
        // ignore: avoid_print
        print('Page: $page, Search: $search');
        return true;
      }());
      rethrow;
    }
  }

  /// Clear all caches
  void clearCache() {
    _cache.clear();
    _searchCache.clear();
    _lastFetch = null;
  }

  /// Clear search cache only
  void clearSearchCache() {
    _searchCache.clear();
  }
}

/// Provider for Student Repository
final studentRepositoryProvider = Provider<StudentRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return StudentRepository(apiService);
});
