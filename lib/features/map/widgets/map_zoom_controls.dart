import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'package:frontend_easy/features/map/widgets/maps_config.dart';

/// Basic map controls (zoom in/out, center on home)
/// Positioned on the map for easy access
class MapZoomControls extends StatelessWidget {
  /// Map controller for zoom and pan operations
  final MapController mapController;

  /// Creates map zoom controls
  const MapZoomControls({
    required this.mapController,
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
              onPressed: () {
                final zoom = mapController.camera.zoom + 1;
                mapController.move(
                  mapController.camera.center,
                  zoom.clamp(5.0, 18.0),
                );
              },
            ),
            const Divider(height: 1),
            // Zoom Out button
            IconButton(
              icon: const Icon(Icons.remove),
              tooltip: 'Zoom Out',
              onPressed: () {
                final zoom = mapController.camera.zoom - 1;
                mapController.move(
                  mapController.camera.center,
                  zoom.clamp(5.0, 18.0),
                );
              },
            ),
            const Divider(height: 1),
            // Center on Kolkata button
            IconButton(
              icon: const Icon(Icons.my_location),
              tooltip: 'Center on Kolkata',
              onPressed: () {
                mapController.move(
                  const LatLng(
                    HomeLocation.latitude,
                    HomeLocation.longitude,
                  ),
                  12.0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
