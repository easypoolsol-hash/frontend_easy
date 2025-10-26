import 'package:flutter/material.dart';

/// Bus marker color logic - Single responsibility: Determine marker colors
/// Based on bus status and location freshness
class BusMarkerColors {
  /// Active bus (operational, on route, fresh GPS location)
  static const Color active = Color(0xFF4CAF50); // Green

  /// Inactive bus (parked, not operational)
  static const Color inactive = Color(0xFF9E9E9E); // Gray

  /// Selected bus (user clicked on it)
  static const Color selected = Color(0xFFE6A800); // Brand yellow

  /// Warning (delayed, off-route, minor issue)
  static const Color warning = Color(0xFFFF9800); // Orange

  /// Error (emergency, breakdown, critical issue)
  static const Color error = Color(0xFFF44336); // Red

  /// Stale location - moderately old GPS data (concerning but not critical)
  static const Color stale = Color(0xFFFF9800); // Orange (warning level)

  /// Very stale location - critically old GPS data (potential safety issue)
  static const Color veryStale = Color(0xFFF44336); // Red (error level)

  /// Threshold for stale location (GPS not updated recently)
  static const Duration staleThreshold = Duration(minutes: 5);

  /// Threshold for very stale location (GPS critically outdated - safety concern)
  static const Duration veryStaleThreshold = Duration(minutes: 15);

  /// Get color based on bus status and location freshness
  ///
  /// Priority order (highest to lowest):
  /// 1. Selected state (always yellow for visibility)
  /// 2. Very stale GPS (>15min) = RED (safety critical)
  /// 3. Stale GPS (>5min) = ORANGE (warning)
  /// 4. Bus status (active, inactive, warning, error)
  ///
  /// Parameters:
  /// - [status]: Bus operational status
  /// - [isSelected]: Whether bus is selected by user
  /// - [lastLocationUpdate]: Timestamp of last GPS update
  /// - [customStaleThreshold]: Override default stale threshold (optional)
  /// - [customVeryStaleThreshold]: Override default very stale threshold (optional)
  static Color getColorForStatus(
    String status, {
    bool isSelected = false,
    DateTime? lastLocationUpdate,
    Duration? customStaleThreshold,
    Duration? customVeryStaleThreshold,
  }) {
    // Priority 1: Selected state (always visible)
    if (isSelected) return selected;

    // Priority 2 & 3: Check location freshness (safety-critical)
    if (lastLocationUpdate != null) {
      final now = DateTime.now();
      final timeSinceUpdate = now.difference(lastLocationUpdate);

      final veryStaleLimit = customVeryStaleThreshold ?? veryStaleThreshold;
      final staleLimit = customStaleThreshold ?? staleThreshold;

      // Very stale = RED (critical safety concern)
      if (timeSinceUpdate > veryStaleLimit) {
        return veryStale; // GPS critically outdated
      }

      // Stale = ORANGE (warning level)
      if (timeSinceUpdate > staleLimit) {
        return stale; // GPS moderately outdated
      }
    }

    // Priority 4: Normal status-based coloring
    switch (status.toLowerCase()) {
      case 'active':
      case 'running':
      case 'in_transit':
        return active; // Green - operating normally

      case 'inactive':
      case 'parked':
      case 'idle':
        return inactive; // Gray - not in service

      case 'warning':
      case 'delayed':
      case 'off_route':
        return warning; // Orange - needs attention

      case 'error':
      case 'emergency':
      case 'breakdown':
        return error; // Red - critical issue

      default:
        return inactive; // Default to inactive if status unknown
    }
  }

  /// Get human-readable description of why a color was chosen
  /// Useful for debugging and UI tooltips
  static String getColorReason(
    String status, {
    bool isSelected = false,
    DateTime? lastLocationUpdate,
  }) {
    if (isSelected) return 'Selected';

    if (lastLocationUpdate != null) {
      final now = DateTime.now();
      final timeSinceUpdate = now.difference(lastLocationUpdate);

      if (timeSinceUpdate > veryStaleThreshold) {
        return 'GPS critically outdated (${timeSinceUpdate.inMinutes}min)';
      }

      if (timeSinceUpdate > staleThreshold) {
        return 'GPS stale (${timeSinceUpdate.inMinutes}min)';
      }
    }

    return status.toLowerCase();
  }
}
