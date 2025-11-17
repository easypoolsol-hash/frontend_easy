import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:frontend_easy/features/map/widgets/maps_config.dart';
import 'package:frontend_easy/features/map/widgets/location_trail_painter.dart';
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

  /// Whether the map is in history mode (disables live location fetching)
  final bool historyMode;

  /// Historical bus location {latitude, longitude, busId} - for history playback
  final Map<String, dynamic>? historicalLocation;

  /// All historical locations for trail drawing
  final List<Map<String, dynamic>>? historicalLocations;

  /// Current index in historical locations for progressive trail
  final int? historicalCurrentIndex;

  /// Creates a route map widget
  const RouteMapWidget({
    required this.routes,
    required this.buses,
    this.selectedBusIds = const [],
    this.onBusTapped,
    this.historyMode = false,
    this.historicalLocation,
    this.historicalLocations,
    this.historicalCurrentIndex,
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

  // Dark mode toggle - default to true (blue-tinted navigation mode)
  bool _isDarkMode = true;

  // Ripple animation state
  Timer? _rippleTimer;
  int _ripplePhase = 0; // 0-2 for three animation phases

  // Current zoom level for dynamic sizing
  double _currentZoom = 12.0;

  // Selected bus stop for showing info directly on marker
  String? _selectedStopId;
  String? _lastShownStopId; // Track last shown to prevent re-showing

  // Track selected bus to show info
  String? _selectedBusId;
  String? _lastShownBusId; // Track last shown to prevent re-showing

  // Cache for custom bus marker icons by route color
  final Map<Color, BitmapDescriptor> _cachedBusMarkerIcons = {};

  // Cache for historical bus marker (blue)
  BitmapDescriptor? _cachedHistoricalBusMarker;

  @override
  void initState() {
    super.initState();
    // Start ripple animation timer
    _startRippleAnimation();
  }

  @override
  void dispose() {
    _rippleTimer?.cancel();
    super.dispose();
  }

  /// Start ripple animation timer (cycles every 600ms)
  void _startRippleAnimation() {
    _rippleTimer = Timer.periodic(const Duration(milliseconds: 600), (timer) {
      if (mounted) {
        setState(() {
          _ripplePhase = (_ripplePhase + 1) % 3; // Cycle through 0, 1, 2
        });
      }
    });
  }

  /// Create a custom bus marker icon with route color
  Future<BitmapDescriptor> _createBusMarker(Color routeColor) async {
    final pictureRecorder = ui.PictureRecorder();
    final canvas = Canvas(pictureRecorder);
    const size = 48.0;
    const center = Offset(size / 2, size / 2);

    // Draw white circle background
    final whiteCirclePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, size / 2, whiteCirclePaint);

    // Draw bus icon in route color (SVG path)
    final busIconPaint = Paint()
      ..color = routeColor // Bus matches route color
      ..style = PaintingStyle.fill;

    // Scale and translate SVG path to fit
    // Original SVG viewBox is 24x24, scale to fill most of canvas
    const iconSize = size * 0.6;
    const scale = iconSize / 24.0;
    const offsetX = (size - iconSize) / 2;
    const offsetY = (size - iconSize) / 2;

    canvas.save();
    canvas.translate(offsetX, offsetY);
    canvas.scale(scale, scale);

    // Bus SVG path
    final path = Path()
      ..moveTo(4, 16)
      ..cubicTo(4, 16.88, 4.39, 17.67, 5, 18.22)
      ..lineTo(5, 20)
      ..cubicTo(5, 20.55, 5.45, 21, 6, 21)
      ..lineTo(7, 21)
      ..cubicTo(7.55, 21, 8, 20.55, 8, 20)
      ..lineTo(8, 19)
      ..lineTo(16, 19)
      ..lineTo(16, 20)
      ..cubicTo(16, 20.55, 16.45, 21, 17, 21)
      ..lineTo(18, 21)
      ..cubicTo(18.55, 21, 19, 20.55, 19, 20)
      ..lineTo(19, 18.22)
      ..cubicTo(19.61, 17.67, 20, 16.88, 20, 16)
      ..lineTo(20, 6)
      ..cubicTo(20, 2.5, 16.42, 2, 12, 2)
      ..cubicTo(7.58, 2, 4, 2.5, 4, 6)
      ..lineTo(4, 16)
      ..close()
      ..moveTo(7.5, 17)
      ..cubicTo(6.67, 17, 6, 16.33, 6, 15.5)
      ..cubicTo(6, 14.67, 6.67, 14, 7.5, 14)
      ..cubicTo(8.33, 14, 9, 14.67, 9, 15.5)
      ..cubicTo(9, 16.33, 8.33, 17, 7.5, 17)
      ..close()
      ..moveTo(16.5, 17)
      ..cubicTo(15.67, 17, 15, 16.33, 15, 15.5)
      ..cubicTo(15, 14.67, 15.67, 14, 16.5, 14)
      ..cubicTo(17.33, 14, 18, 14.67, 18, 15.5)
      ..cubicTo(18, 16.33, 17.33, 17, 16.5, 17)
      ..close()
      ..moveTo(18, 11)
      ..lineTo(6, 11)
      ..lineTo(6, 6)
      ..lineTo(18, 6)
      ..lineTo(18, 11)
      ..close();

    canvas.drawPath(path, busIconPaint);
    canvas.restore();

    final picture = pictureRecorder.endRecording();
    final image = await picture.toImage(size.toInt(), size.toInt());
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
  }

  /// Calculate zoom-adjusted radius for circles
  /// Aggressive inverse scaling to mimic pixel-based sizing (not ground meters)
  /// Google Maps circles use ground meters, so we scale exponentially to maintain visual size
  double _getZoomAdjustedRadius(double baseRadius) {
    // Reference zoom level (matches initial camera zoom for consistent appearance)
    const referenceZoom = 12.0;

    // Aggressive exponential scaling to mimic pixel-based behavior
    // Google Maps doubles visible ground area for each zoom level decrease
    // So we need to double the radius for each zoom level decrease to maintain visual size
    final zoomDiff = referenceZoom - _currentZoom;
    final scaleFactor = math.pow(2.0, zoomDiff).toDouble(); // Full exponential scaling (2^zoomDiff)

    final adjustedRadius = baseRadius * scaleFactor;
    return adjustedRadius;
  }

  /// Toggle map style between normal and dark mode
  void _toggleMapStyle() async {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });

    // Apply the style change to the map controller
    if (_mapController != null) {
      await _mapController!.setMapStyle(_isDarkMode ? _darkMapStyle : null);
    }
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

    bool zoomedToLocation = false;

    // Only try to get live bus locations if NOT in history mode
    if (!widget.historyMode) {
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
              zoomedToLocation = true;
              break;
            }
          }
        },
        loading: () async {},
        error: (_, __) async {},
      );
    }

    // Fallback: If no live location found, try to zoom to bus's route
    if (!zoomedToLocation && widget.buses.isNotEmpty) {
      final selectedBus = widget.buses.firstWhere(
        (bus) => widget.selectedBusIds.contains(bus.busId),
        orElse: () => widget.buses.first,
      );

      // Find route for this bus
      final route = widget.routes.where((r) => r.routeId == selectedBus.route).firstOrNull;
      if (route != null && route.routeStops.isNotEmpty) {
        // Zoom to first stop of the route
        final firstStop = route.routeStops.first;
        await _mapController?.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(firstStop.latitude, firstStop.longitude),
              zoom: 14.0,
            ),
          ),
        );
      }
    }
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


  @override
  Widget build(BuildContext context) {
    // Watch bus locations data (only in live mode, not history mode)
    final busLocationsAsync = widget.historyMode
        ? const AsyncValue<List<Map<String, dynamic>>>.data([])
        : ref.watch(busLocationsProvider);

    // NOTE: Google Maps API key is loaded via <script> tag in web/index.html
    // The google_maps_flutter widget reads it from the JavaScript API, not from Dart code
    // No validation needed here - if key is missing, Google Maps will show its own error

    // Build marker and polyline sets
    final routePolylines = <Polyline>{};
    final stopCircles = <Circle>{}; // Bus stops as circles (Google Maps transit style)
    final stopMarkers = <Marker>{}; // Bus stop name markers (invisible, only for labels)
    final busMarkers = <Marker>{};
    final busCircles = <Circle>{}; // Ripple effect circles

    // Always show routes
    final polylines = _buildRoutePolylines();
    routePolylines.addAll(polylines);

    // Add historical trail if in history mode
    if (widget.historyMode &&
        widget.historicalLocations != null &&
        widget.historicalLocations!.isNotEmpty &&
        widget.historicalCurrentIndex != null) {
      final trail = LocationTrailPainter.createProgressiveTrail(
        locations: widget.historicalLocations!,
        currentIndex: widget.historicalCurrentIndex!,
        trailId: 'historical_trail',
        color: Colors.orange.withValues(alpha: 0.8),
        width: 5,
      );

      if (trail != null) {
        routePolylines.add(trail);
      }
    }

    // Always show bus stop markers
    for (final route in widget.routes) {
      // Get bus stops from backend (built_value BuiltList of BuiltMap with JsonObject values)
      final busStops = route.busStops;

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
            continue;
          }

          final lat = latObj.value as num?;
          final lon = lonObj.value as num?;

          if (lat == null || lon == null) {
            continue;
          }

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
          final stopId = 'stop_${route.routeId}_$i';

          // Google Maps transit style: Colored fill with white border
          // Inner: Route color, Outer: White border for contrast
          // Much larger base size for better visibility
          final isSelected = _selectedStopId == stopId;
          final baseRadius = isEndpoint ? 120.0 : 80.0; // Much larger: Endpoints 120m, regular 80m
          final outerRadius = isSelected ? baseRadius * 1.5 : baseRadius; // 50% bigger when selected
          final innerRadius = outerRadius * 0.6; // Inner colored circle is 60% of outer

          // Outer circle with white fill and grey border (no shadow)
          stopCircles.add(Circle(
            circleId: CircleId('${stopId}_outer'),
            center: position,
            radius: _getZoomAdjustedRadius(outerRadius),
            fillColor: Colors.white, // White fill
            strokeColor: const Color(0xFF9E9E9E), // Grey border (lighter than before)
            strokeWidth: isSelected ? 4 : 3,
          ));

          // Inner circle with route color
          stopCircles.add(Circle(
            circleId: CircleId(stopId),
            center: position,
            radius: _getZoomAdjustedRadius(innerRadius),
            fillColor: routeColor.withValues(alpha: isSelected ? 1.0 : 0.9), // Route color fill
            strokeColor: routeColor, // Same color border
            strokeWidth: isSelected ? 3 : 2,
            consumeTapEvents: true,
            onTap: () {
              setState(() {
                if (_selectedStopId == stopId) {
                  _selectedStopId = null;
                  _lastShownStopId = null;
                } else {
                  _selectedStopId = stopId;
                }
              });
            },
          ));

          // Always add larger invisible marker with info window for easier hover
          final markerId = MarkerId('stop_label_$stopId');
          stopMarkers.add(Marker(
            markerId: markerId,
            position: position,
            icon: BitmapDescriptor.defaultMarker,
            alpha: 0.0, // Make marker invisible, only show label
            infoWindow: InfoWindow(
              title: stopName,
              snippet: route.name, // Show route name
              anchor: const Offset(0.5, 2.0), // Position label well above the circle
            ),
            // Marker inherently has a larger hit area than the visual circle
            consumeTapEvents: false, // Don't consume taps so circle can also be clicked
          ));
        }
      } catch (e, stackTrace) {
        // Silently skip routes with parsing errors
      }
    }

    // Always show buses with ripple circles - synchronous version
    busLocationsAsync.whenOrNull(
      data: (busLocations) {
        // Process synchronously - create simple markers first, custom icons later
        for (final busFeature in busLocations) {
          try {
            final geometry = busFeature['geometry'] as Map<String, dynamic>;
            final properties = busFeature['properties'] as Map<String, dynamic>;
            final coordinates = geometry['coordinates'] as List<dynamic>;

            final longitude = (coordinates[0] as num).toDouble();
            final latitude = (coordinates[1] as num).toDouble();
            final busId = properties['id']?.toString() ?? 'bus_${busMarkers.length}';
            final busNumber = properties['bus_number']?.toString() ?? 'BUS';
            final busName = properties['name']?.toString() ?? 'Bus';
            final routeId = properties['route_id']?.toString();
            final lastUpdate = properties['last_update']?.toString();

            final position = LatLng(latitude, longitude);

            // Find route and route color for this bus
            String? routeInfo;
            Color routeColor = const Color(0xFF1976D2); // Default blue
            if (routeId != null && widget.routes.isNotEmpty) {
              try {
                final busRoute = widget.routes.firstWhere(
                  (r) => r.routeId == routeId,
                );
                routeInfo = busRoute.name;
                routeColor = _colorForRoute(busRoute);
              } catch (e) {
                // Route not found, use first route as fallback
                if (widget.routes.isNotEmpty) {
                  final fallbackRoute = widget.routes.first;
                  routeInfo = fallbackRoute.name;
                  routeColor = _colorForRoute(fallbackRoute);
                }
              }
            } else if (widget.routes.isNotEmpty) {
              // No routeId, use first route as default
              final defaultRoute = widget.routes.first;
              routeInfo = defaultRoute.name;
              routeColor = _colorForRoute(defaultRoute);
            }

            // Custom bus marker with route color
            final busMarkerId = MarkerId('bus_$busId');
            final isSelected = _selectedBusId == busId;

            // Create or get cached marker icon for this route color
            if (!_cachedBusMarkerIcons.containsKey(routeColor)) {
              _createBusMarker(routeColor).then((icon) {
                if (mounted) {
                  setState(() {
                    _cachedBusMarkerIcons[routeColor] = icon;
                  });
                }
              });
            }

            // Only add marker if icon is ready
            final cachedIcon = _cachedBusMarkerIcons[routeColor];
            if (cachedIcon != null) {
              busMarkers.add(Marker(
                markerId: busMarkerId,
                position: position,
                icon: cachedIcon,
                onTap: () {
                  setState(() {
                    if (_selectedBusId == busId) {
                      _selectedBusId = null;
                      _lastShownBusId = null;
                    } else {
                      _selectedBusId = busId;
                    }
                  });
                  widget.onBusTapped?.call(busId, latitude, longitude);
                },
              ));
            }

            // Add invisible marker to show info window when selected
            if (isSelected) {
              final infoMarkerId = MarkerId('bus_info_$busId');

              // Format last update timestamp as "time ago" (e.g., "2 mins ago")
              String? lastUpdateText;
              if (lastUpdate != null) {
                try {
                  final updateTime = DateTime.parse(lastUpdate);
                  lastUpdateText = 'Updated ${timeago.format(updateTime)}';
                } catch (e) {
                  // If parsing fails, don't show timestamp
                  lastUpdateText = null;
                }
              }

              // Build title with bus number and route
              String title = busNumber;
              if (routeInfo != null) {
                title = '$busNumber • Route: $routeInfo';
              }

              // Snippet shows only timestamp
              String? snippet = lastUpdateText;

              busMarkers.add(Marker(
                markerId: infoMarkerId,
                position: position,
                icon: BitmapDescriptor.defaultMarker,
                alpha: 0.0, // Invisible marker
                infoWindow: InfoWindow(
                  title: title,
                  snippet: snippet ?? busName,
                  anchor: const Offset(0.5, 1.0),
                ),
              ));

              // Only show info window once when first selected
              if (_lastShownBusId != busId) {
                _lastShownBusId = busId;
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _mapController?.showMarkerInfoWindow(infoMarkerId);
                });
              }
            }

            // Add blue ripple circles (not yellow)
            final ripplePhase = _ripplePhase;

            // Outer circle - blue color
            final outerBaseRadius = 600.0 + (ripplePhase * 80.0);
            final outerRadius = _getZoomAdjustedRadius(outerBaseRadius);
            final outerOpacity = 0.25 - (ripplePhase * 0.06);
            busCircles.add(Circle(
              circleId: CircleId('bus_outer_$busId'),
              center: position,
              radius: outerRadius,
              fillColor: Color.fromRGBO(30, 136, 229, outerOpacity), // Blue
              strokeColor: Color.fromRGBO(30, 136, 229, outerOpacity * 1.5),
              strokeWidth: 2,
            ));

            // Inner circle - blue color
            final innerPhase = (ripplePhase + 1) % 3;
            final innerBaseRadius = 300.0 + (innerPhase * 60.0);
            final innerRadius = _getZoomAdjustedRadius(innerBaseRadius);
            final innerOpacity = 0.35 - (innerPhase * 0.08);
            busCircles.add(Circle(
              circleId: CircleId('bus_inner_$busId'),
              center: position,
              radius: innerRadius,
              fillColor: Color.fromRGBO(30, 136, 229, innerOpacity), // Blue
              strokeColor: Color.fromRGBO(30, 136, 229, innerOpacity * 1.5),
              strokeWidth: 2,
            ));
          } catch (e) {
            // Silently skip invalid bus locations
          }
        }
      },
    );

    // Add historical bus marker if in history mode
    final Set<Marker> historicalMarkers = {};
    if (widget.historyMode && widget.historicalLocation != null) {
      final lat = widget.historicalLocation!['latitude'] as double?;
      final lon = widget.historicalLocation!['longitude'] as double?;

      if (lat != null && lon != null) {
        // Create blue bus marker if not cached
        if (_cachedHistoricalBusMarker == null) {
          _createBusMarker(const Color.fromRGBO(30, 136, 229, 1.0)).then((icon) {
            if (mounted) {
              setState(() {
                _cachedHistoricalBusMarker = icon;
              });
            }
          });
        }

        // Only add marker if icon is ready
        if (_cachedHistoricalBusMarker != null) {
          historicalMarkers.add(Marker(
            markerId: const MarkerId('historical_bus'),
            position: LatLng(lat, lon),
            icon: _cachedHistoricalBusMarker!,
            infoWindow: const InfoWindow(
              title: 'Historical Position',
            ),
          ));
        }
      }
    }

    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: _initialCamera(),
          onMapCreated: (controller) {
            _mapController = controller;
            // Apply initial dark mode style if enabled
            if (_isDarkMode) {
              controller.setMapStyle(_darkMapStyle);
            }
          },
          onCameraMove: (position) {
            // Track zoom level for dynamic circle sizing
            if (_currentZoom != position.zoom) {
              setState(() {
                _currentZoom = position.zoom;
              });
            }
          },
          markers: {...stopMarkers, ...busMarkers, ...historicalMarkers},
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

      final points = _decodePolyline(encodedPolyline);

      if (points.length < 2) {
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
    }
    return polylines;
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
