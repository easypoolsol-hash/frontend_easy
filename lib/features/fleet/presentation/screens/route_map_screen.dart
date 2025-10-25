import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:frontend_easy/features/fleet/models/map_mode.dart';
import 'package:frontend_easy/features/fleet/presentation/widgets/route_filter_panel.dart';
import 'package:frontend_easy/features/fleet/providers/routes_provider.dart';
import 'package:frontend_easy/features/fleet/providers/buses_provider.dart';
import 'package:frontend_easy/features/map/widgets/route_map_widget.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';
import 'package:frontend_easy/shared/widgets/map_controls_widget.dart';

/// Main screen for route and fleet visualization
/// Displays interactive map with multiple view modes
class RouteMapScreen extends ConsumerStatefulWidget {
  /// Creates the route map screen
  const RouteMapScreen({super.key});

  @override
  ConsumerState<RouteMapScreen> createState() => _RouteMapScreenState();
}

class _RouteMapScreenState extends ConsumerState<RouteMapScreen> {
  MapMode _selectedMode = MapMode.overview;
  bool _showFilterPanel = false;
  bool _showRoutes = true;
  bool _showStops = true;
  bool _showBuses = true;
  String? _selectedBusId;
  int _focusTrigger = 0;

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
                      // Map view with data
                      routesAsync.when(
                        data: (routes) {
                          return busesAsync.when(
                            data: (buses) {
                              return RouteMapWidget(
                                routes: routes,
                                buses: buses,
                                mode: _selectedMode,
                                showRoutes: _showRoutes,
                                showStops: _showStops,
                                showBuses: _showBuses,
                                selectedBusId: _selectedBusId,
                                focusTrigger: _focusTrigger,
                                onBusTapped: (busId, lat, lon) {
                                  setState(() {
                                    _selectedBusId = busId;
                                  });
                                },
                              );
                            },
                            loading: () => _buildLoadingIndicator(),
                            error: (error, stack) => _buildError('Failed to load buses: $error'),
                          );
                        },
                        loading: () => _buildLoadingIndicator(),
                        error: (error, stack) => _buildError('Failed to load routes: $error'),
                      ),

                      // Filter panel (right side) - unique to RouteMapScreen
                      if (_showFilterPanel)
                        Positioned(
                          top: 0,
                          right: 0,
                          bottom: 0,
                          width: 320,
                          child: RouteFilterPanel(
                            currentMode: _selectedMode,
                            selectedBusId: _selectedBusId,
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
                            onBusSelected: (busId) {
                              setState(() {
                                _selectedBusId = busId;
                              });
                            },
                            onFocusBusRequested: () {
                              // Trigger focus by incrementing the counter
                              setState(() {
                                _focusTrigger++;
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(
            'Loading map data...',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildError(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge,
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


