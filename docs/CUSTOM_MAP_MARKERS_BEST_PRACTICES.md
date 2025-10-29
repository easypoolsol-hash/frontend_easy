# Custom Map Markers Best Practices (2025)

## Overview
This document outlines the best practices for implementing custom logo markers on Google Maps in Flutter applications, based on industry standards and performance recommendations for 2025.

## Implementation Summary

### What We Implemented
- Custom bus logo markers using `BitmapDescriptor.asset()`
- Marker caching to avoid repeated asset loading
- Optimized marker sizing (106x106 pixels)
- Proper anchor positioning for accurate map placement
- Fallback handling for asset loading failures

## Best Practices

### 1. Asset Format Selection

**Recommended Formats (2025):**
- **SVG** - Vector format, scalable without quality loss (preferred)
- **PNG** - Raster format with transparency support
- **WebP** - Modern format with better compression

**Design Guidelines:**
- Use transparent backgrounds
- Square dimensions (up to 150x150 pixels)
- For logos: Use submark or circular placement
- High-contrast colors against map backgrounds
- Include V-shaped bottom edge for location targeting

### 2. Marker Loading Strategy

**Preload and Cache (Recommended):**
```dart
// Load markers once in initState()
@override
void initState() {
  super.initState();
  _loadCustomMarkers();
}

Future<void> _loadCustomMarkers() async {
  const imageConfig = ImageConfiguration(size: Size(106, 106));
  _cachedMarker = await BitmapDescriptor.asset(
    imageConfig,
    'assets/icons/marker.svg',
  );
  if (mounted) setState(() {});
}
```

**Why This Approach:**
- Loads assets once, not per marker
- Reduces memory pressure
- Eliminates async rendering delays
- Better performance with multiple markers

### 3. Optimal Marker Sizing

**2025 Performance Recommendations:**
- **Default size:** 35-48 pixels (standard markers)
- **Optimized size:** 106x106 pixels (frequent updates, multiple markers)
- **Maximum size:** 150x150 pixels (high-detail markers)
- **Minimum size:** 15 pixels (cluster indicators)

**Size Selection Criteria:**
```dart
// For static markers or low marker count
const Size(48, 48)

// For dynamic updates and high marker count (RECOMMENDED)
const Size(106, 106)

// For high-detail, less frequent updates
const Size(150, 150)
```

### 4. Anchor Point Configuration

**Proper Positioning:**
```dart
Marker(
  markerId: MarkerId('marker_id'),
  position: LatLng(lat, lon),
  icon: customIcon,
  anchor: const Offset(0.5, 0.5), // Center alignment
)
```

**Anchor Options:**
- `Offset(0.5, 0.5)` - Center (recommended for icons)
- `Offset(0.5, 1.0)` - Bottom center (for pin-style markers)
- `Offset(0.0, 0.0)` - Top-left corner

### 5. Performance Optimization

**For Large Datasets (100+ markers):**

#### a) Viewport-Based Loading
```dart
onCameraIdle: () {
  // Load only markers in current viewport
  _updateVisibleMarkers(_mapController.visibleRegion);
}
```

#### b) Marker Clustering
```dart
// Use google_maps_cluster_manager package
ClusterManager(
  _items,
  _updateMarkers,
  markerBuilder: _markerBuilder,
)
```

#### c) Progressive Loading
```dart
// Throttle updates to avoid UI freezing
Timer? _debounceTimer;

void _updateMarkers() {
  _debounceTimer?.cancel();
  _debounceTimer = Timer(Duration(milliseconds: 300), () {
    // Update markers
  });
}
```

### 6. Asset Configuration

**pubspec.yaml Setup:**
```yaml
flutter:
  assets:
    - assets/icons/        # Include all icons
    - assets/images/       # Include all images
```

**Folder Structure:**
```
assets/
├── icons/
│   ├── bus.svg           # Custom bus marker
│   ├── bus_active.svg    # Active state variant
│   └── bus_inactive.svg  # Inactive state variant
└── images/
    └── map/
        └── custom_markers/
```

### 7. Error Handling

**Robust Fallback Strategy:**
```dart
Future<void> _loadCustomMarkers() async {
  try {
    const imageConfig = ImageConfiguration(size: Size(106, 106));
    _customMarker = await BitmapDescriptor.asset(
      imageConfig,
      'assets/icons/marker.svg',
    );
    if (mounted) setState(() {});
  } catch (e) {
    // Fallback to default marker
    debugPrint('Failed to load custom marker: $e');
    _customMarker = BitmapDescriptor.defaultMarker;
  }
}
```

### 8. Multiple Marker States

**State-Based Markers:**
```dart
// Cache different states
BitmapDescriptor? _markerActive;
BitmapDescriptor? _markerInactive;
BitmapDescriptor? _markerSelected;

// Use appropriate marker based on state
final icon = isSelected
    ? _markerSelected
    : (isActive ? _markerActive : _markerInactive);
```

### 9. Dynamic Marker Customization

**For Runtime Customization (Advanced):**
```dart
// Convert widget to bitmap for custom rendering
Future<BitmapDescriptor> _createCustomMarker(Widget widget) async {
  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder);
  final painter = _WidgetPainter(widget);

  painter.paint(canvas, Size(106, 106));
  final picture = recorder.endRecording();
  final image = await picture.toImage(106, 106);
  final bytes = await image.toByteData(format: ui.ImageByteFormat.png);

  return BitmapDescriptor.bytes(bytes!.buffer.asUint8List());
}
```

**Note:** This approach is more resource-intensive; use only when necessary.

### 10. Advanced Features (2025)

#### Google Maps Advanced Markers API (JavaScript)
For web platforms, consider using AdvancedMarkerElement:
- Supports HTML/CSS customization
- Interactive animations
- Better accessibility
- DOM-based rendering

#### Marker Clustering
For 1000+ markers, implement clustering:
```dart
dependencies:
  google_maps_cluster_manager: ^3.0.0
```

## Implementation Checklist

- [ ] Choose appropriate asset format (SVG recommended)
- [ ] Design marker with transparent background
- [ ] Add assets to pubspec.yaml
- [ ] Implement marker preloading in initState()
- [ ] Cache loaded markers in state
- [ ] Set optimal size (106x106 for performance)
- [ ] Configure proper anchor point (0.5, 0.5)
- [ ] Add error handling with fallback
- [ ] Test with multiple markers
- [ ] Consider clustering for large datasets
- [ ] Implement viewport-based loading if needed
- [ ] Profile performance with DevTools

## Common Pitfalls to Avoid

1. **Loading markers inside build()** - Causes performance issues
2. **Not caching markers** - Repeated asset loading is expensive
3. **Using oversized images** - Increases memory usage
4. **Missing error handling** - App crashes on asset load failure
5. **Wrong anchor point** - Markers appear offset from actual location
6. **Synchronous loading** - Blocks UI thread
7. **Not using clustering** - Poor performance with 100+ markers

## Performance Metrics

**Target Performance:**
- Marker load time: < 100ms (cached)
- Map update time: < 16ms (60 FPS)
- Memory per marker: < 50KB (with caching)
- Support: 100+ markers without clustering, 10,000+ with clustering

## Resources

### Official Documentation
- [Google Maps Flutter Package](https://pub.dev/packages/google_maps_flutter)
- [Custom Markers Guide](https://developers.google.com/maps/flutter-package/samples/custom-marker)
- [Advanced Markers API](https://developers.google.com/maps/documentation/javascript/advanced-markers/graphic-markers)

### Performance Optimization
- [Marker Clustering](https://medium.com/@bilalkayaa0/implementing-marker-clustering-with-google-maps-in-flutter-2025-70daa4b6f3fc)
- [Performance Best Practices](https://vibe-studio.ai/insights/implementing-google-maps-advanced-features-clustering-and-heatmaps-in-flutter)

## Implementation in This Project

**File:** `lib/features/map/widgets/route_map_widget.dart`

**Key Features:**
1. Preloaded custom bus logo (106x106 pixels)
2. Cached markers for active/inactive states
3. Center-anchored positioning
4. Fallback to default markers on error
5. Optimized for real-time WebSocket updates

**Asset Location:** `assets/icons/bus.svg`

**Configuration:** Already set up in `pubspec.yaml`

## Future Enhancements

Consider implementing:
1. **Marker clustering** - When bus fleet exceeds 50 vehicles
2. **Viewport loading** - Load only visible markers
3. **Custom info windows** - Rich marker tooltips
4. **Animated markers** - Smooth position transitions
5. **Multi-resolution assets** - 1x, 2x, 3x variants for different DPI

---

**Last Updated:** October 2025
**Framework:** Flutter 3.9+
**Package:** google_maps_flutter ^2.13.1
