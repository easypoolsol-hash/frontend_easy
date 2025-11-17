import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;

import 'package:frontend_easy/features/fleet/controllers/routes_controller.dart';
import 'package:frontend_easy/features/fleet/providers/buses_provider.dart';
import 'package:frontend_easy/features/map/widgets/route_map_widget.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';
import 'package:frontend_easy/shared/widgets/bus_selector_widget.dart';
import 'package:frontend_easy/shared/utils/error_handler.dart';

/// Main screen for route and fleet visualization
/// Displays interactive map with bus search functionality
class RouteMapScreen extends ConsumerStatefulWidget {
  /// Creates the route map screen
  const RouteMapScreen({super.key});

  @override
  ConsumerState<RouteMapScreen> createState() => _RouteMapScreenState();
}

class _RouteMapScreenState extends ConsumerState<RouteMapScreen> {
  String? _selectedBusId;

  void _selectBus(api.Bus? bus) {
    setState(() {
      _selectedBusId = bus?.busId;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Watch routes and buses data
    final routesAsync = ref.watch(routesControllerProvider);
    final busesAsync = ref.watch(busesProvider);

    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 2),
          // Search bar with autocomplete (right-aligned, compact)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                const Spacer(),
                busesAsync.when(
                  data: (buses) => BusSelectorWidget(
                    buses: buses,
                    onBusSelected: _selectBus,
                    width: 350,
                    labelText: 'Search Bus',
                    hintText: 'Search bus...',
                    showRouteInfo: true,
                  ),
                  loading: () => const SizedBox(
                    width: 350,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: 'Loading buses...',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                    ),
                  ),
                  error: (error, stack) => const SizedBox(
                    width: 350,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: 'Error loading buses',
                        prefixIcon: Icon(Icons.error),
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                                selectedBusIds: _selectedBusId != null ? [_selectedBusId!] : [],
                                onBusTapped: (busId, lat, lon) {
                                  setState(() {
                                    _selectedBusId = busId;
                                  });
                                },
                              );
                            },
                            loading: () => _buildLoadingIndicator(),
                            error: (error, stack) => _buildError(error, 'buses'),
                          );
                        },
                        loading: () => _buildLoadingIndicator(),
                        error: (error, stack) => _buildError(error, 'map data'),
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

  Widget _buildError(dynamic error, String resourceName) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.cloud_off_outlined,
            size: 64,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          Text(
            'Unable to load $resourceName',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            ErrorHandler.getUserFriendlyMessage(error),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {
              ref.invalidate(routesControllerProvider);
              ref.invalidate(busesProvider);
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Try Again'),
          ),
        ],
      ),
    );
  }
}


