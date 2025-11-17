//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;

class PatchedRoute {
  /// Returns a new [PatchedRoute] instance.
  PatchedRoute({
    this.routeId,
    this.name,
    this.description,
    this.colorCode,
    this.linePattern,
    this.isActive,
    this.stopCount,
    this.totalStudents,
    this.routeStops = const [],
    this.encodedPolyline,
    this.busStops = const [],
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

  /// Hex color for map display (e.g., #FF5733)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? colorCode;

  /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  PatchedRouteLinePatternEnum? linePattern;

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
  int? stopCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalStudents;

  List<RouteStop> routeStops;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? encodedPolyline;

  List<Map<String, Object>> busStops;

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
    other.colorCode == colorCode &&
    other.linePattern == linePattern &&
    other.isActive == isActive &&
    other.stopCount == stopCount &&
    other.totalStudents == totalStudents &&
    _deepEquality.equals(other.routeStops, routeStops) &&
    other.encodedPolyline == encodedPolyline &&
    _deepEquality.equals(other.busStops, busStops) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (routeId == null ? 0 : routeId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (colorCode == null ? 0 : colorCode!.hashCode) +
    (linePattern == null ? 0 : linePattern!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (stopCount == null ? 0 : stopCount!.hashCode) +
    (totalStudents == null ? 0 : totalStudents!.hashCode) +
    (routeStops.hashCode) +
    (encodedPolyline == null ? 0 : encodedPolyline!.hashCode) +
    (busStops.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'PatchedRoute[routeId=$routeId, name=$name, description=$description, colorCode=$colorCode, linePattern=$linePattern, isActive=$isActive, stopCount=$stopCount, totalStudents=$totalStudents, routeStops=$routeStops, encodedPolyline=$encodedPolyline, busStops=$busStops, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.colorCode != null) {
      json[r'color_code'] = this.colorCode;
    } else {
      json[r'color_code'] = null;
    }
    if (this.linePattern != null) {
      json[r'line_pattern'] = this.linePattern;
    } else {
      json[r'line_pattern'] = null;
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
      json[r'route_stops'] = this.routeStops;
    if (this.encodedPolyline != null) {
      json[r'encoded_polyline'] = this.encodedPolyline;
    } else {
      json[r'encoded_polyline'] = null;
    }
      json[r'bus_stops'] = this.busStops;
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
        colorCode: mapValueOfType<String>(json, r'color_code'),
        linePattern: PatchedRouteLinePatternEnum.fromJson(json[r'line_pattern']),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        stopCount: mapValueOfType<int>(json, r'stop_count'),
        totalStudents: mapValueOfType<int>(json, r'total_students'),
        routeStops: RouteStop.listFromJson(json[r'route_stops']),
        encodedPolyline: mapValueOfType<String>(json, r'encoded_polyline'),
        busStops: Map.listFromJson(json[r'bus_stops']),
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

/// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
class PatchedRouteLinePatternEnum {
  /// Instantiate a new enum with the provided [value].
  const PatchedRouteLinePatternEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const solid = PatchedRouteLinePatternEnum._(r'solid');
  static const dashed = PatchedRouteLinePatternEnum._(r'dashed');

  /// List of all possible values in this [enum][PatchedRouteLinePatternEnum].
  static const values = <PatchedRouteLinePatternEnum>[
    solid,
    dashed,
  ];

  static PatchedRouteLinePatternEnum? fromJson(dynamic value) => PatchedRouteLinePatternEnumTypeTransformer().decode(value);

  static List<PatchedRouteLinePatternEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedRouteLinePatternEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedRouteLinePatternEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PatchedRouteLinePatternEnum] to String,
/// and [decode] dynamic data back to [PatchedRouteLinePatternEnum].
class PatchedRouteLinePatternEnumTypeTransformer {
  factory PatchedRouteLinePatternEnumTypeTransformer() => _instance ??= const PatchedRouteLinePatternEnumTypeTransformer._();

  const PatchedRouteLinePatternEnumTypeTransformer._();

  String encode(PatchedRouteLinePatternEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatchedRouteLinePatternEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatchedRouteLinePatternEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'solid': return PatchedRouteLinePatternEnum.solid;
        case r'dashed': return PatchedRouteLinePatternEnum.dashed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatchedRouteLinePatternEnumTypeTransformer] instance.
  static PatchedRouteLinePatternEnumTypeTransformer? _instance;
}


