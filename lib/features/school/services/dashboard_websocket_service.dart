/// WebSocket service for real-time dashboard updates
/// Fortune 500 pattern: Server push instead of polling
library;

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// Real-time dashboard WebSocket service
///
/// Connects to: ws://domain/ws/dashboard/
/// Receives: boarding_event, stats_update
///
/// Architecture:
/// - WebSocket connection with auto-reconnect
/// - Session-based authentication (cookies automatically sent)
/// - Stream-based event broadcasting
/// - Automatic reconnection on disconnect
class DashboardWebSocketService {
  final String baseUrl;

  WebSocketChannel? _channel;
  StreamController<BoardingEventData>? _boardingEventsController;
  StreamController<StatsUpdateData>? _statsController;
  StreamController<WebSocketStatus>? _statusController;
  Timer? _reconnectTimer;
  bool _isConnecting = false;

  /// WebSocket connection status
  Stream<WebSocketStatus> get statusStream =>
      _statusController?.stream ?? const Stream.empty();

  /// Real-time boarding events stream
  Stream<BoardingEventData> get boardingEventsStream =>
      _boardingEventsController?.stream ?? const Stream.empty();

  /// Real-time stats updates stream
  Stream<StatsUpdateData> get statsStream =>
      _statsController?.stream ?? const Stream.empty();

  DashboardWebSocketService({
    required this.baseUrl,
  }) {
    _boardingEventsController = StreamController<BoardingEventData>.broadcast();
    _statsController = StreamController<StatsUpdateData>.broadcast();
    _statusController = StreamController<WebSocketStatus>.broadcast();
  }

  /// Connect to dashboard WebSocket
  /// Session authentication via cookies (automatically sent by browser)
  Future<void> connect() async {
    if (_isConnecting || _channel != null) return;

    _isConnecting = true;
    _statusController?.add(WebSocketStatus.connecting);

    try {
      // Convert http/https URL to ws/wss
      final wsUrl = baseUrl
          .replaceFirst('http://', 'ws://')
          .replaceFirst('https://', 'wss://');

      // Connect without token - session cookie automatically sent
      final uri = Uri.parse('$wsUrl/ws/dashboard/');

      _channel = WebSocketChannel.connect(uri);

      // Listen to messages
      _channel!.stream.listen(
        _handleMessage,
        onError: _handleError,
        onDone: _handleDisconnect,
        cancelOnError: false,
      );

      _statusController?.add(WebSocketStatus.connected);
      _isConnecting = false;
    } catch (e) {
      _handleError(e);
      _isConnecting = false;
    }
  }

  /// Handle incoming WebSocket messages
  void _handleMessage(dynamic message) {
    try {
      final data = jsonDecode(message as String) as Map<String, dynamic>;
      final type = data['type'] as String?;

      switch (type) {
        case 'boarding_event':
          final eventData = BoardingEventData.fromJson(
            data['data'] as Map<String, dynamic>,
          );
          _boardingEventsController?.add(eventData);
          break;

        case 'stats_update':
          final statsData = StatsUpdateData.fromJson(
            data['data'] as Map<String, dynamic>,
          );
          _statsController?.add(statsData);
          break;

        default:
          debugPrint('Unknown WebSocket message type: $type');
      }
    } catch (e) {
      debugPrint('Error parsing WebSocket message: $e');
    }
  }

  /// Handle WebSocket errors
  void _handleError(dynamic error) {
    debugPrint('WebSocket error: $error');
    _statusController?.add(WebSocketStatus.error);
    _scheduleReconnect();
  }

  /// Handle WebSocket disconnect
  void _handleDisconnect() {
    debugPrint('WebSocket disconnected');
    _statusController?.add(WebSocketStatus.disconnected);
    _channel = null;
    _scheduleReconnect();
  }

  /// Schedule automatic reconnection
  void _scheduleReconnect() {
    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(const Duration(seconds: 5), () {
      if (_channel == null && !_isConnecting) {
        debugPrint('Attempting WebSocket reconnect...');
        connect();
      }
    });
  }

  /// Disconnect WebSocket
  void disconnect() {
    _reconnectTimer?.cancel();
    _channel?.sink.close();
    _channel = null;
    _statusController?.add(WebSocketStatus.disconnected);
  }

  /// Dispose resources
  void dispose() {
    disconnect();
    _boardingEventsController?.close();
    _statsController?.close();
    _statusController?.close();
  }
}

/// WebSocket connection status
enum WebSocketStatus {
  connecting,
  connected,
  disconnected,
  error,
  authError,
}

/// Boarding event data from WebSocket
class BoardingEventData {
  final String eventId;
  final String studentId;
  final String studentName;
  final String grade;
  final DateTime timestamp;
  final String kioskId;
  final String eventType;

  BoardingEventData({
    required this.eventId,
    required this.studentId,
    required this.studentName,
    required this.grade,
    required this.timestamp,
    required this.kioskId,
    required this.eventType,
  });

  factory BoardingEventData.fromJson(Map<String, dynamic> json) {
    return BoardingEventData(
      eventId: json['event_id'] as String,
      studentId: json['student_id'] as String,
      studentName: json['student_name'] as String,
      grade: json['grade'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      kioskId: json['kiosk_id'] as String,
      eventType: json['event_type'] as String,
    );
  }
}

/// Stats update data from WebSocket
class StatsUpdateData {
  final int studentsBoardedToday;
  final int totalEventsToday;

  StatsUpdateData({
    required this.studentsBoardedToday,
    required this.totalEventsToday,
  });

  factory StatsUpdateData.fromJson(Map<String, dynamic> json) {
    return StatsUpdateData(
      studentsBoardedToday: json['students_boarded_today'] as int,
      totalEventsToday: json['total_events_today'] as int,
    );
  }
}
