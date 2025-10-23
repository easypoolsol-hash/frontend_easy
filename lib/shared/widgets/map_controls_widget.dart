import 'package:flutter/material.dart';

import 'package:frontend_easy/features/fleet/models/map_mode.dart';
import 'package:frontend_easy/features/fleet/presentation/widgets/map_mode_selector.dart';

/// Reusable map controls widget
/// Handles map mode selection and visibility filters
/// Follows Single Responsibility Principle - only manages map controls
class MapControlsWidget extends StatefulWidget {
  final MapMode selectedMode;
  final bool showRoutes;
  final bool showStops;
  final bool showBuses;
  final bool showFilterPanel;
  final ValueChanged<MapMode> onModeChanged;
  final ValueChanged<bool> onRoutesVisibilityChanged;
  final ValueChanged<bool> onStopsVisibilityChanged;
  final ValueChanged<bool> onBusesVisibilityChanged;
  final ValueChanged<bool>? onFilterPanelToggle;

  const MapControlsWidget({
    super.key,
    required this.selectedMode,
    required this.showRoutes,
    required this.showStops,
    required this.showBuses,
    this.showFilterPanel = false,
    required this.onModeChanged,
    required this.onRoutesVisibilityChanged,
    required this.onStopsVisibilityChanged,
    required this.onBusesVisibilityChanged,
    this.onFilterPanelToggle,
  });

  @override
  State<MapControlsWidget> createState() => _MapControlsWidgetState();
}

class _MapControlsWidgetState extends State<MapControlsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          // Mode selector
          Expanded(
            child: MapModeSelector(
              selectedMode: widget.selectedMode,
              onModeChanged: widget.onModeChanged,
            ),
          ),
          // Quick filter toggles
          const SizedBox(width: 16),
          _buildQuickFilter('Routes', widget.showRoutes, widget.onRoutesVisibilityChanged),
          const SizedBox(width: 8),
          _buildQuickFilter('Stops', widget.showStops, widget.onStopsVisibilityChanged),
          const SizedBox(width: 8),
          _buildQuickFilter('Buses', widget.showBuses, widget.onBusesVisibilityChanged),
          // Filter panel toggle (optional)
          if (widget.onFilterPanelToggle != null) ...[
            const SizedBox(width: 8),
            IconButton(
              icon: Icon(widget.showFilterPanel ? Icons.filter_alt : Icons.filter_alt_outlined),
              tooltip: 'Advanced filters',
              onPressed: () => widget.onFilterPanelToggle!(!widget.showFilterPanel),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuickFilter(String label, bool value, ValueChanged<bool> onChanged) {
    return FilterChip(
      label: Text(label),
      selected: value,
      onSelected: onChanged,
      showCheckmark: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      selectedColor: Theme.of(context).colorScheme.primaryContainer,
      checkmarkColor: Theme.of(context).colorScheme.primary,
    );
  }
}
