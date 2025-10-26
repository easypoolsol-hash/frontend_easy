import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:frontend_easy/features/fleet/providers/routes_provider.dart';
import 'package:frontend_easy/features/fleet/providers/buses_provider.dart';
import 'package:frontend_easy/features/map/widgets/route_map_widget.dart';
import 'package:frontend_easy/features/fleet/models/map_mode.dart';
import 'package:frontend_easy/features/fleet/presentation/widgets/route_filter_panel.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';
import 'package:frontend_easy/shared/widgets/map_controls_widget.dart';

/// Map screen - displays live bus tracking map with controls and filters
/// Real-time WebSocket updates for bus locations
class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  MapMode _selectedMode = MapMode.overview;
  bool _showRoutes = true;
  bool _showStops = true;
  bool _showBuses = true;
  bool _showFilterPanel = false;
  String? _selectedBusId;
  double? _selectedBusLat;
  double? _selectedBusLon;

  @override
  Widget build(BuildContext context) {
    // Watch routes and buses data
    final routesAsync = ref.watch(routesProvider);
    final busesAsync = ref.watch(busesProvider);

    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 0),
          MapControlsWidget(
            selectedMode: _selectedMode,
            showRoutes: _showRoutes,
            showStops: _showStops,
            showBuses: _showBuses,
            showFilterPanel: _showFilterPanel,
            onModeChanged: (mode) => setState(() => _selectedMode = mode),
            onRoutesVisibilityChanged: (value) => setState(() => _showRoutes = value),
            onStopsVisibilityChanged: (value) => setState(() => _showStops = value),
            onBusesVisibilityChanged: (value) => setState(() => _showBuses = value),
            onFilterPanelToggle: (value) => setState(() => _showFilterPanel = value),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      routesAsync.when(
                        data: (routes) => busesAsync.when(
                          data: (buses) => RouteMapWidget(
                            routes: routes,
                            buses: buses,
                            mode: _selectedMode,
                            showRoutes: _showRoutes,
                            showStops: _showStops,
                            showBuses: _showBuses,
                            selectedBusIds: _selectedBusId != null ? [_selectedBusId!] : [],
                            onBusTapped: (busId, lat, lon) {
                              setState(() {
                                _selectedBusId = busId;
                                _selectedBusLat = lat;
                                _selectedBusLon = lon;
                              });
                            },
                          ),
                          loading: () => _buildLoadingIndicator(),
                          error: (error, stack) => _buildError('Failed to load buses: $error'),
                        ),
                        loading: () => _buildLoadingIndicator(),
                        error: (error, stack) => _buildError('Failed to load routes: $error'),
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
                            selectedBusIds: _selectedBusId != null ? [_selectedBusId!] : [],
                            onClose: () {
                              setState(() {
                                _showFilterPanel = false;
                              });
                            },
                            onVisibilityChanged: (showRoutes, showStops, showBuses) {
                              setState(() {
                                _showRoutes = showRoutes;
                                _showStops = showStops;
                                _showBuses = showBuses;
                              });
                            },
                            onBusSelected: (busIds) {
                              setState(() {
                                _selectedBusId = busIds.isEmpty ? null : busIds.first;
                              });
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('Loading map data...'),
        ],
      ),
    );
  }

  Widget _buildError(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: () {
              ref.invalidate(routesProvider);
              ref.invalidate(busesProvider);
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
