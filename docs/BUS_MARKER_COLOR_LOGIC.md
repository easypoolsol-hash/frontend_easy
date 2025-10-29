# Bus Marker Color Logic - Implementation Guide

## Overview
Dynamic bus marker coloring system that uses a single black SVG and applies colors programmatically based on bus status and GPS location freshness.

## Architecture

### Single Responsibility Principle

**Color Logic:** [lib/core/theme/bus_marker_colors.dart](lib/core/theme/bus_marker_colors.dart)
- ONLY determines what color a bus marker should be
- No rendering, no UI, no data fetching - just color decisions

**Rendering Logic:** [lib/features/map/widgets/route_map_widget.dart](lib/features/map/widgets/route_map_widget.dart)
- ONLY renders markers using colors from BusMarkerColors
- No color decision logic - delegates to BusMarkerColors

## Color Priority System

Colors are assigned in strict priority order:

### Priority 1: Selected State (Highest)
**Color:** Yellow (#E6A800)
**Reason:** User visibility - selected bus always stands out
**Overrides:** Everything else

### Priority 2: Very Stale GPS (Critical)
**Color:** Red (#F44336)
**Trigger:** GPS not updated for >15 minutes
**Reason:** Safety critical - bus location unreliable
**Overrides:** All status colors

### Priority 3: Stale GPS (Warning)
**Color:** Orange (#FF9800)
**Trigger:** GPS not updated for >5 minutes
**Reason:** Concerning - location may be inaccurate
**Overrides:** Normal status colors

### Priority 4: Bus Status (Normal Operation)
Colors based on operational status:

| Status | Color | Hex | Use Case |
|--------|-------|-----|----------|
| Active/Running | Green | #4CAF50 | Bus operating normally |
| Inactive/Parked | Gray | #9E9E9E | Bus not in service |
| Warning/Delayed | Orange | #FF9800 | Attention needed |
| Error/Emergency | Red | #F44336 | Critical issue |

## Implementation Details

### 1. Color Decision (BusMarkerColors)

```dart
// Get color for a bus
final color = BusMarkerColors.getColorForStatus(
  'active',  // Bus status
  isSelected: false,  // Is user selected?
  lastLocationUpdate: DateTime.now(),  // GPS timestamp
);
```

**Parameters:**
- `status` (required): Bus operational status string
- `isSelected`: Whether user tapped this bus
- `lastLocationUpdate`: Timestamp of last GPS update (for staleness check)
- `customStaleThreshold`: Override 5-minute default
- `customVeryStaleThreshold`: Override 15-minute default

### 2. Dynamic SVG Coloring (RouteMapWidget)

```dart
// Single black SVG colored dynamically
Future<BitmapDescriptor> _getColoredBusMarker(Color color) async {
  // 1. Check cache first
  if (_markerCache.containsKey(colorKey)) {
    return _markerCache[colorKey]!;
  }

  // 2. Load black SVG
  final pictureInfo = await vg.loadPicture(
    const SvgAssetLoader('assets/icons/bus.svg'),
    null,
  );

  // 3. Apply color filter
  final paint = Paint()..colorFilter = ColorFilter.mode(color, BlendMode.srcIn);

  // 4. Render to bitmap
  final image = await picture.toImage(106, 106);

  // 5. Cache for reuse
  _markerCache[colorKey] = descriptor;

  return descriptor;
}
```

**Benefits:**
- ✓ Single SVG source file
- ✓ Cached by color (reuse for multiple buses)
- ✓ Memory efficient (106x106 pixels)
- ✓ Instant color changes without asset regeneration

### 3. Marker Building with Color Logic

```dart
// For each bus on map
for (final busFeature in busLocations) {
  final status = properties['status'];
  final lastUpdate = DateTime.parse(properties['last_location_update']);

  // Get color using centralized logic
  final markerColor = BusMarkerColors.getColorForStatus(
    status,
    isSelected: busId == selectedBusId,
    lastLocationUpdate: lastUpdate,
  );

  // Get colored marker (cached if color already used)
  final icon = await _getColoredBusMarker(markerColor);

  // Add to map
  markers.add(Marker(
    markerId: MarkerId('bus_$busId'),
    position: LatLng(lat, lon),
    icon: icon,
  ));
}
```

## GPS Staleness Logic

### Thresholds (Configurable)

```dart
// Default values in BusMarkerColors
static const Duration staleThreshold = Duration(minutes: 5);
static const Duration veryStaleThreshold = Duration(minutes: 15);
```

### Detection

```dart
final now = DateTime.now();
final timeSinceUpdate = now.difference(lastLocationUpdate);

if (timeSinceUpdate > veryStaleThreshold) {
  return veryStale;  // RED - Critical
}

if (timeSinceUpdate > staleThreshold) {
  return stale;  // ORANGE - Warning
}
```

### Why This Matters

**Safety First:**
- Stale GPS = bus position unreliable
- Red color alerts admins immediately
- Prevents relying on outdated location data
- Critical for student safety monitoring

## Data Requirements

### Required Properties from Backend

The bus location data must include:

```json
{
  "properties": {
    "id": "bus_123",
    "name": "Bus A1",
    "status": "active",  // Required: active, inactive, warning, error, etc.
    "last_location_update": "2025-10-26T14:30:00Z"  // Required: ISO 8601 timestamp
  },
  "geometry": {
    "coordinates": [88.3639, 22.5726]
  }
}
```

**Field Validation:**
- `status`: String, case-insensitive, defaults to "inactive" if unrecognized
- `last_location_update`: ISO 8601 string, null if not available (no staleness check)

## Color Meanings for Users

### Tooltip/InfoWindow Text

The system provides human-readable explanations:

```dart
final reason = BusMarkerColors.getColorReason(
  'active',
  lastLocationUpdate: someTimestamp,
);
// Returns: "GPS stale (8min)" or "active" or "Selected"
```

**Displayed to users as:**
- "Bus A1 • GPS critically outdated (18min)"
- "Bus B2 • active"
- "Bus C3 • Selected • delayed"

## Performance Optimization

### Marker Caching Strategy

```dart
// Cache by color (not by bus)
final Map<String, BitmapDescriptor> _markerCache = {};
```

**Why cache by color?**
- Multiple buses share same color (all green active buses)
- One green marker reused for 50 active buses
- Reduces memory from 50 markers to 5-7 markers (typical colors)

**Cache hit rate:**
- Typical scenario: 100 buses, ~6 different colors
- Cache hits: 94% (94 buses reuse cached markers)
- Memory savings: ~85% vs individual markers

### Rendering Performance

**Target:** 60 FPS map updates with real-time WebSocket

**Optimizations:**
1. Async marker loading (non-blocking UI)
2. Color-based caching (reduce redundant processing)
3. 106x106 pixel markers (optimal size/quality)
4. SVG loaded once, colored multiple times

## Testing Scenarios

### Test Case 1: Active Bus with Fresh GPS
```dart
Input:
  status: "active"
  lastLocationUpdate: DateTime.now()
  isSelected: false

Expected:
  Color: Green (#4CAF50)
  Reason: "active"
```

### Test Case 2: Stale GPS (7 minutes)
```dart
Input:
  status: "active"
  lastLocationUpdate: DateTime.now().subtract(Duration(minutes: 7))
  isSelected: false

Expected:
  Color: Orange (#FF9800)
  Reason: "GPS stale (7min)"
```

### Test Case 3: Very Stale GPS (20 minutes)
```dart
Input:
  status: "active"
  lastLocationUpdate: DateTime.now().subtract(Duration(minutes: 20))
  isSelected: false

Expected:
  Color: Red (#F44336)
  Reason: "GPS critically outdated (20min)"
```

### Test Case 4: Selected Bus (Overrides All)
```dart
Input:
  status: "inactive"
  lastLocationUpdate: DateTime.now().subtract(Duration(minutes: 30))
  isSelected: true

Expected:
  Color: Yellow (#E6A800)
  Reason: "Selected"
```

## Future Enhancements

### Potential Additions

1. **Pulsating Animation** for critically stale GPS
2. **Custom Thresholds** per route/school
3. **Night Mode Colors** for dark theme
4. **Accessibility Mode** with patterns/shapes
5. **Battery Status** integration (low battery = different marker)

## Troubleshooting

### Issue: All buses showing gray

**Check:**
1. Backend sending correct `status` field?
2. Status values match expected strings?
3. Console errors about marker loading?

### Issue: Colors not updating in real-time

**Check:**
1. WebSocket updates triggering setState()?
2. `lastLocationUpdate` timestamp updating?
3. Cache being cleared when needed?

### Issue: Performance degradation

**Check:**
1. How many unique colors being generated?
2. Cache size growing unbounded?
3. Markers being recreated on every update?

## Code References

**Color Logic:** [lib/core/theme/bus_marker_colors.dart:22](lib/core/theme/bus_marker_colors.dart#L22)
- `getColorForStatus()` - Main color decision method
- `getColorReason()` - Human-readable explanation

**Marker Rendering:** [lib/features/map/widgets/route_map_widget.dart:91](lib/features/map/widgets/route_map_widget.dart#L91)
- `_getColoredBusMarker()` - SVG coloring with caching
- `_buildBusMarkers()` - Integration with BusMarkerColors

---

**Last Updated:** October 2025
**Author:** AI-assisted implementation
**Status:** ✓ Implemented and tested
