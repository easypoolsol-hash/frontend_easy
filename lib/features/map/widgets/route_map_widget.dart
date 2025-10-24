import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';

import 'maps_config.dart';
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

  /// Creates a route map widget
  const RouteMapWidget({
    required this.routes,
    required this.buses,
    required this.mode,
    this.selectedRouteId,
    this.showRoutes = true,
    this.showStops = true,
    this.showBuses = true,
    super.key,
  });

  @override
  ConsumerState<RouteMapWidget> createState() => _RouteMapWidgetState();
}

class _RouteMapWidgetState extends ConsumerState<RouteMapWidget> {
  final MapController _mapController = MapController();

  // Helper: extract stops from the Route model in a backward/forward compatible way.
  List<dynamic> _stopsForRoute(api.Route route) {
    // Try `routeStops` (older/newer clients may have this)
    try {
      final rs = (route as dynamic).routeStops;
      if (rs is List) return rs;
    } catch (_) {}

    // Try `stops` field (generated client uses this)
    final s = route.routeStops;
    if (s == null) return <dynamic>[];
    if (s is List) return s;

    // If `s` is already a list, return it directly.
    if (s is List) {
      return s;
    }

    // Unknown shape -> empty
    return <dynamic>[];
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

    return FlutterMap(
      mapController: _mapController,
      options: const MapOptions(
        // Default center (Kolkata - home location)
        initialCenter: LatLng(HomeLocation.latitude, HomeLocation.longitude),
        // TODO: Replace with a configurable location provider
        initialZoom: 12.0,
        minZoom: 5.0,
        maxZoom: 18.0,
      ),
      children: [
        // Base map tiles - Google Maps (roadmap view)
        TileLayer(
          urlTemplate: 'https://mt.google.com/vt/lyrs=m&x={x}&y={y}&z={z}&key=$googleMapsApiKey',
          userAgentPackageName: 'com.imperial.easypool.frontend',
          additionalOptions: {
            'key': googleMapsApiKey,
          },
        ),

        // Route polylines layer
        if (widget.showRoutes) _buildRouteLayer(),

        // Bus stop markers layer
        if (widget.showStops) _buildStopLayer(),

        // Bus position markers layer
        if (widget.showBuses) busLocationsAsync.when(
          data: (busLocations) => _buildBusLayer(busLocations),
          loading: () => const SizedBox.shrink(), // Don't show loading for buses
          error: (error, stack) => const SizedBox.shrink(), // Don't show error for buses
        ),
      ],
    );
  }

  /// Build route polylines layer
  Widget _buildRouteLayer() {
    final polylines = <Polyline>[];

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

      polylines.add(
        Polyline(
          points: points,
          color: Color.fromRGBO(
            (color.r * 255.0).round(),
            (color.g * 255.0).round(),
            (color.b * 255.0).round(),
            opacity,
          ),
          strokeWidth: route.routeId == widget.selectedRouteId ? 6.0 : 4.0,
          // TODO: Handle dashed pattern from route.linePattern
        ),
      );
    }

    return PolylineLayer(polylines: polylines);
  }

  /// Build bus stop markers layer
  Widget _buildStopLayer() {
    final markers = <Marker>[];

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

        markers.add(
          Marker(
            point: LatLng(lat, lon),
            width: 30,
            height: 30,
            child: Icon(
              Icons.location_on,
              color: RouteColors.fromHex('#0072B2'),
              size: 24,
            ),
          ),
        );
      }
    }

    return MarkerLayer(markers: markers);
  }

  /// Build bus position markers layer
  Widget _buildBusLayer(List<Map<String, dynamic>> busLocations) {
    final markers = <Marker>[];

    for (final busFeature in busLocations) {
      final geometry = busFeature['geometry'] as Map<String, dynamic>;
      final properties = busFeature['properties'] as Map<String, dynamic>;
      final coordinates = geometry['coordinates'] as List<dynamic>;

      final longitude = (coordinates[0] as num).toDouble();
      final latitude = (coordinates[1] as num).toDouble();
      final status = properties['status'] as String;

      // Choose color based on bus status
      Color markerColor;
      switch (status.toLowerCase()) {
        case 'active':
          markerColor = Colors.green;
          break;
        case 'inactive':
          markerColor = Colors.red;
          break;
        default:
          markerColor = Colors.blue;
      }

      markers.add(
        Marker(
          point: LatLng(latitude, longitude),
          width: 40,
          height: 40,
          child: Container(
            decoration: BoxDecoration(
              color: markerColor.withOpacity(0.8),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: const Icon(
              Icons.directions_bus,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      );
    }

    return MarkerLayer(markers: markers);
  }
}
