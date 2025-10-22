import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/map_mode.dart';
import '../widgets/map_mode_selector.dart';
import '../widgets/route_filter_panel.dart';

/// Main screen for route and fleet visualization
/// Displays interactive map with multiple view modes
class RouteMapScreen extends ConsumerStatefulWidget {
  const RouteMapScreen({super.key});

  @override
  ConsumerState<RouteMapScreen> createState() => _RouteMapScreenState();
}

class _RouteMapScreenState extends ConsumerState<RouteMapScreen> {
  MapMode _selectedMode = MapMode.overview;
  bool _showFilterPanel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fleet Management'),
        actions: [
          // Search button
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search routes and stops',
            onPressed: () {
              // TODO: Implement search
            },
          ),
          // Filter toggle
          IconButton(
            icon: Icon(_showFilterPanel ? Icons.filter_alt : Icons.filter_alt_outlined),
            tooltip: 'Filter options',
            onPressed: () {
              setState(() {
                _showFilterPanel = !_showFilterPanel;
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Map view (placeholder for now)
          Container(
            color: Theme.of(context).colorScheme.surfaceContainerLowest,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map_outlined,
                    size: 64,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Map will render here',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Mode: ${_selectedMode.displayName}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),

          // Mode selector (top center)
          Positioned(
            top: 16,
            left: 0,
            right: 0,
            child: Center(
              child: MapModeSelector(
                selectedMode: _selectedMode,
                onModeChanged: (mode) {
                  setState(() {
                    _selectedMode = mode;
                  });
                },
              ),
            ),
          ),

          // Filter panel (right side)
          if (_showFilterPanel)
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              width: 320,
              child: RouteFilterPanel(
                currentMode: _selectedMode,
                onClose: () {
                  setState(() {
                    _showFilterPanel = false;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}
