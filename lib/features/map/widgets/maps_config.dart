// Google Maps API key is now managed by backend for security
// Frontend uses google_maps_flutter which doesn't require API key for web
const String googleMapsApiKey = '';

/// Default map center location (Kolkata, India)
class HomeLocation {
  /// Kolkata latitude (Victoria Memorial area)
  static const double latitude = 22.5726;

  /// Kolkata longitude (Victoria Memorial area)
  static const double longitude = 88.3639;
}
