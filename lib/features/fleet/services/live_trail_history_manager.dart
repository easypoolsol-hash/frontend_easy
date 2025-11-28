/// Service for managing client-side live trail history
///
/// Accumulates location updates from live polling and maintains a rolling
/// window of the last 10 minutes of movement for each bus.
class LiveTrailHistoryManager {
  /// Storage for trail history per bus
  /// Map<busId, List<TimestampedLocation>>
  final Map<String, List<TimestampedLocation>> _trailHistory = {};

  /// How long to retain location points (default: 10 minutes)
  final Duration retentionDuration;

  /// Maximum number of points to store per bus (prevents memory bloat)
  final int maxPointsPerBus;

  /// Maximum number of buses to track (prevents unbounded growth)
  final int maxBusesTracked;

  LiveTrailHistoryManager({
    this.retentionDuration = const Duration(minutes: 10),
    this.maxPointsPerBus = 25,
    this.maxBusesTracked = 50,
  });

  /// Add a new location point for a bus
  ///
  /// Automatically prunes old points and enforces memory limits
  void addLocationPoint(String busId, Map<String, dynamic> geoJsonFeature) {
    // Initialize list for new bus
    _trailHistory.putIfAbsent(busId, () => []);

    // Add new point with timestamp
    final timestampedLocation = TimestampedLocation(
      geoJsonFeature: geoJsonFeature,
      timestamp: DateTime.now(),
    );

    _trailHistory[busId]!.add(timestampedLocation);

    // Prune old points for this bus
    _pruneOldPoints(busId);

    // Downsample if too many points
    if (_trailHistory[busId]!.length > maxPointsPerBus) {
      _downsample(busId);
    }

    // Enforce global memory limits
    _enforceMemoryLimits();
  }

  /// Get trail data for a specific bus in GeoJSON format
  ///
  /// Returns list compatible with LocationTrailPainter
  /// Auto-prunes before returning to ensure fresh data
  List<Map<String, dynamic>> getTrailForBus(String busId) {
    // Prune before returning
    _pruneOldPoints(busId);

    final trail = _trailHistory[busId];
    if (trail == null || trail.isEmpty) {
      return [];
    }

    // Convert to GeoJSON features
    return trail.map((loc) => loc.geoJsonFeature).toList();
  }

  /// Get all trails for all buses
  ///
  /// Returns Map<busId, List<GeoJSON features>>
  Map<String, List<Map<String, dynamic>>> getAllTrails() {
    final result = <String, List<Map<String, dynamic>>>{};

    for (final busId in _trailHistory.keys) {
      final trail = getTrailForBus(busId);
      if (trail.isNotEmpty) {
        result[busId] = trail;
      }
    }

    return result;
  }

  /// Prune old location points for a specific bus
  ///
  /// Removes points older than retentionDuration
  void _pruneOldPoints(String busId) {
    final trail = _trailHistory[busId];
    if (trail == null) return;

    final now = DateTime.now();
    trail.removeWhere((location) {
      return now.difference(location.timestamp) > retentionDuration;
    });

    // Remove bus entry entirely if no points remain
    if (trail.isEmpty) {
      _trailHistory.remove(busId);
    }
  }

  /// Prune old points for all buses
  ///
  /// Called periodically to clean up stale data
  void pruneAllBuses() {
    final busIds = _trailHistory.keys.toList();
    for (final busId in busIds) {
      _pruneOldPoints(busId);
    }
  }

  /// Downsample points for a bus to stay within maxPointsPerBus
  ///
  /// Keeps first, last, and evenly distributed middle points
  void _downsample(String busId) {
    final points = _trailHistory[busId];
    if (points == null || points.length <= maxPointsPerBus) return;

    final downsampled = <TimestampedLocation>[];

    // Always keep first point
    downsampled.add(points.first);

    // Calculate step size for middle points
    final step = (points.length - 2) / (maxPointsPerBus - 2);

    // Add evenly distributed middle points
    for (int i = 1; i < maxPointsPerBus - 1; i++) {
      final index = 1 + (step * (i - 1)).round();
      if (index < points.length - 1) {
        downsampled.add(points[index]);
      }
    }

    // Always keep last point
    downsampled.add(points.last);

    _trailHistory[busId] = downsampled;
  }

  /// Enforce memory limits by removing oldest inactive buses
  ///
  /// If tracking too many buses, remove the ones with oldest last update
  void _enforceMemoryLimits() {
    if (_trailHistory.length <= maxBusesTracked) return;

    // Sort buses by last update time (oldest first)
    final sortedBuses = _trailHistory.entries.toList()
      ..sort((a, b) {
        final aLatest = a.value.lastOrNull?.timestamp ?? DateTime(2000);
        final bLatest = b.value.lastOrNull?.timestamp ?? DateTime(2000);
        return aLatest.compareTo(bLatest);
      });

    // Remove oldest 25% of buses
    final toRemoveCount = (_trailHistory.length - maxBusesTracked);
    final toRemove = sortedBuses.take(toRemoveCount);

    for (final entry in toRemove) {
      _trailHistory.remove(entry.key);
    }
  }

  /// Clear trail for a specific bus
  void clearBusTrail(String busId) {
    _trailHistory.remove(busId);
  }

  /// Clear all trail data
  void clearAll() {
    _trailHistory.clear();
  }

  /// Get number of buses currently tracked
  int get trackedBusCount => _trailHistory.length;

  /// Get total number of location points stored
  int get totalPointCount {
    return _trailHistory.values.fold(0, (sum, trail) => sum + trail.length);
  }
}

/// Wrapper class for a location point with timestamp
///
/// Stores the original GeoJSON feature plus when it was received
class TimestampedLocation {
  /// The GeoJSON feature from the API
  final Map<String, dynamic> geoJsonFeature;

  /// When this location was received
  final DateTime timestamp;

  TimestampedLocation({
    required this.geoJsonFeature,
    required this.timestamp,
  });

  /// Check if this location is older than a given duration
  bool isOlderThan(Duration duration) {
    return DateTime.now().difference(timestamp) > duration;
  }

  /// Get bus ID from GeoJSON properties
  String? get busId {
    try {
      final properties = geoJsonFeature['properties'] as Map<String, dynamic>?;
      return properties?['bus_number'] as String?;
    } catch (e) {
      return null;
    }
  }
}
