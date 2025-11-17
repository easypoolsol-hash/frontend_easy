import 'package:flutter/foundation.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:frontend_easy/shared/services/api_service.dart';

/// Provider for fetching buses from API
/// Can filter by route, status, etc.
final busesProvider = FutureProvider<List<api.Bus>>((ref) async {
  if (kDebugMode) {
    print('[BusesProvider] Starting to fetch buses...');
  }

  try {
    final apiService = ref.watch(apiServiceProvider).api;
    if (kDebugMode) {
      print('[BusesProvider] API service obtained, calling apiV1BusesList()...');
    }

    final response = await apiService.apiV1BusesList();

    if (kDebugMode) {
      print('[BusesProvider] Response received:');
      print('  - Status code: ${response.statusCode}');
      print('  - Data: ${response.data}');
      print('  - Results count: ${response.data?.results.length ?? 0}');
    }

    final buses = response.data?.results.toList() ?? [];

    if (kDebugMode) {
      print('[BusesProvider] Returning ${buses.length} buses');
      for (var bus in buses) {
        print('  - Bus: ${bus.busNumber} (${bus.busId})');
      }
    }

    return buses;
  } catch (e, stackTrace) {
    if (kDebugMode) {
      print('[BusesProvider] ERROR fetching buses: $e');
      print('[BusesProvider] Stack trace: $stackTrace');
    }
    // Rethrow to let UI handle the error properly
    rethrow;
  }
});

/// Provider for buses filtered by route
final busesByRouteProvider = FutureProvider.family<List<api.Bus>, String>((ref, routeId) async {
  final apiService = ref.watch(apiServiceProvider).api;
  final response = await apiService.apiV1BusesList(route: routeId);
  return response.data?.results.toList() ?? [];
});

/// Provider for a single bus by ID
final busProvider = FutureProvider.family<api.Bus?, String>((ref, busId) async {
  final apiService = ref.watch(apiServiceProvider).api;
  final response = await apiService.apiV1BusesRetrieve(busId: busId);
  return response.data;
});
