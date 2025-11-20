import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:intl/intl.dart';

import 'package:frontend_easy/features/fleet/controllers/routes_controller.dart';
import 'package:frontend_easy/features/fleet/providers/buses_provider.dart';
import 'package:frontend_easy/features/fleet/providers/bus_history_provider.dart';
import 'package:frontend_easy/features/map/widgets/route_map_widget.dart';
import 'package:frontend_easy/features/map/widgets/timeline_slider_with_gaps.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';
import 'package:frontend_easy/shared/widgets/bus_selector_widget.dart';
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
  List<String> _selectedHistoryBusIds = []; // Support multiple buses in history

  // Playback controls
  bool _isPlaying = false;
  double _playbackSpeed = 1.0; // 0.5x, 1x, 2x, 4x, 6x
  Timer? _playbackTimer;
  bool _showTrail = true; // Trail enabled by default
  bool _showGpsPointsOnly = false; // Toggle between timeline and GPS points only

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
        _selectedHistoryBusIds = [];
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

      // Auto-fetch history if buses are selected
      if (_selectedHistoryBusIds.isNotEmpty) {
        // For now, fetch first bus - TODO: support multiple
        ref.read(busHistoryProvider.notifier).fetchHistory(_selectedHistoryBusIds.first, picked);
      }
    }
  }

  void _toggleHistoryBus(api.Bus bus) {
    setState(() {
      if (_selectedHistoryBusIds.contains(bus.busId)) {
        _selectedHistoryBusIds.remove(bus.busId);
      } else {
        _selectedHistoryBusIds.add(bus.busId);
      }
    });

    // Auto-fetch history for first selected bus if date is selected
    if (_selectedHistoryBusIds.isNotEmpty && _selectedDate != null) {
      ref.read(busHistoryProvider.notifier).fetchHistory(_selectedHistoryBusIds.first, _selectedDate!);
    } else if (_selectedHistoryBusIds.isEmpty) {
      ref.read(busHistoryProvider.notifier).clearHistory();
    }
  }

  void _togglePlayback() {
    setState(() {
      _isPlaying = !_isPlaying;
    });

    if (_isPlaying) {
      _startPlayback();
    } else {
      _stopPlayback();
    }
  }

  void _startPlayback() {
    final historyState = ref.read(busHistoryProvider);
    if (historyState.locations.isEmpty) return;

    _playbackTimer = Timer.periodic(Duration(milliseconds: (1000 / _playbackSpeed).round()), (timer) {
      final historyState = ref.read(busHistoryProvider);
      int nextIndex = historyState.currentIndex + 1;

      if (nextIndex >= historyState.locations.length) {
        // Reached end, stop playback
        _stopPlayback();
        setState(() {
          _isPlaying = false;
        });
      } else {
        // If GPS points only mode, skip to next valid GPS point
        if (_showGpsPointsOnly) {
          // Simply advance to next point (all points in the data are GPS points)
          // The slider will handle displaying only GPS-based timeline
          ref.read(busHistoryProvider.notifier).setIndex(nextIndex);
        } else {
          // Normal mode - advance through all points
          ref.read(busHistoryProvider.notifier).setIndex(nextIndex);
        }
      }
    });
  }

  void _stopPlayback() {
    _playbackTimer?.cancel();
    _playbackTimer = null;
  }

  @override
  void dispose() {
    _stopPlayback();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Watch routes and buses data
    final routesAsync = ref.watch(routesControllerProvider);
    final busesAsync = ref.watch(busesProvider);

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
                  // Multi-select bus selector for history mode
                  busesAsync.when(
                    data: (buses) => Row(
                      children: [
                        BusSelectorWidget(
                          buses: buses,
                          onBusSelected: (bus) {
                            if (bus != null) _toggleHistoryBus(bus);
                          },
                          width: 300,
                          labelText: 'Add Bus to History',
                          hintText: 'Search by bus number, license plate, or route',
                          showRouteInfo: true,
                        ),
                        if (_selectedHistoryBusIds.isNotEmpty) ...[
                          const SizedBox(width: 8),
                          Text('${_selectedHistoryBusIds.length} selected',
                            style: Theme.of(context).textTheme.labelSmall),
                        ],
                      ],
                    ),
                    loading: () => const SizedBox(
                      width: 300,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Loading buses...',
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                      ),
                    ),
                    error: (error, stack) => SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                labelText: 'Error loading buses',
                                prefixIcon: const Icon(Icons.error, color: Colors.red),
                                border: const OutlineInputBorder(),
                                isDense: true,
                                errorText: error.toString().length > 50
                                    ? '${error.toString().substring(0, 50)}...'
                                    : error.toString(),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            onPressed: () => ref.invalidate(busesProvider),
                            icon: const Icon(Icons.refresh),
                            tooltip: 'Retry',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Show selected buses as chips
                  if (_selectedHistoryBusIds.isNotEmpty)
                    busesAsync.maybeWhen(
                      data: (buses) => Expanded(
                        child: Wrap(
                          spacing: 4,
                          runSpacing: 4,
                          children: _selectedHistoryBusIds.map((busId) {
                            final bus = buses.firstWhere((b) => b.busId == busId);
                            return Chip(
                              label: Text(bus.busNumber, style: const TextStyle(fontSize: 12)),
                              deleteIcon: const Icon(Icons.close, size: 16),
                              onDeleted: () => _toggleHistoryBus(bus),
                              visualDensity: VisualDensity.compact,
                            );
                          }).toList(),
                        ),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
                ],
                const Spacer(),
                // Live mode bus selector (only show in live mode)
                if (!_isHistoryMode)
                busesAsync.when(
                  data: (buses) => BusSelectorWidget(
                    buses: buses,
                    onBusSelected: _selectBus,
                    width: 300,
                    labelText: 'Search Bus',
                    hintText: 'Search by bus number, license plate, or route',
                    showRouteInfo: true,
                  ),
                  loading: () => const SizedBox(
                    width: 300,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        labelText: 'Loading buses...',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                    ),
                  ),
                  error: (error, stack) => SizedBox(
                    width: 300,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            enabled: false,
                            decoration: InputDecoration(
                              labelText: 'Error loading buses',
                              prefixIcon: const Icon(Icons.error, color: Colors.red),
                              border: const OutlineInputBorder(),
                              isDense: true,
                              errorText: error.toString().length > 50
                                  ? '${error.toString().substring(0, 50)}...'
                                  : error.toString(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          onPressed: () => ref.invalidate(busesProvider),
                          icon: const Icon(Icons.refresh),
                          tooltip: 'Retry',
                        ),
                      ],
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
                      // Always show map immediately with whatever data is available
                      RouteMapWidget(
                        routes: routesAsync.maybeWhen(
                          data: (routes) => routes,
                          orElse: () => const [],
                        ),
                        buses: busesAsync.maybeWhen(
                          data: (buses) => buses,
                          orElse: () => const [],
                        ),
                        selectedBusIds: _selectedBusId != null ? [_selectedBusId!] : [],
                        historyMode: _isHistoryMode,
                        historicalLocation: _isHistoryMode ? _getHistoricalBusLocation() : null,
                        historicalLocations: _isHistoryMode && _showTrail ? ref.watch(busHistoryProvider).locations : null,
                        historicalCurrentIndex: _isHistoryMode && _showTrail ? ref.watch(busHistoryProvider).currentIndex : null,
                        onBusTapped: (busId, lat, lon) {
                          setState(() {
                            _selectedBusId = busId;
                          });
                        },
                      ),
                      // Show loading indicator overlay only while initially loading
                      if (routesAsync.isLoading && busesAsync.isLoading)
                        Container(
                          color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const CircularProgressIndicator(),
                                const SizedBox(height: 16),
                                Text(
                                  'Loading map...',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
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
          // Bus info header
          if (historyState.currentLocation != null) ...[
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.history, color: Colors.white, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        'HISTORY PLAYBACK',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Icon(Icons.directions_bus, size: 18, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 4),
                Flexible(
                  child: Text(
                    () {
                      final properties = historyState.currentLocation!['properties'];
                      final busNumber = properties?['bus_number'] ?? 'Bus';
                      final routeName = properties?['route_name'];
                      return routeName != null ? '$busNumber • $routeName' : busNumber;
                    }(),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
                // Playback controls
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Speed control
                    PopupMenuButton<double>(
                      initialValue: _playbackSpeed,
                      icon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.speed, size: 16, color: Theme.of(context).colorScheme.onSurface),
                          const SizedBox(width: 4),
                          Text(
                            '${_playbackSpeed.toStringAsFixed(1)}x',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                      onSelected: (speed) {
                        setState(() {
                          _playbackSpeed = speed;
                        });
                        if (_isPlaying) {
                          _stopPlayback();
                          _startPlayback();
                        }
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem(value: 0.5, child: Text('0.5x')),
                        const PopupMenuItem(value: 1.0, child: Text('1x')),
                        const PopupMenuItem(value: 2.0, child: Text('2x')),
                        const PopupMenuItem(value: 4.0, child: Text('4x')),
                        const PopupMenuItem(value: 6.0, child: Text('6x')),
                      ],
                    ),
                    const SizedBox(width: 8),
                    // Trail toggle
                    Tooltip(
                      message: 'Show trail',
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _showTrail = !_showTrail;
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: _showTrail,
                              onChanged: (value) {
                                setState(() {
                                  _showTrail = value ?? true;
                                });
                              },
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                            ),
                            Text(
                              'Trail',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // GPS points only toggle
                    Tooltip(
                      message: 'Points Mode: Remove time gaps, show only GPS data points',
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _showGpsPointsOnly = !_showGpsPointsOnly;
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: _showGpsPointsOnly,
                              onChanged: (value) {
                                setState(() {
                                  _showGpsPointsOnly = value ?? false;
                                });
                              },
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                            ),
                            Text(
                              'Points Mode',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Play/Pause button
                    IconButton(
                      onPressed: _togglePlayback,
                      icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                      tooltip: _isPlaying ? 'Pause' : 'Play',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
          ],
          // Timeline slider with gap visualization
          TimelineSliderWithGaps(
            locations: historyState.locations,
            startTime: timeRange.start,
            endTime: timeRange.end,
            currentTimestamp: currentTimestamp,
            onChanged: (timestamp) {
              ref.read(busHistoryProvider.notifier).setTimestamp(timestamp);
            },
            dataColor: Theme.of(context).colorScheme.primary,
            gapColor: Colors.grey.shade200, // Light grey for gaps
            minimumGapDuration: const Duration(minutes: 3),
            showGpsPointsOnly: _showGpsPointsOnly,
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

  /// Get historical bus location for map marker
  Map<String, dynamic>? _getHistoricalBusLocation() {
    final historyState = ref.watch(busHistoryProvider);
    final currentLocation = historyState.currentLocation;

    if (currentLocation == null) return null;

    try {
      final geometry = currentLocation['geometry'] as Map<String, dynamic>?;
      final coordinates = geometry?['coordinates'] as List<dynamic>?;

      if (coordinates == null || coordinates.length < 2) return null;

      return {
        'latitude': coordinates[1] as double,
        'longitude': coordinates[0] as double,
        'busId': historyState.selectedBusId ?? '',
      };
    } catch (e) {
      return null;
    }
  }
}
