const String googleMapsApiKey = String.fromEnvironment('GOOGLE_MAPS_API_KEY', defaultValue: 'YOUR_API_KEY_HERE');

/// Default map center location (Kolkata, India)
class HomeLocation {
  /// Kolkata latitude (Victoria Memorial area)
  static const double latitude = 22.5726;

  /// Kolkata longitude (Victoria Memorial area)
  static const double longitude = 88.3639;
}
