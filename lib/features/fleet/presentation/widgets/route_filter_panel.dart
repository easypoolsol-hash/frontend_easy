import 'package:flutter/material.dart';

import '../../models/map_mode.dart';

/// Filter and control panel for route visualization
/// Context-aware controls based on current map mode
class RouteFilterPanel extends StatefulWidget {
  final MapMode currentMode;
  final VoidCallback onClose;

  const RouteFilterPanel({
    super.key,
    required this.currentMode,
    required this.onClose,
  });

  @override
  State<RouteFilterPanel> createState() => _RouteFilterPanelState();
}

class _RouteFilterPanelState extends State<RouteFilterPanel> {
  bool _showRoutes = true;
  bool _showStops = true;
  bool _showBuses = true;
  bool _showWaypoints = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.tune,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Display Options',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: widget.onClose,
                  tooltip: 'Close',
                ),
              ],
            ),
          ),

          // Filter controls
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Mode-specific hint
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          widget.currentMode.description,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onSecondaryContainer,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Toggle controls
                Text(
                  'Visibility',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                SwitchListTile(
                  title: const Text('Show Routes'),
                  value: _showRoutes,
                  onChanged: (value) {
                    setState(() {
                      _showRoutes = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text('Show Bus Stops'),
                  value: _showStops,
                  onChanged: (value) {
                    setState(() {
                      _showStops = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text('Show Buses'),
                  value: _showBuses,
                  onChanged: (value) {
                    setState(() {
                      _showBuses = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text('Show Waypoints'),
                  subtitle: const Text('Detailed route paths'),
                  value: _showWaypoints,
                  onChanged: (value) {
                    setState(() {
                      _showWaypoints = value;
                    });
                  },
                ),

                const Divider(height: 32),

                // Quick actions
                Text(
                  'Quick Actions',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                OutlinedButton.icon(
                  onPressed: () {
                    // TODO: Show all active routes
                  },
                  icon: const Icon(Icons.visibility),
                  label: const Text('Show All Active'),
                ),
                const SizedBox(height: 8),
                OutlinedButton.icon(
                  onPressed: () {
                    // TODO: Hide all
                  },
                  icon: const Icon(Icons.visibility_off),
                  label: const Text('Hide All'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
