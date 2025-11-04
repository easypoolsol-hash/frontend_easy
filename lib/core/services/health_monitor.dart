/// Google Product Standard - Health Monitoring Service
///
/// Monitors backend connectivity and updates system health status
/// Approach: Check health every 30 seconds, update UI accordingly

import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:frontend_easy/core/models/system_health.dart';
import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'health_monitor.g.dart';

/// Health monitor - checks backend connectivity
///
/// Pattern: Periodic polling (30s) to detect issues
/// Updates SystemHealth state for UI consumption
@riverpod
class HealthMonitor extends _$HealthMonitor {
  Timer? _pollTimer;
  DateTime? _lastSuccessfulSync;

  @override
  SystemHealth build() {
    _lastSuccessfulSync = DateTime.now();
    _startPeriodicCheck();
    return const SystemHealth.operational();
  }

  /// Start periodic health checks (every 30 seconds)
  void _startPeriodicCheck() {
    _pollTimer?.cancel();
    _pollTimer = Timer.periodic(const Duration(seconds: 30), (_) async {
      await checkHealth();
    });

    // Clean up timer when provider is disposed
    ref.onDispose(() {
      _pollTimer?.cancel();
    });
  }

  /// Check backend health
  ///
  /// - Success: Update to operational
  /// - Failure: Update to degraded with timestamp
  Future<void> checkHealth() async {
    try {
      final apiService = ref.read(apiServiceProvider);

      // Simple health check: Try to fetch routes (lightweight operation)
      // In production, you'd have a dedicated /health endpoint
      await apiService.api.apiV1RoutesList(
        isActive: true,
        page: 1, // Just first page for minimal data
      );

      // Success: Update timestamp and status
      _lastSuccessfulSync = DateTime.now();
      state = const SystemHealth.operational();
    } catch (e, stackTrace) {
      // Backend unavailable: Update to degraded
      // Only record to Crashlytics on mobile platforms (not supported on web)
      if (!kIsWeb) {
        await FirebaseCrashlytics.instance.recordError(
          e,
          stackTrace,
          reason: 'Health check failed - backend unavailable',
          fatal: false,
        );
      }

      final lastSync = _lastSuccessfulSync ?? DateTime.now();
      state = SystemHealth.degraded(
        userMessage: 'Using cached data',
        lastSuccessfulSync: lastSync,
      );
    }
  }

  /// Manual retry - called from UI
  Future<void> retry() async {
    await checkHealth();
  }
}
