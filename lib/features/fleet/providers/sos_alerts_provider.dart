import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:frontend_easy/shared/services/api_service.dart';

/// SOS Alerts Provider
/// Polls for active SOS alerts from backend
/// NOTE: Backend needs to provide GET /api/v1/sos/alerts/active endpoint
final sosAlertsProvider = StreamProvider.autoDispose<List<api.SOSAlert>>((ref) async* {
  // Keep provider alive to persist alerts when switching tabs
  ref.keepAlive();

  // Polling interval: 10 seconds (faster than bus locations for urgent alerts)
  const pollingInterval = Duration(seconds: 10);

  // Cleanup timer on dispose
  Timer? pollingTimer;
  ref.onDispose(() {
    pollingTimer?.cancel();
  });

  // Initial load
  try {
    final initialData = await ref.read(sosAlertsRestProvider.future);
    yield initialData;
  } catch (e) {
    // Initial load failed, yield empty list
    yield [];
  }

  // Set up polling
  await for (final _ in Stream.periodic(pollingInterval)) {
    try {
      // Invalidate the REST provider to force a fresh fetch
      ref.invalidate(sosAlertsRestProvider);
      final data = await ref.read(sosAlertsRestProvider.future);
      yield data;
    } catch (e) {
      // Polling error, keep last known data (don't yield)
      // This prevents clearing alerts on temporary network errors
    }
  }
});

/// REST API provider for fetching active SOS alerts
/// TODO: Backend needs to implement GET /api/v1/sos/alerts/active endpoint
/// Expected response: List of SOSAlert objects with status='active'
final sosAlertsRestProvider = FutureProvider<List<api.SOSAlert>>((ref) async {
  try {
    final apiService = ref.watch(apiServiceProvider);

    // TODO: Replace with actual endpoint when backend implements it
    // For now, this will return empty list until endpoint is available
    // Expected endpoint: GET /api/v1/sos/alerts/active
    // Should return: { "alerts": [ ...SOSAlert objects... ] }

    // Placeholder - replace when endpoint is ready:
    // final response = await apiService.api.getSosAlertsActive();
    // return response.data?.alerts ?? [];

    return [];
  } catch (e) {
    // API error - return empty list
    return [];
  }
});

/// Provider to acknowledge an SOS alert
/// Updates alert status to 'acknowledged'
final acknowledgeSosAlertProvider = FutureProvider.family<bool, int>((ref, alertId) async {
  try {
    final apiService = ref.watch(apiServiceProvider);

    // TODO: Backend needs to implement PATCH /api/v1/sos/alerts/{alert_id}/acknowledge
    // For now, this is a placeholder

    // Placeholder - replace when endpoint is ready:
    // await apiService.api.acknowledgeSosAlert(alertId);

    // After acknowledging, refresh the alerts list
    ref.invalidate(sosAlertsRestProvider);

    return true;
  } catch (e) {
    return false;
  }
});

/// Provider to resolve an SOS alert
/// Updates alert status to 'resolved'
final resolveSosAlertProvider = FutureProvider.family<bool, int>((ref, alertId) async {
  try {
    final apiService = ref.watch(apiServiceProvider);

    // TODO: Backend needs to implement PATCH /api/v1/sos/alerts/{alert_id}/resolve
    // For now, this is a placeholder

    // Placeholder - replace when endpoint is ready:
    // await apiService.api.resolveSosAlert(alertId);

    // After resolving, refresh the alerts list
    ref.invalidate(sosAlertsRestProvider);

    return true;
  } catch (e) {
    return false;
  }
});
