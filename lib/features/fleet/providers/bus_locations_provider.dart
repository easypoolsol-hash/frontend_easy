import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/core/config/api_config.dart';
import 'package:frontend_easy/core/services/token_manager.dart';
import 'package:frontend_easy/features/fleet/services/bus_tracking_websocket_service.dart';
import 'package:frontend_easy/shared/services/api_service.dart';

/// WebSocket service provider (singleton)
/// Uses centralized TokenManager for authentication (Google standard)
final busTrackingWebSocketServiceProvider = Provider<BusTrackingWebSocketService>((ref) {
  // Get TokenManager (same one used by HTTP APIs)
  final tokenManager = ref.watch(tokenManagerProvider);

  final service = BusTrackingWebSocketService(
    baseUrl: ApiConfig.baseUrl,
    tokenManager: tokenManager,
  );

  // DON'T auto-connect here - let the StreamProvider handle connection
  // This prevents race condition with auth initialization

  // Cleanup on dispose
  ref.onDispose(() {
    service.dispose();
  });

  return service;
});

/// Real-time bus locations stream provider
/// Uses WebSocket for live updates with fallback to REST API
/// Connects WebSocket AFTER auth is ready (prevents race condition)
final busLocationsProvider = StreamProvider<List<Map<String, dynamic>>>((ref) async* {
  final wsService = ref.watch(busTrackingWebSocketServiceProvider);

  // Connect WebSocket now (after provider is accessed, auth should be ready)
  // This is lazy connection - happens only when map screen is displayed
  await wsService.connect();

  // First, try to load initial data from REST API as fallback
  try {
    final restData = await ref.read(busLocationsRestProvider.future);
    if (restData.isNotEmpty) {
      yield restData;
    }
  } catch (_) {
    // REST API failed, continue with WebSocket
  }

  // Then stream WebSocket updates
  await for (final locations in wsService.locationsStream) {
    yield locations;
  }
});

/// REST API fallback for initial data load
/// Uses the properly typed BusesApi.busLocationsApi() endpoint
final busLocationsRestProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  try {
    final apiService = ref.watch(apiServiceProvider);
    final response = await apiService.buses.busLocationsApi();

    // Convert GeoJSON FeatureCollection to list of features
    if (response.data != null) {
      final geoJson = response.data!;
      // Convert BuiltList<BuiltMap> to List<Map<String, dynamic>>
      // GeoJSON format: { "type": "FeatureCollection", "features": [...] }
      return geoJson.features.map((builtMap) {
        // Convert BuiltMap<String, JsonObject?> to Map<String, dynamic>
        final map = <String, dynamic>{};
        builtMap.forEach((key, value) {
          map[key] = value?.value;
        });
        return map;
      }).toList();
    }
    return [];
  } catch (e) {
    // Silently fail - user not authenticated yet or API error
    return [];
  }
});
