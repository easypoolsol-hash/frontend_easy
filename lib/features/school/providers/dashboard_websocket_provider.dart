/// Riverpod provider for dashboard WebSocket service
library;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/services/dashboard_websocket_service.dart';
import 'package:frontend_easy/core/config/api_config.dart';

/// WebSocket service provider
final dashboardWebSocketServiceProvider = Provider<DashboardWebSocketService>((ref) {
  final service = DashboardWebSocketService(
    baseUrl: ApiConfig.baseUrl,
  );

  // Auto-connect when provider is created
  service.connect();

  // Clean up on dispose
  ref.onDispose(() {
    service.dispose();
  });

  return service;
});

/// WebSocket status stream provider
final webSocketStatusProvider = StreamProvider<WebSocketStatus>((ref) {
  final service = ref.watch(dashboardWebSocketServiceProvider);
  return service.statusStream;
});

/// Boarding events stream provider
final boardingEventsStreamProvider = StreamProvider<BoardingEventData>((ref) {
  final service = ref.watch(dashboardWebSocketServiceProvider);
  return service.boardingEventsStream;
});

/// Stats updates stream provider
final statsUpdatesStreamProvider = StreamProvider<StatsUpdateData>((ref) {
  final service = ref.watch(dashboardWebSocketServiceProvider);
  return service.statsStream;
});
