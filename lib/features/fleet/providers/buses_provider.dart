import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:frontend_easy/shared/services/api_service.dart';

/// Provider for fetching buses from API
/// Can filter by route, status, etc.
final busesProvider = FutureProvider<List<api.Bus>>((ref) async {
  try {
    final apiService = ApiService().api;
    final response = await apiService.apiV1BusesList();
    return response?.data?.results ?? [];
  } catch (e) {
    // Return empty list on error to keep app functional
    return [];
  }
});

/// Provider for buses filtered by route
final busesByRouteProvider = FutureProvider.family<List<api.Bus>, String>((ref, routeId) async {
  final apiService = ApiService().api;
  final response = await apiService.apiV1BusesList(route: routeId);
  return response?.data?.results ?? [];
});

/// Provider for a single bus by ID
final busProvider = FutureProvider.family<api.Bus?, String>((ref, busId) async {
  final apiService = ApiService().api;
  final response = await apiService.api.apiV1BusesRetrieve(busId: busId);
  return response;
});
