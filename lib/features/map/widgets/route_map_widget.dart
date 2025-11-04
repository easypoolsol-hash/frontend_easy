import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'package:frontend_easy/features/map/widgets/maps_config.dart';
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

  // Dark mode toggle - default to true (blue-tinted navigation mode)
  bool _isDarkMode = true;

  @override
  void initState() {
    super.initState();
    // No preloading needed - markers created dynamically with bus numbers
  }

  /// Toggle map style between normal and dark mode
  void _toggleMapStyle() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  // Google Maps navigation mode dark theme (blue-tinted, not pure black)
  static const String _darkMapStyle = '''
  [
    {"elementType":"geometry","stylers":[{"color":"#1d2c4d"}]},
    {"elementType":"labels.text.fill","stylers":[{"color":"#8ec3b9"}]},
    {"elementType":"labels.text.stroke","stylers":[{"color":"#1a3646"}]},
    {"featureType":"administrative.country","elementType":"geometry.stroke","stylers":[{"color":"#4b6878"}]},
    {"featureType":"administrative.land_parcel","elementType":"labels.text.fill","stylers":[{"color":"#64779d"}]},
    {"featureType":"administrative.province","elementType":"geometry.stroke","stylers":[{"color":"#4b6878"}]},
    {"featureType":"landscape.man_made","elementType":"geometry.stroke","stylers":[{"color":"#334e87"}]},
    {"featureType":"landscape.natural","elementType":"geometry","stylers":[{"color":"#023e58"}]},
    {"featureType":"poi","elementType":"geometry","stylers":[{"color":"#283d6a"}]},
    {"featureType":"poi","elementType":"labels.text.fill","stylers":[{"color":"#6f9ba5"}]},
    {"featureType":"poi","elementType":"labels.text.stroke","stylers":[{"color":"#1d2c4d"}]},
    {"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#023e58"}]},
    {"featureType":"poi.park","elementType":"labels.text.fill","stylers":[{"color":"#3C7680"}]},
    {"featureType":"road","elementType":"geometry","stylers":[{"color":"#304a7d"}]},
    {"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#98a5be"}]},
    {"featureType":"road","elementType":"labels.text.stroke","stylers":[{"color":"#1d2c4d"}]},
    {"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#2c6675"}]},
    {"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#255763"}]},
    {"featureType":"road.highway","elementType":"labels.text.fill","stylers":[{"color":"#b0d5df"}]},
    {"featureType":"road.highway","elementType":"labels.text.stroke","stylers":[{"color":"#023e58"}]},
    {"featureType":"transit","elementType":"labels.text.fill","stylers":[{"color":"#98a5be"}]},
    {"featureType":"transit","elementType":"labels.text.stroke","stylers":[{"color":"#1d2c4d"}]},
    {"featureType":"transit.line","elementType":"geometry.fill","stylers":[{"color":"#283d6a"}]},
    {"featureType":"transit.station","elementType":"geometry","stylers":[{"color":"#3a4762"}]},
    {"featureType":"water","elementType":"geometry","stylers":[{"color":"#0e1626"}]},
    {"featureType":"water","elementType":"labels.text.fill","stylers":[{"color":"#4e6d70"}]}
  ]
  ''';

  /// Get standard Google Maps blue marker
  BitmapDescriptor _getStandardBlueMarker() {
    const cacheKey = 'standard_cyan_marker';

    // Return cached marker if already created
    if (_markerCache.containsKey(cacheKey)) {
      return _markerCache[cacheKey]!;
    }

    // Use Google's standard marker with azure blue hue (210° = Azure/Light Blue)
    // BitmapDescriptor constants:
    // - hueRed = 0°, hueOrange = 30°, hueYellow = 60°, hueGreen = 120°
    // - hueCyan = 180°, hueAzure = 210°, hueBlue = 240°, hueMagenta = 300°
    // Using 210° (Azure) for a brighter, more visible blue marker
    final marker = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure);
    _markerCache[cacheKey] = marker;
    return marker;
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
    final stopCircles = <Circle>{}; // Bus stops as circles (Google Maps transit style)
    final busMarkers = <Marker>{};
    final busCircles = <Circle>{}; // Ripple effect circles

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
          final position = LatLng(lat.toDouble(), lon.toDouble());

          // Google Maps transit style: Small circles for stops
          // Endpoints are larger, regular stops are smaller
          stopCircles.add(Circle(
            circleId: CircleId('stop_${route.routeId}_$i'),
            center: position,
            radius: isEndpoint ? 20 : 12, // Endpoints larger (20m), regular stops smaller (12m)
            fillColor: routeColor, // Use route color for the stop
            strokeColor: Colors.white, // White border for visibility
            strokeWidth: 2,
            consumeTapEvents: true,
            onTap: () {
              // Could show stop info in a snackbar or dialog
              debugPrint('[RouteMapWidget] Tapped stop: $stopName');
            },
          ));
        }

        debugPrint('[RouteMapWidget] Route ${route.name}: Added ${stops.length} stop circles');
      } catch (e, stackTrace) {
        // Log error for debugging
        debugPrint('[RouteMapWidget] Error parsing bus stops for route ${route.routeId}: $e');
        debugPrint('[RouteMapWidget] Stack trace: $stackTrace');
      }
    }

    debugPrint('[RouteMapWidget] Total stop circles: ${stopCircles.length}');

    // Always show buses with ripple circles
    busLocationsAsync.when(
      data: (busLocations) {
        debugPrint('[RouteMapWidget] Received ${busLocations.length} bus locations from WebSocket');
        final markersAndCircles = _buildBusMarkersWithCircles(busLocations);
        busMarkers.addAll(markersAndCircles['markers'] as Set<Marker>);
        busCircles.addAll(markersAndCircles['circles'] as Set<Circle>);
      },
      loading: () {
        debugPrint('[RouteMapWidget] Bus locations loading...');
      },
      error: (error, stack) {
        debugPrint('[RouteMapWidget] Bus locations error: $error');
      },
    );

    debugPrint('[RouteMapWidget] Total bus markers: ${busMarkers.length}');
    debugPrint('[RouteMapWidget] Total bus circles: ${busCircles.length}');

    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: _initialCamera(),
          onMapCreated: (controller) => _mapController = controller,
          onCameraMove: (position) {
            // Camera tracking not needed
          },
          markers: busMarkers,
          polylines: routePolylines,
          circles: {...stopCircles, ...busCircles}, // Stop circles + bus ripple circles
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          style: _isDarkMode ? _darkMapStyle : null, // Apply dark mode style
        ),

        // Dark mode toggle button (top-right)
        Positioned(
          top: 10,
          right: 10,
          child: FloatingActionButton.small(
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey[700],
            elevation: 4,
            onPressed: _toggleMapStyle,
            child: Icon(
              _isDarkMode ? Icons.light_mode : Icons.dark_mode,
              size: 20,
            ),
          ),
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


  /// Build bus position markers with ripple effect circles
  /// Returns a map with 'markers' and 'circles' sets
  Map<String, Set<dynamic>> _buildBusMarkersWithCircles(List<Map<String, dynamic>> busLocations) {
    final markers = <Marker>{};
    final circles = <Circle>{};
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
        final busNumber = properties['bus_number']?.toString() ?? 'BUS';

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

      // Don't filter buses - show all markers always
      // Google standard: Always visible, no hiding on selection

      // Use Google's standard blue marker
      final icon = _getStandardBlueMarker();

      final position = LatLng(latitude, longitude);

        // Add marker
        markers.add(Marker(
          markerId: MarkerId('bus_$busId'),
          position: position,
          icon: icon,
          infoWindow: InfoWindow(
            title: '$busNumber - $busName',
            snippet: _buildBusSnippet(busId, lastLocationUpdate),
          ),
          onTap: () {
            widget.onBusTapped?.call(busId, latitude, longitude);
          },
        ));

        // Add ripple effect circles (Google Maps navigation style - brighter blue)
        // Outer circle - bright blue glow
        circles.add(Circle(
          circleId: CircleId('bus_circle_outer_$busId'),
          center: position,
          radius: 120, // 120 meters
          fillColor: const Color(0x331E88E5), // Material Blue 600 with 20% opacity
          strokeColor: const Color(0x661E88E5), // Material Blue 600 with 40% opacity
          strokeWidth: 2,
        ));

        // Inner circle - brighter glow
        circles.add(Circle(
          circleId: CircleId('bus_circle_inner_$busId'),
          center: position,
          radius: 60, // 60 meters
          fillColor: const Color(0x661E88E5), // Material Blue 600 with 40% opacity
          strokeColor: const Color(0x991E88E5), // Material Blue 600 with 60% opacity
          strokeWidth: 2,
        ));

        debugPrint('[RouteMapWidget] Added marker and ripple circles for bus $busName');
      } catch (e) {
        debugPrint('[RouteMapWidget] Error creating bus marker: $e');
      }
    }

    debugPrint('[RouteMapWidget] Built ${markers.length} bus markers and ${circles.length} circles');
    return {
      'markers': markers,
      'circles': circles,
    };
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
