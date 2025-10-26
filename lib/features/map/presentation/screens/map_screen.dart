import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;

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

  void _selectBus(api.Bus? bus) {
    setState(() {
      _selectedBusId = bus?.busId;
    });
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
                SizedBox(
                  width: 350,
                  child: busesAsync.when(
              data: (buses) => Autocomplete<api.Bus>(
                displayStringForOption: (bus) => '${bus.busNumber} - ${bus.licensePlate}',
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text.isEmpty) {
                    return const Iterable<api.Bus>.empty();
                  }
                  final searchText = textEditingValue.text.toLowerCase();
                  return buses.where((bus) {
                    // Smart search: matches bus number, license plate, route name, or bus ID
                    // Also shows all buses if searching by route name
                    return bus.busNumber.toLowerCase().contains(searchText) ||
                           bus.licensePlate.toLowerCase().contains(searchText) ||
                           bus.routeName.toLowerCase().contains(searchText) ||
                           bus.busId.toLowerCase().contains(searchText) ||
                           (bus.route?.toLowerCase().contains(searchText) ?? false);
                  });
                },
                onSelected: (api.Bus bus) {
                  _selectBus(bus);
                },
                fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
                  return TextField(
                    controller: controller,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      hintText: 'Search bus...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: controller.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                controller.clear();
                                _selectBus(null);
                              },
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    ),
                  );
                },
                optionsViewBuilder: (context, onSelected, options) {
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      elevation: 4.0,
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 200, maxWidth: 300),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: options.length,
                          itemBuilder: (BuildContext context, int index) {
                            final api.Bus bus = options.elementAt(index);
                            return ListTile(
                              dense: true,
                              leading: const Icon(Icons.directions_bus, size: 20),
                              title: Text('Bus ${bus.busNumber}', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                              subtitle: Text('${bus.licensePlate} • Route: ${bus.routeName}', style: const TextStyle(fontSize: 12)),
                              onTap: () {
                                onSelected(bus);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
              loading: () => const TextField(
                enabled: false,
                decoration: InputDecoration(
                  hintText: 'Loading buses...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
              error: (error, stack) => const TextField(
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
                      routesAsync.when(
                        data: (routes) => busesAsync.when(
                          data: (buses) => RouteMapWidget(
                            routes: routes,
                            buses: buses,
                            selectedBusIds: _selectedBusId != null ? [_selectedBusId!] : [],
                            onBusTapped: (busId, lat, lon) {
                              setState(() {
                                _selectedBusId = busId;
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
