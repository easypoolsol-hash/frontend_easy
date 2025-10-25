//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Route {
  /// Returns a new [Route] instance.
  Route({
    required this.routeId,
    required this.name,
    this.description,
    this.isActive,
    required this.stopCount,
    required this.totalStudents,
    this.routeStops = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  /// UUID primary key
  String routeId;

  /// Route name (e.g., 'Route A', 'North Loop')
  String name;

  /// Detailed description of the route
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Whether this route is currently active
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  int stopCount;

  int totalStudents;

  List<RouteStop> routeStops;

  /// When this route was created
  DateTime createdAt;

  /// When this route was last updated
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Route &&
    other.routeId == routeId &&
    other.name == name &&
    other.description == description &&
    other.isActive == isActive &&
    other.stopCount == stopCount &&
    other.totalStudents == totalStudents &&
    _deepEquality.equals(other.routeStops, routeStops) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (routeId.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (stopCount.hashCode) +
    (totalStudents.hashCode) +
    (routeStops.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Route[routeId=$routeId, name=$name, description=$description, isActive=$isActive, stopCount=$stopCount, totalStudents=$totalStudents, routeStops=$routeStops, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'route_id'] = this.routeId;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
      json[r'stop_count'] = this.stopCount;
      json[r'total_students'] = this.totalStudents;
      json[r'route_stops'] = this.routeStops;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Route] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Route? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Route[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Route[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Route(
        routeId: mapValueOfType<String>(json, r'route_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        stopCount: mapValueOfType<int>(json, r'stop_count')!,
        totalStudents: mapValueOfType<int>(json, r'total_students')!,
        routeStops: RouteStop.listFromJson(json[r'route_stops']),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Route> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Route>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Route.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Route> mapFromJson(dynamic json) {
    final map = <String, Route>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Route.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Route-objects as value to a dart map
  static Map<String, List<Route>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Route>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Route.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'route_id',
    'name',
    'stop_count',
    'total_students',
    'route_stops',
    'created_at',
    'updated_at',
  };
}

