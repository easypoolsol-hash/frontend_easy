import 'package:frontend_easy_api/api.dart' as api;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'package:frontend_easy/core/theme/route_colors.dart';
import 'package:frontend_easy/features/fleet/models/map_mode.dart';

/// Interactive map widget for route visualization
/// Renders routes, stops, and buses based on mode
class RouteMapWidget extends StatefulWidget {
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
  State<RouteMapWidget> createState() => _RouteMapWidgetState();
}

class _RouteMapWidgetState extends State<RouteMapWidget> {
  final MapController _mapController = MapController();

  // Helper: extract stops from the Route model in a backward/forward compatible way.
  List<dynamic> _stopsForRoute(api.Route route) {
    // Try `routeStops` (older/newer clients may have this)
    try {
      final rs = (route as dynamic).routeStops;
      if (rs is List) return rs;
    } catch (_) {}

    // Try `stops` field (generated client uses this)
    final s = route.stops;
    if (s == null) return <dynamic>[];
    if (s is List) return s;

    // If stops was encoded as JSON string, try to decode
    if (s is String) {
      try {
        final decoded = jsonDecode(s);
        if (decoded is List) return decoded;
      } catch (_) {}
    }

    // Unknown shape -> empty
    return <dynamic>[];
  }

  // Helper: get color hex from route, falling back to default when not present.
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
    return FlutterMap(
      mapController: _mapController,
      options: const MapOptions(
        // Default center (will be adjusted based on routes)
        initialCenter: LatLng(22.5726, 88.3639), // Kolkata
        initialZoom: 12.0,
        minZoom: 10.0,
        maxZoom: 18.0,
      ),
      children: [
        // Base map tiles - OpenStreetMap (fallback)
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.imperial.easypool.frontend',
        ),

        // Route polylines layer
        if (widget.showRoutes) _buildRouteLayer(),

        // Bus stop markers layer
        if (widget.showStops) _buildStopLayer(),

        // Bus position markers layer
        if (widget.showBuses) _buildBusLayer(),
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
  Widget _buildBusLayer() {
    final markers = <Marker>[];

    // TODO: Get actual bus positions from bus location API
    // For now, return empty layer until we implement real-time tracking
    // This would come from a separate bus locations provider

    return MarkerLayer(markers: markers);
  }
}
