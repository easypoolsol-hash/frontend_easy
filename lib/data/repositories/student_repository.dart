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

  /// Fetch students with pagination and caching
  ///
  /// Parameters:
  /// - [page]: Page number (1-indexed)
  /// - [search]: Optional search query
  /// - [forceRefresh]: Force refresh from API
  Future<PaginatedStudentList> getStudents({
    int page = 1,
    String? search,
    bool forceRefresh = false,
  }) async {
    // Check cache first (unless force refresh)
    if (!forceRefresh && _isCacheValid) {
      if (search != null && search.isNotEmpty) {
        // Check search cache
        final searchResults = _searchCache[search];
        if (searchResults != null && searchResults.containsKey(page)) {
          return searchResults[page]!;
        }
      } else {
        // Check regular cache
        if (_cache.containsKey(page)) {
          return _cache[page]!;
        }
      }
    }

    // Fetch from API
    try {
      final response = await _apiService.api.apiV1StudentsList(
        page: page,
        search: search?.isNotEmpty == true ? search : null,
      );

      if (response.data == null) {
        throw Exception('API returned null data for students list');
      }

      final data = response.data!;

      // Update cache
      _lastFetch = DateTime.now();
      if (search != null && search.isNotEmpty) {
        _searchCache.putIfAbsent(search, () => {})[page] = data;
      } else {
        _cache[page] = data;
      }

      return data;
    } catch (e) {
      // Log detailed error for debugging
      print('StudentRepository Error: $e');
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
