import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

/// Utility class for creating location trails on Google Maps
///
/// Single Responsibility: Generate polylines showing historical movement paths
/// Reusable across different map contexts (history playback, live tracking, etc.)
class LocationTrailPainter {
  /// Create a polyline trail from a list of GeoJSON location features
  ///
  /// Parameters:
  /// - [locations]: List of GeoJSON features with geometry.coordinates
  /// - [trailId]: Unique identifier for the trail polyline
  /// - [color]: Color of the trail line (defaults to orange)
  /// - [width]: Width of the trail line in pixels (defaults to 4)
  /// - [startIndex]: Index to start the trail from (for progressive reveal)
  /// - [endIndex]: Index to end the trail at (for progressive reveal)
  ///
  /// Returns a Polyline object ready to be added to Google Maps
  static Polyline? createTrailFromGeoJson({
    required List<Map<String, dynamic>> locations,
    required String trailId,
    Color color = Colors.orange,
    int width = 4,
    int? startIndex,
    int? endIndex,
  }) {
    if (locations.isEmpty) {
      return null;
    }

    final start = startIndex ?? 0;
    final end = endIndex ?? locations.length;

    // Extract coordinates from GeoJSON features
    final List<LatLng> points = [];
    for (int i = start; i < end && i < locations.length; i++) {
      try {
        final geometry = locations[i]['geometry'] as Map<String, dynamic>?;
        final coordinates = geometry?['coordinates'] as List<dynamic>?;

        if (coordinates != null && coordinates.length >= 2) {
          final lon = (coordinates[0] as num).toDouble();
          final lat = (coordinates[1] as num).toDouble();
          points.add(LatLng(lat, lon));
        }
      } catch (e) {
        // Skip invalid coordinates
        continue;
      }
    }

    // Need at least 2 points to draw a line
    if (points.length < 2) {
      return null;
    }

    return Polyline(
      polylineId: PolylineId(trailId),
      points: points,
      color: color,
      width: width,
      geodesic: true, // Follow Earth's curvature
      startCap: Cap.roundCap,
      endCap: Cap.roundCap,
      jointType: JointType.round,
    );
  }

  /// Detect data gaps in location history
  /// Returns list of indices where gaps start (i.e., points after gaps)
  static List<int> _detectDataGaps(
    List<Map<String, dynamic>> locations,
    Duration gapThreshold,
  ) {
    final gapIndices = <int>[];

    for (int i = 1; i < locations.length; i++) {
      try {
        // Extract timestamps from GeoJSON properties
        final prevProps = locations[i - 1]['properties'] as Map<String, dynamic>?;
        final currProps = locations[i]['properties'] as Map<String, dynamic>?;

        final prevTimeStr = prevProps?['timestamp'] as String?;
        final currTimeStr = currProps?['timestamp'] as String?;

        if (prevTimeStr != null && currTimeStr != null) {
          final prevTime = DateTime.parse(prevTimeStr);
          final currTime = DateTime.parse(currTimeStr);

          // Check if gap exceeds threshold
          if (currTime.difference(prevTime) > gapThreshold) {
            gapIndices.add(i); // Mark start of new segment after gap
          }
        }
      } catch (e) {
        // Skip invalid timestamps
        continue;
      }
    }

    return gapIndices;
  }

  /// Create progressive trail with gap detection
  /// Breaks trail into segments at data gaps (>5 minutes by default)
  static List<Polyline> createProgressiveTrailWithGaps({
    required List<Map<String, dynamic>> locations,
    required int currentIndex,
    required String trailId,
    Color color = Colors.orange,
    int width = 4,
    Duration gapThreshold = const Duration(minutes: 5),
  }) {
    if (locations.isEmpty || currentIndex < 0) {
      return [];
    }

    // Only consider locations up to current index
    final visibleLocations = locations.sublist(0, currentIndex + 1);

    // Detect gaps in the visible data
    final gapIndices = _detectDataGaps(visibleLocations, gapThreshold);

    // Create polylines, breaking at gaps
    final polylines = <Polyline>[];
    int segmentStart = 0;

    for (final gapIndex in gapIndices) {
      // Create polyline up to gap (if segment has points)
      if (gapIndex > segmentStart) {
        final segment = createTrailFromGeoJson(
          locations: locations,
          trailId: '${trailId}_segment_$segmentStart',
          color: color,
          width: width,
          startIndex: segmentStart,
          endIndex: gapIndex,
        );
        if (segment != null) {
          polylines.add(segment);
        }
      }
      // Next segment starts at the gap point
      segmentStart = gapIndex;
    }

    // Create final segment from last gap to current index
    if (segmentStart <= currentIndex) {
      final segment = createTrailFromGeoJson(
        locations: locations,
        trailId: '${trailId}_segment_$segmentStart',
        color: color,
        width: width,
        startIndex: segmentStart,
        endIndex: currentIndex + 1,
      );
      if (segment != null) {
        polylines.add(segment);
      }
    }

    return polylines;
  }

  /// Create a progressive trail that reveals up to current position
  ///
  /// Useful for history playback where trail builds up as playback progresses
  static Polyline? createProgressiveTrail({
    required List<Map<String, dynamic>> locations,
    required int currentIndex,
    required String trailId,
    Color color = Colors.orange,
    int width = 4,
  }) {
    return createTrailFromGeoJson(
      locations: locations,
      trailId: trailId,
      color: color,
      width: width,
      startIndex: 0,
      endIndex: currentIndex + 1, // Include current position
    );
  }

  /// Create a fading trail with gradient effect (using multiple polylines)
  ///
  /// Creates segments with decreasing opacity for a fading tail effect
  /// Returns list of polylines to add to map
  static List<Polyline> createFadingTrail({
    required List<Map<String, dynamic>> locations,
    required int currentIndex,
    required String trailId,
    Color baseColor = Colors.orange,
    int width = 4,
    int segmentCount = 5, // Number of fading segments
    int pointsPerSegment = 10, // Points in each segment
  }) {
    final List<Polyline> segments = [];

    if (locations.isEmpty || currentIndex < 0) {
      return segments;
    }

    // Calculate segment boundaries
    final totalPoints = (segmentCount * pointsPerSegment).clamp(0, currentIndex + 1);
    final startIndex = (currentIndex + 1 - totalPoints).clamp(0, locations.length);

    // Create segments with decreasing opacity
    for (int segment = 0; segment < segmentCount; segment++) {
      final segmentStart = startIndex + (segment * pointsPerSegment);
      final segmentEnd = (segmentStart + pointsPerSegment).clamp(0, currentIndex + 1);

      if (segmentStart >= segmentEnd) continue;

      // Calculate opacity (older segments are more transparent)
      final opacity = ((segment + 1) / segmentCount).clamp(0.2, 1.0);
      final segmentColor = baseColor.withValues(alpha: opacity);

      final polyline = createTrailFromGeoJson(
        locations: locations,
        trailId: '${trailId}_segment_$segment',
        color: segmentColor,
        width: width,
        startIndex: segmentStart,
        endIndex: segmentEnd,
      );

      if (polyline != null) {
        segments.add(polyline);
      }
    }

    return segments;
  }

  /// Create a full trail from all location points
  ///
  /// Shows complete historical path without progressive reveal
  static Polyline? createFullTrail({
    required List<Map<String, dynamic>> locations,
    required String trailId,
    Color color = Colors.orange,
    int width = 4,
  }) {
    return createTrailFromGeoJson(
      locations: locations,
      trailId: trailId,
      color: color,
      width: width,
    );
  }

  /// Get bounds for a trail to fit camera view
  ///
  /// Useful for zooming camera to show entire trail
  static LatLngBounds? getTrailBounds(List<Map<String, dynamic>> locations) {
    if (locations.isEmpty) {
      return null;
    }

    double? minLat, maxLat, minLng, maxLng;

    for (final location in locations) {
      try {
        final geometry = location['geometry'] as Map<String, dynamic>?;
        final coordinates = geometry?['coordinates'] as List<dynamic>?;

        if (coordinates != null && coordinates.length >= 2) {
          final lon = (coordinates[0] as num).toDouble();
          final lat = (coordinates[1] as num).toDouble();

          minLat = minLat == null ? lat : (lat < minLat ? lat : minLat);
          maxLat = maxLat == null ? lat : (lat > maxLat ? lat : maxLat);
          minLng = minLng == null ? lon : (lon < minLng ? lon : minLng);
          maxLng = maxLng == null ? lon : (lon > maxLng ? lon : maxLng);
        }
      } catch (e) {
        continue;
      }
    }

    if (minLat == null || maxLat == null || minLng == null || maxLng == null) {
      return null;
    }

    return LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );
  }
}
