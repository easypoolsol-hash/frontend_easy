import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/fleet/services/live_trail_history_manager.dart';
import 'package:frontend_easy/features/fleet/providers/bus_locations_provider.dart';

/// State for live trail visualization
class LiveTrailState {
  /// Trail data per bus (Map<busId, List<GeoJSON features>>)
  final Map<String, List<Map<String, dynamic>>> trailsByBusId;

  /// Whether trails are currently visible
  final bool isTrailEnabled;

  /// Trail retention duration
  final Duration trailDuration;

  /// Number of buses currently tracked
  final int trackedBusCount;

  /// Total number of location points stored
  final int totalPointCount;

  LiveTrailState({
    this.trailsByBusId = const {},
    this.isTrailEnabled = true,
    this.trailDuration = const Duration(minutes: 10),
    this.trackedBusCount = 0,
    this.totalPointCount = 0,
  });

  LiveTrailState copyWith({
    Map<String, List<Map<String, dynamic>>>? trailsByBusId,
    bool? isTrailEnabled,
    Duration? trailDuration,
    int? trackedBusCount,
    int? totalPointCount,
  }) {
    return LiveTrailState(
      trailsByBusId: trailsByBusId ?? this.trailsByBusId,
      isTrailEnabled: isTrailEnabled ?? this.isTrailEnabled,
      trailDuration: trailDuration ?? this.trailDuration,
      trackedBusCount: trackedBusCount ?? this.trackedBusCount,
      totalPointCount: totalPointCount ?? this.totalPointCount,
    );
  }
}

/// Notifier for live trail state management
///
/// Subscribes to busLocationsProvider and accumulates location history
/// for trail visualization in live mode
class LiveTrailNotifier extends Notifier<LiveTrailState> {
  late final LiveTrailHistoryManager _historyManager;
  ProviderSubscription<AsyncValue<List<Map<String, dynamic>>>>? _locationSubscription;
  Timer? _cleanupTimer;

  @override
  LiveTrailState build() {
    // Initialize history manager with retention from state
    _historyManager = LiveTrailHistoryManager(
      retentionDuration: const Duration(minutes: 10),
      maxPointsPerBus: 25,
      maxBusesTracked: 50,
    );

    // Subscribe to live location updates
    _subscribeToLiveLocations();

    // Set up periodic cleanup (every minute)
    _cleanupTimer = Timer.periodic(const Duration(minutes: 1), (_) {
      _periodicCleanup();
    });

    // Cleanup on dispose
    ref.onDispose(() {
      _locationSubscription?.close();
      _cleanupTimer?.cancel();
      _historyManager.clearAll();
    });

    return LiveTrailState();
  }

  /// Subscribe to live location updates from busLocationsProvider
  void _subscribeToLiveLocations() {
    // Watch the bus locations stream
    _locationSubscription = ref.listen<AsyncValue<List<Map<String, dynamic>>>>(
      busLocationsProvider,
      (previous, next) {
        next.when(
          data: (locations) => _handleLocationUpdate(locations),
          loading: () {}, // Do nothing while loading
          error: (error, stack) {}, // Do nothing on error
        );
      },
      fireImmediately: true, // Process initial value immediately
    );
  }

  /// Handle new location data from live polling
  void _handleLocationUpdate(List<Map<String, dynamic>> locations) {
    if (!state.isTrailEnabled) {
      // Don't accumulate if trails are disabled (save memory)
      return;
    }

    // Add each location to history manager
    for (final location in locations) {
      try {
        // Extract bus ID from properties
        final properties = location['properties'] as Map<String, dynamic>?;
        final busId = properties?['bus_uuid'] as String?;

        if (busId != null) {
          _historyManager.addLocationPoint(busId, location);
        }
      } catch (e) {
        // Skip invalid location data
        continue;
      }
    }

    // Update state with latest trails
    _updateTrailState();
  }

  /// Update state with current trail data from history manager
  void _updateTrailState() {
    final trails = _historyManager.getAllTrails();

    state = state.copyWith(
      trailsByBusId: trails,
      trackedBusCount: _historyManager.trackedBusCount,
      totalPointCount: _historyManager.totalPointCount,
    );
  }

  /// Periodic cleanup of old trail data
  void _periodicCleanup() {
    _historyManager.pruneAllBuses();
    _updateTrailState();
  }

  /// Toggle trail visibility on/off
  void toggleTrailVisibility() {
    state = state.copyWith(isTrailEnabled: !state.isTrailEnabled);

    // If trails were disabled, clear accumulated data to save memory
    if (!state.isTrailEnabled) {
      _historyManager.clearAll();
      _updateTrailState();
    }
  }

  /// Clear all trail data
  void clearAllTrails() {
    _historyManager.clearAll();
    _updateTrailState();
  }

  /// Clear trail for a specific bus
  void clearBusTrail(String busId) {
    _historyManager.clearBusTrail(busId);
    _updateTrailState();
  }

  /// Set trail retention duration (future enhancement)
  void setTrailDuration(Duration duration) {
    // Note: Would need to recreate history manager with new duration
    // For now, just update state
    state = state.copyWith(trailDuration: duration);
  }
}

/// Provider for live trail state
///
/// Usage:
/// - Read state: ref.watch(liveTrailProvider)
/// - Call methods: ref.read(liveTrailProvider.notifier).toggleTrailVisibility()
final liveTrailProvider = NotifierProvider<LiveTrailNotifier, LiveTrailState>(() {
  return LiveTrailNotifier();
});
