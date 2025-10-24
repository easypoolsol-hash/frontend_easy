import 'dart:convert';

import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:frontend_easy/shared/services/api_service.dart';

/// Provider for fetching routes from API
/// Auto-caches and updates on refresh
final routesProvider = FutureProvider<List<api.Route>>((ref) async {
  try {
    print('🚌 [Routes] Fetching from API...');
    final apiService = ApiService().api;
    final response = await apiService.apiV1RoutesList(isActive: true);
    final routes = response?.data?.results ?? [];
    print('🚌 [Routes] Received ${routes.length} routes');
    if (routes.isNotEmpty) {
      final first = routes.first;
      print('🚌 [Routes] First: ${first.name}, stops: ${first.routeStops?.length}');
    }
    return routes;
  } catch (e, stack) {
    print('❌ [Routes] Error: $e');
    print('❌ [Routes] Stack: $stack');
    return [];
  }
});

/// Provider for a single route by ID
final routeProvider = FutureProvider.family<api.Route?, String>((
  ref,
  routeId,
) async {
  final apiService = ApiService().api;
  final response = await apiService.apiV1RoutesRetrieve(routeId: routeId);
  return response.data;
});

/// Provider for route stops (from route's route_stops field)
final routeStopsProvider = Provider.family<List<dynamic>, api.Route>((
  ref,
  route,
) {
  // Try dynamic access to routeStops, fall back to generated `stops` field.
  dynamic raw;
  try {
    raw = (route as dynamic).routeStops;
  } catch (_) {
    raw = null;
  }
  raw ??= route.routeStops;

  if (raw == null) return <dynamic>[];
  if (raw is List && raw.isEmpty) return <dynamic>[];

  final result = <dynamic>[];
  if (raw is String) {
    try {
      final decoded = List.from(jsonDecode(raw));
      raw = decoded;
    } catch (_) {
      return result;
    }
  }

  if (raw is List) {
    for (final item in raw) {
      // Keep the raw item (Map or typed) so callers can handle it.
      result.add(item);
    }
  }

  return result;
});
