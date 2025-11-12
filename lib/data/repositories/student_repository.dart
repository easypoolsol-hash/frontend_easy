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
  final Map<int, DashboardStudentsResponse> _cache = {};

  /// Cache for search results (search query -> data)
  final Map<String, Map<int, DashboardStudentsResponse>> _searchCache = {};

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
  /// Uses the dashboard students API which returns simple, clean data:
  /// - school_student_id, student_name, grade, bus_number
  ///
  /// Parameters:
  /// - [page]: Page number (1-indexed, but API uses offset/limit)
  /// - [search]: Optional search query (not supported by dashboard API)
  /// - [forceRefresh]: Force refresh from API
  Future<DashboardStudentsResponse> getStudents({
    int page = 1,
    String? search,
    bool forceRefresh = false,
  }) async {
    // Calculate offset from page number (50 items per page)
    const limit = 50;
    final offset = (page - 1) * limit;

    // Fetch from API - using dashboard students endpoint
    try {
      final response = await _apiService.api.apiV1DashboardStudentsRetrieve(
        limit: limit,
        offset: offset,
      );

      if (response.data == null) {
        throw Exception('API returned null data for students list');
      }

      return response.data!;
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
