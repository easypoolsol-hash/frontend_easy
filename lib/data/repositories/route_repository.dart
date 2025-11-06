/// Route Repository - Google's Official Flutter Architecture
///
/// Single source of truth for route data.
/// Implements cache-then-network pattern for optimal UX.
///
/// Reference: https://docs.flutter.dev/data-and-backend/state-mgmt/options#repository-pattern

import 'dart:convert';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:shared_preferences/shared_preferences.dart';

/// Repository interface for route data
/// Abstract class allows for easy testing and mocking
abstract class RouteRepository {
  /// Get all active routes
  /// Returns cached data immediately, refreshes in background
  Future<List<api.Route>> getRoutes();

  /// Get single route by ID
  Future<api.Route?> getRoute(String routeId);

  /// Force refresh from network (bypasses cache)
  Future<List<api.Route>> refreshRoutes();

  /// Clear all cached route data
  Future<void> clearCache();
}

/// Implementation of RouteRepository
/// Uses SharedPreferences for persistence (survives app restarts)
class RouteRepositoryImpl implements RouteRepository {
  final api.ApiApi _apiClient;
  final SharedPreferences _prefs;

  // Cache configuration
  static const _cacheKey = 'routes_cache';
  static const _cacheTimestampKey = 'routes_cache_timestamp';
  static const _cacheDuration = Duration(hours: 24); // Routes rarely change

  RouteRepositoryImpl({
    required api.ApiApi apiClient,
    required SharedPreferences prefs,
  })  : _apiClient = apiClient,
        _prefs = prefs;

  @override
  Future<List<api.Route>> getRoutes() async {
    // 1. Try to return cached data immediately
    final cached = await _getCachedRoutes();

    if (cached != null && !_isCacheStale()) {
      // Return cached data, refresh in background
      _refreshInBackground();
      return cached;
    }

    // 2. Cache is stale or empty, fetch from network
    return await refreshRoutes();
  }

  @override
  Future<api.Route?> getRoute(String routeId) async {
    // Check cache first
    final routes = await _getCachedRoutes();
    if (routes != null) {
      try {
        return routes.firstWhere((r) => r.routeId == routeId);
      } catch (_) {
        // Not found in cache, fetch from API
      }
    }

    // Fetch from API
    try {
      final response = await _apiClient.apiV1RoutesRetrieve(routeId: routeId);
      return response.data;
    } catch (e, stackTrace) {
      await FirebaseCrashlytics.instance.recordError(
        e,
        stackTrace,
        reason: 'Error fetching route $routeId',
        fatal: false,
      );
      return null;
    }
  }

  @override
  Future<List<api.Route>> refreshRoutes() async {
    try {
      final response = await _apiClient.apiV1RoutesList(isActive: true);
      final routes = response.data?.results.toList() ?? [];

      // Cache the fresh data
      await _cacheRoutes(routes);

      return routes;
    } catch (e, stackTrace) {
      await FirebaseCrashlytics.instance.recordError(
        e,
        stackTrace,
        reason: 'Error refreshing routes from API',
        fatal: false,
      );

      // Return cached data as fallback
      final cached = await _getCachedRoutes();
      return cached ?? [];
    }
  }

  @override
  Future<void> clearCache() async {
    await _prefs.remove(_cacheKey);
    await _prefs.remove(_cacheTimestampKey);
  }

  // Private helper methods

  Future<List<api.Route>?> _getCachedRoutes() async {
    final cachedJson = _prefs.getString(_cacheKey);
    if (cachedJson == null) return null;

    try {
      final List<dynamic> jsonList = jsonDecode(cachedJson);
      return jsonList
          .map((json) => api.standardSerializers.deserializeWith(
                api.Route.serializer,
                json,
              ))
          .whereType<api.Route>()
          .toList();
    } catch (e, stackTrace) {
      await FirebaseCrashlytics.instance.recordError(
        e,
        stackTrace,
        reason: 'Error decoding cached routes',
        fatal: false,
      );
      return null;
    }
  }

  Future<void> _cacheRoutes(List<api.Route> routes) async {
    try {
      final jsonList = routes
          .map((route) => api.standardSerializers.serializeWith(
                api.Route.serializer,
                route,
              ))
          .toList();
      await _prefs.setString(_cacheKey, jsonEncode(jsonList));
      await _prefs.setInt(
        _cacheTimestampKey,
        DateTime.now().millisecondsSinceEpoch,
      );
    } catch (e, stackTrace) {
      await FirebaseCrashlytics.instance.recordError(
        e,
        stackTrace,
        reason: 'Error caching routes to SharedPreferences',
        fatal: false,
      );
    }
  }

  bool _isCacheStale() {
    final timestamp = _prefs.getInt(_cacheTimestampKey);
    if (timestamp == null) return true;

    final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    final age = DateTime.now().difference(cacheTime);

    return age > _cacheDuration;
  }

  void _refreshInBackground() {
    // Fire and forget - don't await
    // Updates cache silently without blocking UI
    Future.microtask(() async {
      try {
        await refreshRoutes();
      } catch (e, stackTrace) {
        // Silent failure - cached data already returned
        await FirebaseCrashlytics.instance.recordError(
          e,
          stackTrace,
          reason: 'Background route refresh failed',
          fatal: false,
        );
      }
    });
  }
}

/// Provider for SharedPreferences instance
/// Pre-initialized in main() and overridden with actual instance to prevent race conditions
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError(
    'sharedPreferencesProvider must be overridden in main() with pre-initialized instance',
  );
});

/// Provider for RouteRepository instance
/// Uses pre-initialized SharedPreferences for persistence
final routeRepositoryProvider = Provider<RouteRepository>((ref) {
  final apiClient = ref.watch(apiServiceProvider).api;
  final prefs = ref.watch(sharedPreferencesProvider);

  return RouteRepositoryImpl(
    apiClient: apiClient,
    prefs: prefs,
  );
});
