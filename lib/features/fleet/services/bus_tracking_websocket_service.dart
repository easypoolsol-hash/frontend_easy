/// WebSocket service for real-time bus location tracking
/// Connects to backend ws/bus-tracking/ endpoint
library;

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Real-time bus tracking WebSocket service
///
/// Connects to: ws://domain/ws/bus-tracking/
/// Receives: bus_location_update events with GeoJSON features
///
/// Architecture:
/// - WebSocket connection with auto-reconnect
/// - JWT authentication via query param
/// - Stream-based location broadcasting
/// - Automatic reconnection on disconnect
class BusTrackingWebSocketService {
  /// Base URL of the backend API
  final String baseUrl;
  final FlutterSecureStorage _storage;

  WebSocketChannel? _channel;
  StreamController<List<Map<String, dynamic>>>? _locationsController;
  StreamController<WebSocketConnectionStatus>? _statusController;
  Timer? _reconnectTimer;
  bool _isConnecting = false;
  String? _cachedToken;
  List<Map<String, dynamic>> _lastKnownLocations = [];

  /// WebSocket connection status
  Stream<WebSocketConnectionStatus> get statusStream =>
      _statusController?.stream ?? const Stream.empty();

  /// Real-time bus locations stream (GeoJSON features)
  Stream<List<Map<String, dynamic>>> get locationsStream =>
      _locationsController?.stream ?? const Stream.empty();

  /// Get last known locations (cached)
  List<Map<String, dynamic>> get lastKnownLocations => _lastKnownLocations;

  /// Creates a bus tracking WebSocket service
  BusTrackingWebSocketService({
    required this.baseUrl,
    FlutterSecureStorage? storage,
  }) : _storage = storage ?? const FlutterSecureStorage() {
    _locationsController = StreamController<List<Map<String, dynamic>>>.broadcast();
    _statusController = StreamController<WebSocketConnectionStatus>.broadcast();
  }

  /// Connect to bus tracking WebSocket
  Future<void> connect() async {
    if (_isConnecting || _channel != null) return;

    _isConnecting = true;
    _statusController?.add(WebSocketConnectionStatus.connecting);

    try {
      // Get auth token
      _cachedToken = await _storage.read(key: 'access_token');
      if (_cachedToken == null) {
        _statusController?.add(WebSocketConnectionStatus.authError);
        _isConnecting = false;
        return;
      }

      // Convert http/https URL to ws/wss
      final wsUrl = baseUrl
          .replaceFirst('http://', 'ws://')
          .replaceFirst('https://', 'wss://');

      // Connect with JWT token as query param
      final uri = Uri.parse('$wsUrl/ws/bus-tracking/?token=$_cachedToken');

      _channel = WebSocketChannel.connect(uri);

      // Listen to messages
      _channel!.stream.listen(
        _handleMessage,
        onError: _handleError,
        onDone: _handleDisconnect,
        cancelOnError: false,
      );

      _statusController?.add(WebSocketConnectionStatus.connected);
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
        case 'bus_location_update':
          // Backend sends: { type: 'bus_location_update', features: [...] }
          final features = (data['features'] as List<dynamic>?)
              ?.map((f) => f as Map<String, dynamic>)
              .toList() ?? [];

          _lastKnownLocations = features;
          _locationsController?.add(features);
          break;

        case 'location_update':
          // Alternative format: { type: 'location_update', data: { features: [...] } }
          final locationData = data['data'] as Map<String, dynamic>?;
          if (locationData != null) {
            final features = (locationData['features'] as List<dynamic>?)
                ?.map((f) => f as Map<String, dynamic>)
                .toList() ?? [];

            _lastKnownLocations = features;
            _locationsController?.add(features);
          }
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
    debugPrint('Bus tracking WebSocket error: $error');
    _statusController?.add(WebSocketConnectionStatus.error);
    _scheduleReconnect();
  }

  /// Handle WebSocket disconnect
  void _handleDisconnect() {
    debugPrint('Bus tracking WebSocket disconnected');
    _statusController?.add(WebSocketConnectionStatus.disconnected);
    _channel = null;
    _scheduleReconnect();
  }

  /// Schedule automatic reconnection
  void _scheduleReconnect() {
    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(const Duration(seconds: 5), () {
      if (_channel == null && !_isConnecting) {
        debugPrint('Attempting bus tracking WebSocket reconnect...');
        connect();
      }
    });
  }

  /// Disconnect WebSocket
  void disconnect() {
    _reconnectTimer?.cancel();
    _channel?.sink.close();
    _channel = null;
    _statusController?.add(WebSocketConnectionStatus.disconnected);
  }

  /// Dispose resources
  void dispose() {
    disconnect();
    _locationsController?.close();
    _statusController?.close();
  }
}

/// WebSocket connection status
enum WebSocketConnectionStatus {
  /// Attempting to establish connection
  connecting,
  /// Successfully connected
  connected,
  /// Connection closed
  disconnected,
  /// Error occurred
  error,
  /// Authentication failed
  authError,
}
