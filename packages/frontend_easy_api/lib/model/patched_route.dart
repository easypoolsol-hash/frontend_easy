//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedRoute {
  /// Returns a new [PatchedRoute] instance.
  PatchedRoute({
    this.routeId,
    this.name,
    this.description,
    this.stops,
    this.schedule,
    this.isActive,
    this.stopCount,
    this.totalStudents,
    this.createdAt,
    this.updatedAt,
  });

  /// UUID primary key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routeId;

  /// Route name (e.g., 'Route A', 'North Loop')
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Detailed description of the route
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Array of stop objects: [{name, lat, lon, sequence, estimated_time}]
  Object? stops;

  /// Schedule data: {morning: {start, end}, afternoon: {start, end}}
  Object? schedule;

  /// Whether this route is currently active
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stopCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totalStudents;

  /// When this route was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// When this route was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedRoute &&
    other.routeId == routeId &&
    other.name == name &&
    other.description == description &&
    other.stops == stops &&
    other.schedule == schedule &&
    other.isActive == isActive &&
    other.stopCount == stopCount &&
    other.totalStudents == totalStudents &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (routeId == null ? 0 : routeId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (stops == null ? 0 : stops!.hashCode) +
    (schedule == null ? 0 : schedule!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (stopCount == null ? 0 : stopCount!.hashCode) +
    (totalStudents == null ? 0 : totalStudents!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'PatchedRoute[routeId=$routeId, name=$name, description=$description, stops=$stops, schedule=$schedule, isActive=$isActive, stopCount=$stopCount, totalStudents=$totalStudents, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.routeId != null) {
      json[r'route_id'] = this.routeId;
    } else {
      json[r'route_id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.stops != null) {
      json[r'stops'] = this.stops;
    } else {
      json[r'stops'] = null;
    }
    if (this.schedule != null) {
      json[r'schedule'] = this.schedule;
    } else {
      json[r'schedule'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
    if (this.stopCount != null) {
      json[r'stop_count'] = this.stopCount;
    } else {
      json[r'stop_count'] = null;
    }
    if (this.totalStudents != null) {
      json[r'total_students'] = this.totalStudents;
    } else {
      json[r'total_students'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedRoute] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedRoute? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedRoute[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedRoute[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedRoute(
        routeId: mapValueOfType<String>(json, r'route_id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        stops: mapValueOfType<Object>(json, r'stops'),
        schedule: mapValueOfType<Object>(json, r'schedule'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        stopCount: mapValueOfType<String>(json, r'stop_count'),
        totalStudents: mapValueOfType<String>(json, r'total_students'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<PatchedRoute> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedRoute>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedRoute.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedRoute> mapFromJson(dynamic json) {
    final map = <String, PatchedRoute>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedRoute.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedRoute-objects as value to a dart map
  static Map<String, List<PatchedRoute>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedRoute>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedRoute.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}
