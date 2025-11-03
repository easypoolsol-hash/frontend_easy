//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BusLocation {
  /// Returns a new [BusLocation] instance.
  BusLocation({
    required this.locationId,
    required this.latitude,
    required this.longitude,
    this.accuracy,
    this.speed,
    this.heading,
    required this.timestamp,
  });

  /// Auto-incrementing location entry ID
  int locationId;

  /// GPS latitude coordinate
  double latitude;

  /// GPS longitude coordinate
  double longitude;

  /// GPS accuracy in meters
  double? accuracy;

  /// Speed in km/h
  double? speed;

  /// Heading/bearing in degrees (0-360)
  double? heading;

  /// When this location was recorded by the kiosk
  DateTime timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BusLocation &&
    other.locationId == locationId &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.accuracy == accuracy &&
    other.speed == speed &&
    other.heading == heading &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (locationId.hashCode) +
    (latitude.hashCode) +
    (longitude.hashCode) +
    (accuracy == null ? 0 : accuracy!.hashCode) +
    (speed == null ? 0 : speed!.hashCode) +
    (heading == null ? 0 : heading!.hashCode) +
    (timestamp.hashCode);

  @override
  String toString() => 'BusLocation[locationId=$locationId, latitude=$latitude, longitude=$longitude, accuracy=$accuracy, speed=$speed, heading=$heading, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'location_id'] = this.locationId;
      json[r'latitude'] = this.latitude;
      json[r'longitude'] = this.longitude;
    if (this.accuracy != null) {
      json[r'accuracy'] = this.accuracy;
    } else {
      json[r'accuracy'] = null;
    }
    if (this.speed != null) {
      json[r'speed'] = this.speed;
    } else {
      json[r'speed'] = null;
    }
    if (this.heading != null) {
      json[r'heading'] = this.heading;
    } else {
      json[r'heading'] = null;
    }
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [BusLocation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BusLocation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BusLocation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BusLocation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BusLocation(
        locationId: mapValueOfType<int>(json, r'location_id')!,
        latitude: mapValueOfType<double>(json, r'latitude')!,
        longitude: mapValueOfType<double>(json, r'longitude')!,
        accuracy: mapValueOfType<double>(json, r'accuracy'),
        speed: mapValueOfType<double>(json, r'speed'),
        heading: mapValueOfType<double>(json, r'heading'),
        timestamp: mapDateTime(json, r'timestamp', r'')!,
      );
    }
    return null;
  }

  static List<BusLocation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusLocation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusLocation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BusLocation> mapFromJson(dynamic json) {
    final map = <String, BusLocation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BusLocation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BusLocation-objects as value to a dart map
  static Map<String, List<BusLocation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BusLocation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BusLocation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'location_id',
    'latitude',
    'longitude',
    'timestamp',
  };
}

