import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:intl/intl.dart';

import 'package:frontend_easy/features/fleet/controllers/routes_controller.dart';
import 'package:frontend_easy/features/fleet/providers/buses_provider.dart';
import 'package:frontend_easy/features/fleet/providers/bus_history_provider.dart';
import 'package:frontend_easy/features/map/widgets/route_map_widget.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';
import 'package:frontend_easy/shared/utils/error_handler.dart';
import 'package:frontend_easy/core/widgets/status_banner.dart';

/// Map screen - displays live bus tracking map with search functionality
/// Real-time WebSocket updates for bus locations
class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  String? _selectedBusId;
  bool _isHistoryMode = false;
  DateTime? _selectedDate;
  String? _selectedHistoryBusId;

  void _selectBus(api.Bus? bus) {
    setState(() {
      _selectedBusId = bus?.busId;
    });
  }

  void _toggleHistoryMode() {
    setState(() {
      _isHistoryMode = !_isHistoryMode;
      if (!_isHistoryMode) {
        // Clear history when switching to live mode
        ref.read(busHistoryProvider.notifier).clearHistory();
        _selectedDate = null;
        _selectedHistoryBusId = null;
      } else {
        // Set default date to today when entering history mode
        _selectedDate = DateTime.now();
      }
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final now = DateTime.now();
    final firstDate = now.subtract(const Duration(days: 7));

    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: firstDate,
      lastDate: now,
      helpText: 'Select Date for History Playback',
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });

      // Auto-fetch history if bus is selected
      if (_selectedHistoryBusId != null) {
        ref.read(busHistoryProvider.notifier).fetchHistory(_selectedHistoryBusId!, picked);
      }
    }
  }

  void _selectHistoryBus(String? busNumber) {
    setState(() {
      _selectedHistoryBusId = busNumber;
    });

    // Auto-fetch history if date is selected
    if (busNumber != null && _selectedDate != null) {
      ref.read(busHistoryProvider.notifier).fetchHistory(busNumber, _selectedDate!);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Watch routes and buses data
    final routesAsync = ref.watch(routesControllerProvider);
    final busesAsync = ref.watch(busesProvider);

    // Debug logging
    if (kDebugMode) {
      print('[MapScreen] Building widget, _isHistoryMode: $_isHistoryMode');
      busesAsync.when(
        data: (buses) => print('[MapScreen] busesAsync has ${buses.length} buses'),
        loading: () => print('[MapScreen] busesAsync is loading...'),
        error: (e, s) => print('[MapScreen] busesAsync error: $e'),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 0),
          // System health status banner (shows when backend is down)
          const StatusBanner(),
          // Search bar with autocomplete and history mode toggle
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
                // History mode toggle
                SegmentedButton<bool>(
                  segments: const [
                    ButtonSegment(value: false, label: Text('Live'), icon: Icon(Icons.location_on, size: 16)),
                    ButtonSegment(value: true, label: Text('History'), icon: Icon(Icons.history, size: 16)),
                  ],
                  selected: {_isHistoryMode},
                  onSelectionChanged: (Set<bool> selected) {
                    _toggleHistoryMode();
                  },
                ),
                const SizedBox(width: 16),
                // History mode controls
                if (_isHistoryMode) ...[
                  // Date picker button
                  OutlinedButton.icon(
                    onPressed: () => _selectDate(context),
                    icon: const Icon(Icons.calendar_today, size: 16),
                    label: Text(
                      _selectedDate != null ? DateFormat('MMM dd, yyyy').format(_selectedDate!) : 'Select Date',
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Bus selector dropdown
                  SizedBox(
                    width: 300,
                    child: busesAsync.when(
                      data: (buses) {
                        if (kDebugMode) {
                          print('[MapScreen] Dropdown rendering with ${buses.length} buses');
                          print('[MapScreen] Selected bus: $_selectedHistoryBusId');
                        }

                        if (buses.isEmpty) {
                          if (kDebugMode) {
                            print('[MapScreen] Dropdown showing "No buses available"');
                          }
                          return const TextField(
                            enabled: false,
                            decoration: InputDecoration(
                              labelText: 'No buses available',
                              border: OutlineInputBorder(),
                              isDense: true,
                              prefixIcon: Icon(Icons.directions_bus, size: 20),
                            ),
                          );
                        }

                        if (kDebugMode) {
                          print('[MapScreen] Dropdown showing ${buses.length} buses');
                        }

                        return DropdownButtonFormField<String>(
                          value: _selectedHistoryBusId,
                          decoration: const InputDecoration(
                            labelText: 'Select Bus',
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            prefixIcon: Icon(Icons.directions_bus, size: 20),
                          ),
                          items: buses.map((bus) {
                            return DropdownMenuItem<String>(
                              value: bus.busNumber,
                              child: Text('${bus.busNumber} - ${bus.licensePlate}'),
                            );
                          }).toList(),
                          onChanged: (busNumber) => _selectHistoryBus(busNumber),
                        );
                      },
                      loading: () => const TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Loading buses...',
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                      ),
                      error: (error, stack) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            enabled: false,
                            decoration: InputDecoration(
                              labelText: 'Error loading buses',
                              border: const OutlineInputBorder(),
                              isDense: true,
                              errorText: error.toString(),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'API Error: ${error.toString()}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                const Spacer(),
                // Live mode search (only show in live mode)
                if (!_isHistoryMode)
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
                           (bus.routeName?.toLowerCase().contains(searchText) ?? false) ||
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
                              subtitle: Text('${bus.licensePlate}${bus.routeName != null ? ' • Route: ${bus.routeName}' : ''}', style: const TextStyle(fontSize: 12)),
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
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      routesAsync.when(
                              data: (routes) {
                                return busesAsync.when(
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
                                  error: (error, stack) => RouteMapWidget(
                                    routes: routes,
                                    buses: const [], // Empty buses with routes still visible
                                    selectedBusIds: const [],
                                    onBusTapped: (busId, lat, lon) {},
                                  ),
                                );
                              },
                              loading: () => _buildLoadingIndicator(),
                              error: (error, stack) => busesAsync.when(
                                data: (buses) => RouteMapWidget(
                                  routes: const [], // Empty routes with buses still visible
                                  buses: buses,
                                  selectedBusIds: const [],
                                  onBusTapped: (busId, lat, lon) {},
                                ),
                                loading: () => _buildLoadingIndicator(),
                                error: (error, stack) => RouteMapWidget(
                                  routes: const [], // Both empty - show empty map
                                  buses: const [],
                                  selectedBusIds: const [],
                                  onBusTapped: (busId, lat, lon) {},
                                ),
                              ),
                            ),
                      // Historical bus location overlay (only in history mode)
                      if (_isHistoryMode) _buildHistoricalBusOverlay(),
                    ],
                  ),
                ),
                // History playback slider (only show in history mode)
                if (_isHistoryMode) _buildHistorySlider(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHistorySlider() {
    final historyState = ref.watch(busHistoryProvider);

    if (historyState.isLoading) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
        ),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (historyState.error != null) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.errorContainer,
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.error,
              width: 2,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                'Error: ${historyState.error}',
                style: TextStyle(color: Theme.of(context).colorScheme.onErrorContainer),
              ),
            ),
          ],
        ),
      );
    }

    if (historyState.locations.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
        ),
        child: const Center(
          child: Text('No location data available for selected bus and date'),
        ),
      );
    }

    // We have location data - show the slider
    final timeRange = historyState.timeRange;
    if (timeRange == null) {
      return const SizedBox.shrink();
    }

    final currentTimestamp = historyState.currentTimestamp ?? timeRange.start;
    final totalSeconds = timeRange.duration.inSeconds.toDouble();
    final currentSeconds = currentTimestamp.difference(timeRange.start).inSeconds.toDouble();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Time display
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('HH:mm:ss').format(timeRange.start),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                DateFormat('HH:mm:ss').format(currentTimestamp),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                DateFormat('HH:mm:ss').format(timeRange.end),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Slider
          Slider(
            value: currentSeconds.clamp(0, totalSeconds),
            min: 0,
            max: totalSeconds > 0 ? totalSeconds : 1,
            divisions: totalSeconds > 0 ? (totalSeconds / 30).ceil() : 1, // 30-second intervals
            label: DateFormat('HH:mm:ss').format(currentTimestamp),
            onChanged: (value) {
              final newTimestamp = timeRange.start.add(Duration(seconds: value.toInt()));
              ref.read(busHistoryProvider.notifier).setTimestamp(newTimestamp);
            },
          ),
          // Location info
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 16, color: Theme.of(context).colorScheme.onSurfaceVariant),
              const SizedBox(width: 4),
              Text(
                'Point ${historyState.currentIndex + 1} of ${historyState.locations.length}',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              if (historyState.currentLocation?['properties']?['speed'] != null) ...[
                const SizedBox(width: 16),
                Icon(Icons.speed, size: 16, color: Theme.of(context).colorScheme.onSurfaceVariant),
                const SizedBox(width: 4),
                Text(
                  '${historyState.currentLocation!['properties']['speed']?.toStringAsFixed(1) ?? '0'} km/h',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHistoricalBusOverlay() {
    final historyState = ref.watch(busHistoryProvider);

    // Only show if we have a current location
    final currentLocation = historyState.currentLocation;
    if (currentLocation == null) {
      return const SizedBox.shrink();
    }

    // Extract coordinates from GeoJSON
    try {
      final geometry = currentLocation['geometry'] as Map<String, dynamic>?;
      final coordinates = geometry?['coordinates'] as List<dynamic>?;
      final properties = currentLocation['properties'] as Map<String, dynamic>?;

      if (coordinates == null || coordinates.length < 2) {
        return const SizedBox.shrink();
      }

      final busNumber = properties?['bus_number'] as String? ?? 'Bus';
      final busName = properties?['bus_name'] as String? ?? '';
      final speed = properties?['speed'] as num?;

      return Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(bottom: 100),
          decoration: BoxDecoration(
            color: Colors.orange.withValues(alpha: 0.95),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.history, color: Colors.white, size: 24),
                  const SizedBox(width: 8),
                  Text(
                    'HISTORY PLAYBACK',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.directions_bus, color: Colors.white, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    '$busNumber - $busName',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              if (speed != null) ...[
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.speed, color: Colors.white70, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '${speed.toStringAsFixed(1)} km/h',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.info_outline, color: Colors.white, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          'Historical Position',
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.my_location, color: Colors.white70, size: 12),
                        const SizedBox(width: 4),
                        Text(
                          'Lat: ${(coordinates[1] as num).toStringAsFixed(4)}, Lon: ${(coordinates[0] as num).toStringAsFixed(4)}',
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Colors.white70,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } catch (e) {
      return const SizedBox.shrink();
    }
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
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            ErrorHandler.getUserFriendlyMessage(error),
            style: const TextStyle(color: Colors.grey),
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
