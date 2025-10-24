import 'package:flutter/material.dart';

// maps_config is not required here; callbacks are used instead

/// Basic map controls (zoom in/out, center on home) for GoogleMap
/// Accepts callbacks so it can be reused without depending on a
/// specific map controller type.
class MapZoomControls extends StatelessWidget {
  /// Called when the user requests a zoom-in
  final Future<void> Function() onZoomIn;

  /// Called when the user requests a zoom-out
  final Future<void> Function() onZoomOut;

  /// Called when the user requests centering on home
  final Future<void> Function() onCenterHome;

  /// Creates map zoom controls
  const MapZoomControls({
    required this.onZoomIn,
    required this.onZoomOut,
    required this.onCenterHome,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16,
      bottom: 24,
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Zoom In button
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'Zoom In',
              onPressed: () async => await onZoomIn(),
            ),
            const Divider(height: 1),
            // Zoom Out button
            IconButton(
              icon: const Icon(Icons.remove),
              tooltip: 'Zoom Out',
              onPressed: () async => await onZoomOut(),
            ),
            const Divider(height: 1),
            // Center on Kolkata button
            IconButton(
              icon: const Icon(Icons.my_location),
              tooltip: 'Center on Kolkata',
              onPressed: () async => await onCenterHome(),
            ),
          ],
        ),
      ),
    );
  }
}
