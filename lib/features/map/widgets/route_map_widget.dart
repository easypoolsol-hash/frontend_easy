import 'dart:math' as math;

import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:frontend_easy/features/map/widgets/maps_config.dart';
import 'package:frontend_easy/features/map/widgets/map_zoom_controls.dart';
import 'package:frontend_easy/core/theme/route_colors.dart';
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

  /// Callback when bus marker is tapped
  final void Function(String busId, double lat, double lon)? onBusTapped;

  /// Creates a route map widget
  const RouteMapWidget({
    required this.routes,
    required this.buses,
    required this.mode,
    this.selectedRouteId,
    this.selectedBusId,
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
  CameraPosition _initialCamera() => CameraPosition(
        target: LatLng(HomeLocation.latitude, HomeLocation.longitude),
        zoom: 12.0,
      );

  double _currentZoom = 12.0;
  LatLng _currentCenter = LatLng(HomeLocation.latitude, HomeLocation.longitude);

  // Helper: extract stops from the Route model (converts BuiltList to List)
  List<dynamic> _stopsForRoute(api.Route route) {
    // Convert BuiltList to regular List
    return route.routeStops.toList();
  }

  // Helper: get color hex from route, defaulting to blue when not present.
  String _colorForRoute(api.Route route) {
    try {
      final c = (route as dynamic).colorCode;
      if (c is String && c.isNotEmpty) return c;
    } catch (_) {}
    try {
      final c = (route as dynamic).color_code;
      if (c is String && c.isNotEmpty) return c;
    } catch (_) {}
    return '#0072B2';
  }

  @override
  Widget build(BuildContext context) {
    // Watch bus locations data
    final busLocationsAsync = ref.watch(busLocationsProvider);

    // Show error if Google Maps API key is not configured
    if (googleMapsApiKey.isEmpty) {
      return Container(
        color: Colors.grey[100],
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.map,
                size: 64,
                color: Colors.grey,
              ),
              SizedBox(height: 16),
              Text(
                'Google Maps API Key Required',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Set GOOGLE_MAPS_API_KEY environment variable',
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    // Build marker and polyline sets
    final routePolylines = <Polyline>{};
    final stopMarkers = <Marker>{};
    final busMarkers = <Marker>{};

    if (widget.showRoutes) {
      final polylines = _buildRoutePolylines();
      routePolylines.addAll(polylines);
    }

    if (widget.showStops) {
      stopMarkers.addAll(_buildStopMarkers());
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

      // Parse color from route
  final color = RouteColors.fromHex(_colorForRoute(route));

      // Opacity based on mode
      final opacity = widget.mode == MapMode.routeFocus && route.routeId == widget.selectedRouteId
          ? 1.0
          : 0.4;

      polylines.add(Polyline(
        polylineId: PolylineId(route.routeId ?? math.Random().nextInt(1 << 30).toString()),
        points: points.map((p) => LatLng(p.latitude, p.longitude)).toList(),
        color: Color.fromRGBO(
          (color.r * 255.0).round(),
          (color.g * 255.0).round(),
          (color.b * 255.0).round(),
          opacity,
        ),
        width: route.routeId == widget.selectedRouteId ? 6 : 4,
      ));
    }
    return polylines;
  }

  /// Build bus stop markers layer
  Set<Marker> _buildStopMarkers() {
    final markers = <Marker>{};

    for (final route in widget.routes) {
      final stops = _stopsForRoute(route);

      for (final routeStop in stops) {
        dynamic latVal;
        dynamic lonVal;
        if (routeStop is Map) {
          latVal = routeStop['latitude'] ?? routeStop['lat'] ?? routeStop['latitute'] ?? routeStop['lati'];
          lonVal = routeStop['longitude'] ?? routeStop['lon'] ?? routeStop['lng'] ?? routeStop['long'];
        } else {
          try {
            latVal = (routeStop as dynamic).latitude;
          } catch (_) {
            latVal = null;
          }
          try {
            lonVal = (routeStop as dynamic).longitude;
          } catch (_) {
            lonVal = null;
          }
        }

        if (latVal == null || lonVal == null) continue;
        double? lat;
        double? lon;
        try {
          lat = (latVal as num).toDouble();
          lon = (lonVal as num).toDouble();
        } catch (_) {
          continue;
        }

        markers.add(Marker(
    markerId: MarkerId('stop_${lat}_${lon}_${markers.length}'),
          position: LatLng(lat, lon),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
          infoWindow: InfoWindow(title: 'Stop'),
        ));
      }
    }
    return markers;
  }

  /// Build bus position markers layer
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

      // Filter: Only show this bus if no filter is active or this bus is selected
      if (widget.selectedBusId != null && busId != widget.selectedBusId) {
        continue; // Skip this bus
      }

      // Determine marker color and alpha based on selection
      final isSelected = widget.selectedBusId == busId;
      final markerHue = status.toLowerCase() == 'active'
          ? BitmapDescriptor.hueGreen
          : BitmapDescriptor.hueRed;

      markers.add(Marker(
        markerId: MarkerId('bus_$busId'),
        position: LatLng(latitude, longitude),
        icon: BitmapDescriptor.defaultMarkerWithHue(markerHue),
        infoWindow: InfoWindow(
          title: busName,
          snippet: isSelected ? 'Selected • $status' : status,
        ),
        onTap: () {
          // Notify parent when bus is tapped
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
