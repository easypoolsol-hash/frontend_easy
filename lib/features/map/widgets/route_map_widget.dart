import 'dart:ui' as ui;

import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'package:frontend_easy/features/map/widgets/maps_config.dart';
import 'package:frontend_easy/core/theme/bus_marker_colors.dart';
import 'package:frontend_easy/features/fleet/providers/bus_locations_provider.dart';

/// Interactive map widget for route visualization
/// Renders routes, stops, and buses
class RouteMapWidget extends ConsumerStatefulWidget {
  /// List of routes to display
  final List<api.Route> routes;

  /// List of buses to display
  final List<api.Bus> buses;

  /// Selected bus IDs to focus on (empty = show all buses)
  final List<String> selectedBusIds;

  /// Callback when bus marker is tapped
  final void Function(String busId, double lat, double lon)? onBusTapped;

  /// Creates a route map widget
  const RouteMapWidget({
    required this.routes,
    required this.buses,
    this.selectedBusIds = const [],
    this.onBusTapped,
    super.key,
  });

  @override
  ConsumerState<RouteMapWidget> createState() => _RouteMapWidgetState();
}

class _RouteMapWidgetState extends ConsumerState<RouteMapWidget> {
  GoogleMapController? _mapController;
  CameraPosition _initialCamera() => const CameraPosition(
        target: LatLng(HomeLocation.latitude, HomeLocation.longitude),
        zoom: 12.0,
      );


  // Cache for dynamically colored bus markers - 2025 BEST PRACTICE
  // Map<Color, BitmapDescriptor> to cache markers by color
  final Map<String, BitmapDescriptor> _markerCache = {};

  @override
  void initState() {
    super.initState();
    _preloadCommonMarkerColors();
  }

  /// Preload common bus marker colors to avoid async loading delays
  Future<void> _preloadCommonMarkerColors() async {
    // Preload the most common marker colors
    await Future.wait([
      _getColoredBusMarker(BusMarkerColors.active),
      _getColoredBusMarker(BusMarkerColors.inactive),
      _getColoredBusMarker(BusMarkerColors.selected),
      _getColoredBusMarker(BusMarkerColors.warning),
      _getColoredBusMarker(BusMarkerColors.error),
      _getColoredBusMarker(BusMarkerColors.stale),
      _getColoredBusMarker(BusMarkerColors.veryStale),
    ]);

    if (mounted) {
      setState(() {}); // Trigger rebuild with preloaded markers
    }
  }

  /// Create colored bus marker - Simple Google Maps style dot
  /// Uses cached markers to avoid regenerating same color multiple times
  Future<BitmapDescriptor> _getColoredBusMarker(Color color) async {
    final colorKey = color.toARGB32().toString();

    // Return cached marker if already created
    if (_markerCache.containsKey(colorKey)) {
      return _markerCache[colorKey]!;
    }

    try {
      // Create a simple colored dot marker (Google Maps style)
      final recorder = ui.PictureRecorder();
      final canvas = Canvas(recorder);

      // Draw outer white circle (border)
      final outerPaint = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.fill;
      canvas.drawCircle(const Offset(24, 24), 16, outerPaint);

      // Draw inner colored circle
      final innerPaint = Paint()
        ..color = color
        ..style = PaintingStyle.fill;
      canvas.drawCircle(const Offset(24, 24), 12, innerPaint);

      final picture = recorder.endRecording();
      final image = await picture.toImage(48, 48);
      final bytes = await image.toByteData(format: ui.ImageByteFormat.png);

      final descriptor = BitmapDescriptor.bytes(bytes!.buffer.asUint8List());

      // Cache for reuse
      _markerCache[colorKey] = descriptor;

      return descriptor;
    } catch (e) {
      debugPrint('Failed to create colored bus marker: $e');
      // Fallback to default marker with hue based on color
      return BitmapDescriptor.defaultMarkerWithHue(
        HSVColor.fromColor(color).hue
      );
    }
  }

  @override
  void didUpdateWidget(RouteMapWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Check if selected bus IDs changed
    if (widget.selectedBusIds != oldWidget.selectedBusIds &&
        widget.selectedBusIds.isNotEmpty) {
      _focusOnSelectedBus();
    }
  }

  /// Focus camera on the selected bus
  Future<void> _focusOnSelectedBus() async {
    if (_mapController == null || widget.selectedBusIds.isEmpty) return;

    // Get bus locations and find the selected bus
    final busLocationsAsync = ref.read(busLocationsProvider);

    await busLocationsAsync.when(
      data: (busLocations) async {
        for (final busFeature in busLocations) {
          final properties = busFeature['properties'] as Map<String, dynamic>;
          final busId = properties['id']?.toString();

          if (widget.selectedBusIds.contains(busId)) {
            final geometry = busFeature['geometry'] as Map<String, dynamic>;
            final coordinates = geometry['coordinates'] as List<dynamic>;
            final lon = (coordinates[0] as num).toDouble();
            final lat = (coordinates[1] as num).toDouble();

            // Animate camera to bus location
            await _mapController?.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(lat, lon),
                  zoom: 15.0, // Zoom in closer for focused view
                ),
              ),
            );
            break;
          }
        }
      },
      loading: () async {},
      error: (_, __) async {},
    );
  }

  // Helper: decode encoded polyline from backend
  List<LatLng> _decodePolyline(String? encodedPolyline) {
    if (encodedPolyline == null || encodedPolyline.isEmpty) {
      return [];
    }

    try {
      // Use static method from PolylinePoints
      final decoded = PolylinePoints.decodePolyline(encodedPolyline);
      return decoded
          .map((point) => LatLng(point.latitude, point.longitude))
          .toList();
    } catch (e) {
      // Silent fallback for invalid polylines
      return [];
    }
  }

  // Helper: get Google Maps style color for route
  // Uses route's color_code from backend, or falls back to hash-based color
  Color _colorForRoute(api.Route route) {
    // Try to use color_code from backend (Google Maps standard)
    try {
      final colorCode = (route as dynamic).colorCode;
      if (colorCode != null && colorCode.isNotEmpty) {
        try {
          // Parse hex color (e.g., "#FF5733")
          final hexColor = colorCode.replaceAll('#', '');
          return Color(int.parse('FF$hexColor', radix: 16));
        } catch (e) {
          // Invalid color code, fall back
        }
      }
    } catch (_) {
      // colorCode field not available, fall back
    }

    // Fallback to hash-based color
    return HSLColor.fromAHSL(1.0, (route.routeId.hashCode % 360).toDouble(), 0.7, 0.5).toColor();
  }

  // Helper: convert Color to HSL hue (0-360) for BitmapDescriptor
  double _colorToHue(Color color) {
    final r = ((color.r * 255.0).round() & 0xff) / 255.0;
    final g = ((color.g * 255.0).round() & 0xff) / 255.0;
    final b = ((color.b * 255.0).round() & 0xff) / 255.0;

    final max = [r, g, b].reduce((a, b) => a > b ? a : b);
    final min = [r, g, b].reduce((a, b) => a < b ? a : b);
    final delta = max - min;

    if (delta == 0) return 0;

    double hue;
    if (max == r) {
      hue = 60 * (((g - b) / delta) % 6);
    } else if (max == g) {
      hue = 60 * (((b - r) / delta) + 2);
    } else {
      hue = 60 * (((r - g) / delta) + 4);
    }

    return hue < 0 ? hue + 360 : hue;
  }


  @override
  Widget build(BuildContext context) {
    // Watch bus locations data
    final busLocationsAsync = ref.watch(busLocationsProvider);

    debugPrint('[RouteMapWidget] Building map with ${widget.routes.length} routes');

    // NOTE: Google Maps API key is loaded via <script> tag in web/index.html
    // The google_maps_flutter widget reads it from the JavaScript API, not from Dart code
    // No validation needed here - if key is missing, Google Maps will show its own error

    // Build marker and polyline sets
    final routePolylines = <Polyline>{};
    final stopMarkers = <Marker>{};
    final busMarkers = <Marker>{};

    // Always show routes
    final polylines = _buildRoutePolylines();
    routePolylines.addAll(polylines);
    debugPrint('[RouteMapWidget] Added ${polylines.length} route polylines');

    // Always show bus stop markers
    for (final route in widget.routes) {
      // Get bus stops from backend (built_value BuiltList of BuiltMap with JsonObject values)
      final busStops = route.busStops;
      debugPrint('[RouteMapWidget] Route ${route.name}: ${busStops.length} bus stops');

      if (busStops.isEmpty) continue;

      try {
        final stops = busStops;
        final routeColor = _colorForRoute(route);
        final routeHue = _colorToHue(routeColor);

        for (int i = 0; i < stops.length; i++) {
          final stop = stops[i];

          // Unwrap JsonObject values from BuiltMap
          final latObj = stop['latitude'];
          final lonObj = stop['longitude'];

          if (latObj == null || lonObj == null) {
            debugPrint('[RouteMapWidget] Stop $i: Missing lat/lon objects');
            continue;
          }

          final lat = latObj.value as num?;
          final lon = lonObj.value as num?;

          if (lat == null || lon == null) {
            debugPrint('[RouteMapWidget] Stop $i: lat/lon values are null');
            continue;
          }

          debugPrint('[RouteMapWidget] Stop $i: lat=$lat, lon=$lon');

          // Extract stop name from metadata
          final metadataObj = stop['metadata'];
          String stopName = 'Stop ${i + 1}';
          if (metadataObj != null) {
            final metadata = metadataObj.value;
            if (metadata is Map) {
              stopName = (metadata['name'] as String?) ?? stopName;
            }
          }

          final isEndpoint = (i == 0 || i == stops.length - 1);
          stopMarkers.add(Marker(
            markerId: MarkerId('stop_${route.routeId}_$i'),
            position: LatLng(lat.toDouble(), lon.toDouble()),
            icon: isEndpoint
                ? BitmapDescriptor.defaultMarkerWithHue(routeHue)
                : BitmapDescriptor.defaultMarker,
            infoWindow: InfoWindow(
              title: isEndpoint
                ? (i == 0 ? 'Start: $stopName' : 'End: $stopName')
                : stopName
            ),
          ));
        }

        debugPrint('[RouteMapWidget] Route ${route.name}: Added ${stops.length} stop markers');
      } catch (e, stackTrace) {
        // Log error for debugging
        debugPrint('[RouteMapWidget] Error parsing bus stops for route ${route.routeId}: $e');
        debugPrint('[RouteMapWidget] Stack trace: $stackTrace');
      }
    }

    debugPrint('[RouteMapWidget] Total stop markers: ${stopMarkers.length}');

    // Always show buses
    busMarkers.addAll(
      busLocationsAsync.when(
        data: (busLocations) {
          debugPrint('[RouteMapWidget] Received ${busLocations.length} bus locations from WebSocket');
          return _buildBusMarkers(busLocations);
        },
        loading: () {
          debugPrint('[RouteMapWidget] Bus locations loading...');
          return <Marker>{};
        },
        error: (error, stack) {
          debugPrint('[RouteMapWidget] Bus locations error: $error');
          return <Marker>{};
        },
      ),
    );

    debugPrint('[RouteMapWidget] Total bus markers: ${busMarkers.length}');

    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: _initialCamera(),
          onMapCreated: (controller) => _mapController = controller,
          onCameraMove: (position) {
            // Camera tracking not needed
          },
          markers: {...stopMarkers, ...busMarkers},
          polylines: routePolylines,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          mapType: MapType.normal,
          zoomControlsEnabled: false,
        ),

        // Home button (bottom-right)
        Positioned(
          bottom: 100,
          right: 10,
          child: FloatingActionButton.small(
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey[700],
            elevation: 4,
            onPressed: () async {
              await _mapController?.animateCamera(
                CameraUpdate.newCameraPosition(_initialCamera()),
              );
            },
            child: const Icon(Icons.home_outlined, size: 20),
          ),
        ),
      ],
    );
  }

  /// Build route polylines layer
  Set<Polyline> _buildRoutePolylines() {
    final polylines = <Polyline>{};

    for (final route in widget.routes) {
      // Decode polyline from backend's encoded polyline
      final encodedPolyline = route.encodedPolyline;
      debugPrint('[RouteMapWidget] Route ${route.name}: encodedPolyline length=${encodedPolyline.length}');

      final points = _decodePolyline(encodedPolyline);
      debugPrint('[RouteMapWidget] Route ${route.name}: decoded ${points.length} points');

      if (points.length < 2) {
        debugPrint('[RouteMapWidget] Route ${route.name}: Skipping (need at least 2 points)');
        continue;
      }

      // Get Google Maps color from backend
      final color = _colorForRoute(route);

      // Add route polyline with Google Maps styling
      polylines.add(Polyline(
        polylineId: PolylineId(route.routeId),
        points: points,
        color: color,
        width: 5,  // Google Maps standard width
        geodesic: true,  // Follow Earth's curvature
      ));

      debugPrint('[RouteMapWidget] Route ${route.name}: Added polyline with ${points.length} points');
    }
    return polylines;
  }


  /// Build bus position markers layer - 2025 BEST PRACTICE: Dynamic colored markers
  Set<Marker> _buildBusMarkers(List<Map<String, dynamic>> busLocations) {
    final markers = <Marker>{};
    debugPrint('[RouteMapWidget] Building bus markers from ${busLocations.length} locations');

    for (final busFeature in busLocations) {
      try {
        final geometry = busFeature['geometry'] as Map<String, dynamic>;
        final properties = busFeature['properties'] as Map<String, dynamic>;
        final coordinates = geometry['coordinates'] as List<dynamic>;

        final longitude = (coordinates[0] as num).toDouble();
        final latitude = (coordinates[1] as num).toDouble();
        final busId = properties['id']?.toString() ?? 'bus_${markers.length}';
        final status = properties['status'] as String;
        final busName = properties['name']?.toString() ?? 'Bus';

        debugPrint('[RouteMapWidget] Bus $busName ($busId): lat=$latitude, lon=$longitude, status=$status');

      // Parse last location update timestamp
      DateTime? lastLocationUpdate;
      if (properties['last_location_update'] != null) {
        try {
          lastLocationUpdate = DateTime.parse(properties['last_location_update'] as String);
        } catch (_) {
          // If parsing fails, treat as null (no timestamp available)
        }
      }

      // Filter
      if (widget.selectedBusIds.isNotEmpty && !widget.selectedBusIds.contains(busId)) {
        continue;
      }

      final isSelected = widget.selectedBusIds.contains(busId);

      // Get marker color using BusMarkerColors logic
      final markerColor = BusMarkerColors.getColorForStatus(
        status,
        isSelected: isSelected,
        lastLocationUpdate: lastLocationUpdate,
      );

      // Get cached marker icon (preloaded in initState)
      final colorKey = markerColor.toARGB32().toString();
      final icon = _markerCache[colorKey];

      // If marker not loaded yet (rare case), use default and load async
      if (icon == null) {
        _getColoredBusMarker(markerColor).then((loadedIcon) {
          if (mounted) setState(() {}); // Trigger rebuild when loaded
        });
        continue; // Skip this marker for now, will appear on next rebuild
      }

        markers.add(Marker(
          markerId: MarkerId('bus_$busId'),
          position: LatLng(latitude, longitude),
          icon: icon,
          // 2025 BEST PRACTICE: Set anchor to center for proper positioning
          anchor: const Offset(0.5, 0.5),
          infoWindow: InfoWindow(
            title: busName,
            snippet: _buildBusSnippet(busId, lastLocationUpdate),
          ),
          onTap: () {
            widget.onBusTapped?.call(busId, latitude, longitude);
          },
        ));

        debugPrint('[RouteMapWidget] Added marker for bus $busName');
      } catch (e) {
        debugPrint('[RouteMapWidget] Error creating bus marker: $e');
      }
    }

    debugPrint('[RouteMapWidget] Built ${markers.length} bus markers');
    return markers;
  }

  /// Build snippet for bus marker info window
  String _buildBusSnippet(String busId, DateTime? lastUpdate) {
    if (widget.buses.isEmpty) return 'No info';
    final bus = widget.buses.firstWhere((b) => b.busId == busId, orElse: () => widget.buses.first);
    final route = bus.routeName.isNotEmpty ? bus.routeName : 'No route';
    final timeAgo = lastUpdate != null ? _formatTimestamp(lastUpdate) : 'No update';
    return '$route • Updated: $timeAgo';
  }

  /// Format timestamp as relative time
  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final diff = now.difference(timestamp);

    if (diff.inSeconds < 60) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    return '${timestamp.month}/${timestamp.day}';
  }

  /// Focus camera on specific coordinates
  Future<void> focusOnLocation(double latitude, double longitude, {double zoom = 15.0}) async {
    await _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: zoom,
        ),
      ),
    );
  }
}
