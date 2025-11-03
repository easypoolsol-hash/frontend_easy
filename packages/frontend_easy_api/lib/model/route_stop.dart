//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RouteStop {
  /// Returns a new [RouteStop] instance.
  RouteStop({
    required this.busStop,
    required this.busStopName,
    required this.latitude,
    required this.longitude,
    required this.sequence,
    this.waypoints,
  });

  /// Bus stop on this route
  String busStop;

  String busStopName;

  double latitude;

  double longitude;

  /// Order of this stop in the route (1-based)
  ///
  /// Minimum value: 0
  /// Maximum value: 9223372036854775807
  int sequence;

  /// Path coordinates to NEXT stop: [{lat, lon}, ...]
  Object? waypoints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteStop &&
    other.busStop == busStop &&
    other.busStopName == busStopName &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.sequence == sequence &&
    other.waypoints == waypoints;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (busStop.hashCode) +
    (busStopName.hashCode) +
    (latitude.hashCode) +
    (longitude.hashCode) +
    (sequence.hashCode) +
    (waypoints == null ? 0 : waypoints!.hashCode);

  @override
  String toString() => 'RouteStop[busStop=$busStop, busStopName=$busStopName, latitude=$latitude, longitude=$longitude, sequence=$sequence, waypoints=$waypoints]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bus_stop'] = this.busStop;
      json[r'bus_stop_name'] = this.busStopName;
      json[r'latitude'] = this.latitude;
      json[r'longitude'] = this.longitude;
      json[r'sequence'] = this.sequence;
    if (this.waypoints != null) {
      json[r'waypoints'] = this.waypoints;
    } else {
      json[r'waypoints'] = null;
    }
    return json;
  }

  /// Returns a new [RouteStop] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouteStop? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouteStop[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouteStop[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouteStop(
        busStop: mapValueOfType<String>(json, r'bus_stop')!,
        busStopName: mapValueOfType<String>(json, r'bus_stop_name')!,
        latitude: mapValueOfType<double>(json, r'latitude')!,
        longitude: mapValueOfType<double>(json, r'longitude')!,
        sequence: mapValueOfType<int>(json, r'sequence')!,
        waypoints: mapValueOfType<Object>(json, r'waypoints'),
      );
    }
    return null;
  }

  static List<RouteStop> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteStop>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteStop.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouteStop> mapFromJson(dynamic json) {
    final map = <String, RouteStop>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteStop.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouteStop-objects as value to a dart map
  static Map<String, List<RouteStop>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouteStop>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RouteStop.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bus_stop',
    'bus_stop_name',
    'latitude',
    'longitude',
    'sequence',
  };
}

