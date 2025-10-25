import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy/core/config/api_config.dart';
import 'package:frontend_easy/features/fleet/services/bus_tracking_websocket_service.dart';

/// WebSocket service provider (singleton)
final busTrackingWebSocketServiceProvider = Provider<BusTrackingWebSocketService>((ref) {
  final service = BusTrackingWebSocketService(baseUrl: ApiConfig.baseUrl);

  // Auto-connect on first use
  service.connect();

  // Cleanup on dispose
  ref.onDispose(() {
    service.dispose();
  });

  return service;
});

/// Real-time bus locations stream provider
/// Uses WebSocket for live updates with fallback to REST API
final busLocationsProvider = StreamProvider<List<Map<String, dynamic>>>((ref) async* {
  final wsService = ref.watch(busTrackingWebSocketServiceProvider);

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
/// Uses generated OpenAPI client with operation ID: school_bus_locations_list
final busLocationsRestProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  try {
    // Use generated SchoolDashboardApi client (constitutional compliance)
    final api = ApiService().client.getSchoolDashboardApi();

    // Call generated method - AuthInterceptor adds Bearer token automatically
    final response = await api.schoolBusLocationsList();

    if (response.statusCode == 200 && response.data != null) {
      final geoJson = response.data!;
      final features = geoJson.features;
      // Features are already Map<String, Object>, cast to Map<String, dynamic>
      return features.map((f) => Map<String, dynamic>.from(f)).toList();
    }
    return [];
  } catch (e) {
    // Silently fail - user not authenticated yet
    return [];
  }
});
