import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:frontend_easy/features/fleet/providers/routes_provider.dart';
import 'package:frontend_easy/features/fleet/providers/buses_provider.dart';
import 'package:frontend_easy/features/map/widgets/route_map_widget.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';

/// Map screen - displays live bus tracking map with search functionality
/// Real-time WebSocket updates for bus locations
class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  String? _selectedBusId;
  double? _selectedBusLat;
  double? _selectedBusLon;
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchBus(String busNumber, List buses) {
    if (busNumber.isEmpty) {
      setState(() {
        _selectedBusId = null;
        _selectedBusLat = null;
        _selectedBusLon = null;
      });
      return;
    }

    // Find bus by number
    final bus = buses.firstWhere(
      (b) => b.busNumber.toLowerCase().contains(busNumber.toLowerCase()),
      orElse: () => null,
    );

    if (bus != null) {
      setState(() {
        _selectedBusId = bus.id;
        _selectedBusLat = bus.currentLocation.latitude;
        _selectedBusLon = bus.currentLocation.longitude;
      });
    } else {
      // Show snackbar if bus not found
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Bus "$busNumber" not found'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Watch routes and buses data
    final routesAsync = ref.watch(routesProvider);
    final busesAsync = ref.watch(busesProvider);

    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 0),
          // Search bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
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
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search bus by number...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                setState(() {
                                  _selectedBusId = null;
                                  _selectedBusLat = null;
                                  _selectedBusLon = null;
                                });
                              },
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                    onSubmitted: (value) {
                      busesAsync.whenData((buses) {
                        _searchBus(value, buses);
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                FilledButton.icon(
                  onPressed: () {
                    busesAsync.whenData((buses) {
                      _searchBus(_searchController.text, buses);
                    });
                  },
                  icon: const Icon(Icons.search),
                  label: const Text('Search'),
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
                      routesAsync.when(
                        data: (routes) => busesAsync.when(
                          data: (buses) => RouteMapWidget(
                            routes: routes,
                            buses: buses,
                            selectedBusIds: _selectedBusId != null ? [_selectedBusId!] : [],
                            selectedBusLat: _selectedBusLat,
                            selectedBusLon: _selectedBusLon,
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
