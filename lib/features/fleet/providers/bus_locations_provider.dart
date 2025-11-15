import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/core/config/api_config.dart';
import 'package:frontend_easy/core/services/token_manager.dart';
import 'package:frontend_easy/features/fleet/services/bus_tracking_websocket_service.dart';
import 'package:frontend_easy/shared/services/api_service.dart';

// ============================================================================
// DEPRECATED: WebSocket Implementation (Commented Out for Future Use)
// ============================================================================
// WebSocket doesn't work reliably on Cloud Run (serverless) because:
// - Instances shut down when idle, breaking connections
// - No persistent connections in serverless architecture
//
// Using 30-second polling instead (protects database with backend cache)
// WebSocket code preserved below for potential future activation
// ============================================================================

// /// WebSocket service provider (singleton)
// /// Uses centralized TokenManager for authentication (Google standard)
// final busTrackingWebSocketServiceProvider = Provider<BusTrackingWebSocketService>((ref) {
//   // Get TokenManager (same one used by HTTP APIs)
//   final tokenManager = ref.watch(tokenManagerProvider);
//
//   final service = BusTrackingWebSocketService(
//     baseUrl: ApiConfig.baseUrl,
//     tokenManager: tokenManager,
//   );
//
//   // DON'T auto-connect here - let the StreamProvider handle connection
//   // This prevents race condition with auth initialization
//
//   // Cleanup on dispose
//   ref.onDispose(() {
//     service.dispose();
//   });
//
//   return service;
// });

// /// Real-time bus locations stream provider (WEBSOCKET VERSION - DEPRECATED)
// /// Uses WebSocket for live updates with fallback to REST API
// /// Connects WebSocket AFTER auth is ready (prevents race condition)
// final busLocationsProvider = StreamProvider<List<Map<String, dynamic>>>((ref) async* {
//   final wsService = ref.watch(busTrackingWebSocketServiceProvider);
//
//   // Connect WebSocket now (after provider is accessed, auth should be ready)
//   // This is lazy connection - happens only when map screen is displayed
//   await wsService.connect();
//
//   // First, try to load initial data from REST API as fallback
//   try {
//     final restData = await ref.read(busLocationsRestProvider.future);
//     if (restData.isNotEmpty) {
//       yield restData;
//     }
//   } catch (_) {
//     // REST API failed, continue with WebSocket
//   }
//
//   // Then stream WebSocket updates
//   await for (final locations in wsService.locationsStream) {
//     yield locations;
//   }
// });

/// Real-time bus locations provider (POLLING VERSION - ACTIVE)
/// Uses 30-second polling to protect database from overload
/// Backend has 30-second cache, so polling aligns with cache refresh
final busLocationsProvider = StreamProvider.autoDispose<List<Map<String, dynamic>>>((ref) async* {
  // Polling interval: 30 seconds (matches backend cache duration)
  const pollingInterval = Duration(seconds: 30);

  // Create timer for periodic updates
  Timer? pollingTimer;

  // Cleanup timer on dispose
  ref.onDispose(() {
    pollingTimer?.cancel();
  });

  // Initial load
  try {
    final initialData = await ref.read(busLocationsRestProvider.future);
    yield initialData;
  } catch (e) {
    // Initial load failed, yield empty list
    yield [];
  }

  // Set up polling
  await for (final _ in Stream.periodic(pollingInterval)) {
    try {
      // Invalidate the REST provider to force a fresh fetch
      ref.invalidate(busLocationsRestProvider);
      final data = await ref.read(busLocationsRestProvider.future);
      yield data;
    } catch (e) {
      // Polling error, keep last known data (don't yield)
      // This prevents clearing the map on temporary network errors
    }
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
