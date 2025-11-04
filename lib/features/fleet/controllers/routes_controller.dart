/// Routes Controller - Google's Official Flutter Architecture
///
/// AsyncNotifier for managing route state.
/// Provides loading/error/data states automatically.
///
/// Reference: https://docs.flutter.dev/data-and-backend/state-mgmt/options#asyncnotifier

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:frontend_easy/data/repositories/route_repository.dart';

/// Controller for routes list
/// Uses AsyncNotifier for automatic state management
class RoutesController extends AsyncNotifier<List<api.Route>> {
  @override
  Future<List<api.Route>> build() async {
    debugPrint('[RoutesController] Building - fetching routes...');

    // Get repository from provider
    try {
      debugPrint('[RoutesController] Accessing routeRepositoryProvider...');
      final repository = ref.read(routeRepositoryProvider);
      debugPrint('[RoutesController] Repository obtained successfully');

      // Fetch routes (uses cache-then-network pattern)
      final routes = await repository.getRoutes();
      debugPrint('[RoutesController] Successfully fetched ${routes.length} routes');
      return routes;
    } catch (e, stackTrace) {
      debugPrint('[RoutesController] Error fetching routes: $e');
      debugPrint('[RoutesController] Stack trace: $stackTrace');
      rethrow;
    }
  }

  /// Refresh routes from network
  /// Updates state automatically
  Future<void> refresh() async {
    // Set to loading state
    state = const AsyncValue.loading();

    // Fetch fresh data
    state = await AsyncValue.guard(() async {
      final repository = ref.read(routeRepositoryProvider);
      return await repository.refreshRoutes();
    });
  }

  /// Clear cache and reload
  Future<void> clearCacheAndReload() async {
    final repository = ref.read(routeRepositoryProvider);
    await repository.clearCache();
    await refresh();
  }
}

/// Provider for RoutesController
/// Use this in widgets to access routes
final routesControllerProvider =
    AsyncNotifierProvider<RoutesController, List<api.Route>>(() {
  return RoutesController();
});

/// Provider for single route by ID
/// Family provider for route-specific data
final routeByIdProvider =
    FutureProvider.family<api.Route?, String>((ref, routeId) async {
  final repository = ref.read(routeRepositoryProvider);
  return await repository.getRoute(routeId);
});
