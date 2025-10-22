import 'package:flutter/material.dart';

import 'package:frontend_easy/features/fleet/models/map_mode.dart';

/// Mode selector widget for map visualization
/// Displays available view modes as segmented buttons (MD3 style)
class MapModeSelector extends StatelessWidget {
  final MapMode selectedMode;
  final ValueChanged<MapMode> onModeChanged;

  const MapModeSelector({
    required this.selectedMode, required this.onModeChanged, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SegmentedButton<MapMode>(
          segments: MapMode.values.map((mode) {
            return ButtonSegment<MapMode>(
              value: mode,
              label: Text(mode.displayName),
              icon: Icon(_getIconForMode(mode)),
            );
          }).toList(),
          selected: {selectedMode},
          onSelectionChanged: (Set<MapMode> newSelection) {
            if (newSelection.isNotEmpty) {
              onModeChanged(newSelection.first);
            }
          },
        ),
      ),
    );
  }

  IconData _getIconForMode(MapMode mode) {
    switch (mode) {
      case MapMode.overview:
        return Icons.dashboard_outlined;
      case MapMode.routeFocus:
        return Icons.route_outlined;
      case MapMode.stopManagement:
        return Icons.location_on_outlined;
      case MapMode.liveOperations:
        return Icons.directions_bus_outlined;
    }
  }
}
