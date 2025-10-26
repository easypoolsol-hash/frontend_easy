import 'dart:ui' as ui;

import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:frontend_easy/features/map/widgets/maps_config.dart';
import 'package:frontend_easy/features/map/widgets/map_zoom_controls.dart';
import 'package:frontend_easy/core/theme/route_colors.dart';
import 'package:frontend_easy/core/theme/bus_marker_colors.dart';
import 'package:frontend_easy/features/fleet/models/map_mode.dart';
import 'package:frontend_easy/features/fleet/providers/bus_locations_provider.dart';

/// Interactive map widget for route visualization
/// Renders routes, stops, and buses based on mode
class RouteMapWidget extends ConsumerStatefulWidget {
  /// List of routes to display
  final List<api.Route> routes;

  /// List of buses to display
  final List<api.Bus> buses;

  /// Current map mode
  final MapMode mode;

  /// Selected route ID for focus mode
  final String? selectedRouteId;

  /// Whether to show routes layer
  final bool showRoutes;

  /// Whether to show stops layer
  final bool showStops;

  /// Whether to show buses layer
  final bool showBuses;

  /// Selected bus ID to focus on (null = show all buses)
  final String? selectedBusId;

  /// Trigger to focus on selected bus (increment to trigger focus)
  final int? focusTrigger;

  /// Callback when bus marker is tapped
  final void Function(String busId, double lat, double lon)? onBusTapped;

  /// Creates a route map widget
  const RouteMapWidget({
    required this.routes,
    required this.buses,
    required this.mode,
    this.selectedRouteId,
    this.selectedBusId,
    this.focusTrigger,
    this.showRoutes = true,
    this.showStops = true,
    this.showBuses = true,
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

  double _currentZoom = 12.0;
  LatLng _currentCenter = const LatLng(HomeLocation.latitude, HomeLocation.longitude);

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

  /// Create colored bus marker from SVG - 2025 BEST PRACTICE: Dynamic coloring
  /// Uses cached markers to avoid regenerating same color multiple times
  Future<BitmapDescriptor> _getColoredBusMarker(Color color) async {
    final colorKey = color.toARGB32().toString();

    // Return cached marker if already created
    if (_markerCache.containsKey(colorKey)) {
      return _markerCache[colorKey]!;
    }

    try {
      // Load SVG and convert to colored bitmap
      final pictureInfo = await vg.loadPicture(
        const SvgAssetLoader('assets/icons/bus.svg'),
        null,
      );

      final recorder = ui.PictureRecorder();
      final canvas = Canvas(recorder);
      final paint = Paint()..colorFilter = ColorFilter.mode(color, BlendMode.srcIn);

      // Draw SVG scaled to 106x106 with color filter
      canvas.save();
      canvas.scale(106.0 / pictureInfo.size.width);
      canvas.saveLayer(null, paint);
      canvas.drawPicture(pictureInfo.picture);
      canvas.restore();
      canvas.restore();

      final picture = recorder.endRecording();
      final image = await picture.toImage(106, 106);
      final bytes = await image.toByteData(format: ui.ImageByteFormat.png);

      final descriptor = BitmapDescriptor.bytes(bytes!.buffer.asUint8List());

      // Cache for reuse
      _markerCache[colorKey] = descriptor;

      pictureInfo.picture.dispose();

      return descriptor;
    } catch (e) {
      debugPrint('Failed to create colored bus marker: $e');
      // Fallback to default marker
      return BitmapDescriptor.defaultMarker;
    }
  }

  @override
  void didUpdateWidget(RouteMapWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Check if focus trigger changed
    if (widget.focusTrigger != null &&
        widget.focusTrigger != oldWidget.focusTrigger &&
        widget.selectedBusId != null) {
      _focusOnSelectedBus();
    }
  }

  /// Focus camera on the selected bus
  Future<void> _focusOnSelectedBus() async {
    if (_mapController == null || widget.selectedBusId == null) return;

    // Get bus locations and find the selected bus
    final busLocationsAsync = ref.read(busLocationsProvider);

    await busLocationsAsync.when(
      data: (busLocations) async {
        for (final busFeature in busLocations) {
          final properties = busFeature['properties'] as Map<String, dynamic>;
          final busId = properties['id']?.toString();

          if (busId == widget.selectedBusId) {
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

  // Helper: extract stops from the Route model (converts BuiltList to List)
  List<dynamic> _stopsForRoute(api.Route route) {
    // Convert BuiltList to regular List
    return route.routeStops.toList();
  }

  // Helper: get color for route using hash-based assignment
  Color _colorForRoute(api.Route route) {
    return RouteColors.getColorForRoute(route.routeId);
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

    // NOTE: Google Maps API key is loaded via <script> tag in web/index.html
    // The google_maps_flutter widget reads it from the JavaScript API, not from Dart code
    // No validation needed here - if key is missing, Google Maps will show its own error

    // Build marker and polyline sets
    final routePolylines = <Polyline>{};
    final stopMarkers = <Marker>{};
    final busMarkers = <Marker>{};

    if (widget.showRoutes) {
      final polylines = _buildRoutePolylines();
      routePolylines.addAll(polylines);
    }

    if (widget.showStops) {
      // Use default markers temporarily, will enhance later
      for (final route in widget.routes) {
        final stops = _stopsForRoute(route);
        final routeColor = _colorForRoute(route);
        final routeHue = _colorToHue(routeColor);

        for (int i = 0; i < stops.length; i++) {
          final routeStop = stops[i];
          dynamic latVal, lonVal;
          if (routeStop is Map) {
            latVal = routeStop['latitude'] ?? routeStop['lat'];
            lonVal = routeStop['longitude'] ?? routeStop['lon'];
          } else {
            try { latVal = (routeStop as dynamic).latitude; } catch (_) {}
            try { lonVal = (routeStop as dynamic).longitude; } catch (_) {}
          }
          if (latVal == null || lonVal == null) continue;

          final isEndpoint = (i == 0 || i == stops.length - 1);
          stopMarkers.add(Marker(
            markerId: MarkerId('stop_${route.routeId}_$i'),
            position: LatLng((latVal as num).toDouble(), (lonVal as num).toDouble()),
            icon: isEndpoint
                ? BitmapDescriptor.defaultMarkerWithHue(routeHue)
                : BitmapDescriptor.defaultMarker,
            infoWindow: InfoWindow(title: i == 0 ? 'Start' : (i == stops.length - 1 ? 'End' : 'Stop')),
          ));
        }
      }
    }

    if (widget.showBuses) {
      busMarkers.addAll(
        busLocationsAsync.when(
          data: (busLocations) => _buildBusMarkers(busLocations),
          loading: () => <Marker>{},
          error: (error, stack) => <Marker>{},
        ),
      );
    }

    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: _initialCamera(),
          onMapCreated: (controller) => _mapController = controller,
          onCameraMove: (position) {
            _currentZoom = position.zoom;
            _currentCenter = position.target;
          },
          markers: {...stopMarkers, ...busMarkers},
          polylines: routePolylines,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          mapType: MapType.normal,
          zoomControlsEnabled: false,
        ),

        MapZoomControls(
          onZoomIn: () async {
            final zoom = (_currentZoom + 1).clamp(5.0, 18.0);
            await _mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: _currentCenter, zoom: zoom)));
          },
          onZoomOut: () async {
            final zoom = (_currentZoom - 1).clamp(5.0, 18.0);
            await _mapController?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: _currentCenter, zoom: zoom)));
          },
          onCenterHome: () async {
            await _mapController?.animateCamera(CameraUpdate.newCameraPosition(_initialCamera()));
          },
        ),
      ],
    );
  }

  /// Build route polylines layer
  Set<Polyline> _buildRoutePolylines() {
    final polylines = <Polyline>{};

  for (final route in widget.routes) {
      // Skip if in focus mode and not selected
      if (widget.mode == MapMode.routeFocus &&
          widget.selectedRouteId != null &&
          route.routeId != widget.selectedRouteId) {
        continue;
      }

      // Get route stops to build polyline (support different generated models)
      final stops = _stopsForRoute(route);
      if (stops.isEmpty) continue;

      final points = <LatLng>[];
      for (final stop in stops) {
        dynamic latVal;
        dynamic lonVal;
        if (stop is Map) {
          latVal = stop['latitude'] ?? stop['lat'] ?? stop['latitute'] ?? stop['lati'];
          lonVal = stop['longitude'] ?? stop['lon'] ?? stop['lng'] ?? stop['long'];
        } else {
          try {
            latVal = (stop as dynamic).latitude;
          } catch (_) {
            latVal = null;
          }
          try {
            lonVal = (stop as dynamic).longitude;
          } catch (_) {
            lonVal = null;
          }
        }

        if (latVal == null || lonVal == null) continue;
        try {
          points.add(LatLng((latVal as num).toDouble(), (lonVal as num).toDouble()));
        } catch (_) {
          // Skip invalid coordinate
        }
      }

      if (points.length < 2) continue;

      // Get color for route using hash-based assignment
      final color = _colorForRoute(route);

      // Full opacity - vibrant colors
      const opacity = 1.0;

      // Add white border polyline for visibility
      polylines.add(Polyline(
        polylineId: PolylineId('${route.routeId}_border'),
        points: points.map((p) => LatLng(p.latitude, p.longitude)).toList(),
        color: Colors.white,
        width: route.routeId == widget.selectedRouteId ? 10 : 8,
      ));

      // Add colored route polyline
      polylines.add(Polyline(
        polylineId: PolylineId(route.routeId),
        points: points.map((p) => LatLng(p.latitude, p.longitude)).toList(),
        color: color.withValues(alpha: opacity),
        width: route.routeId == widget.selectedRouteId ? 6 : 4,
      ));
    }
    return polylines;
  }


  /// Build bus position markers layer - 2025 BEST PRACTICE: Dynamic colored markers
  Set<Marker> _buildBusMarkers(List<Map<String, dynamic>> busLocations) {
    final markers = <Marker>{};

    for (final busFeature in busLocations) {
      final geometry = busFeature['geometry'] as Map<String, dynamic>;
      final properties = busFeature['properties'] as Map<String, dynamic>;
      final coordinates = geometry['coordinates'] as List<dynamic>;

      final longitude = (coordinates[0] as num).toDouble();
      final latitude = (coordinates[1] as num).toDouble();
      final busId = properties['id']?.toString() ?? 'bus_${markers.length}';
      final status = properties['status'] as String;
      final busName = properties['name']?.toString() ?? 'Bus';

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
      if (widget.selectedBusId != null && busId != widget.selectedBusId) {
        continue;
      }

      final isSelected = widget.selectedBusId == busId;

      // Get marker color using BusMarkerColors logic
      final markerColor = BusMarkerColors.getColorForStatus(
        status,
        isSelected: isSelected,
        lastLocationUpdate: lastLocationUpdate,
      );

      // Get color reason for tooltip
      final colorReason = BusMarkerColors.getColorReason(
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
          snippet: isSelected ? 'Selected • $colorReason' : colorReason,
        ),
        onTap: () {
          widget.onBusTapped?.call(busId, latitude, longitude);
        },
      ));
    }
    return markers;
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
