//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
    this.colorCode,
    this.linePattern,
    this.isActive,
    required this.stopCount,
    required this.totalStudents,
    this.routeStops = const [],
    required this.encodedPolyline,
    required this.busStops,
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

  /// Hex color for map display (e.g., #FF5733)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? colorCode;

  /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  RouteLinePatternEnum? linePattern;

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

  String encodedPolyline;

  String busStops;

  /// When this route was created
  DateTime createdAt;

  /// When this route was last updated
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Route &&
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
    other.busStops == busStops &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (routeId.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (colorCode == null ? 0 : colorCode!.hashCode) +
    (linePattern == null ? 0 : linePattern!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (stopCount.hashCode) +
    (totalStudents.hashCode) +
    (routeStops.hashCode) +
    (encodedPolyline.hashCode) +
    (busStops.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Route[routeId=$routeId, name=$name, description=$description, colorCode=$colorCode, linePattern=$linePattern, isActive=$isActive, stopCount=$stopCount, totalStudents=$totalStudents, routeStops=$routeStops, encodedPolyline=$encodedPolyline, busStops=$busStops, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'route_id'] = this.routeId;
      json[r'name'] = this.name;
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
      json[r'stop_count'] = this.stopCount;
      json[r'total_students'] = this.totalStudents;
      json[r'route_stops'] = this.routeStops;
      json[r'encoded_polyline'] = this.encodedPolyline;
      json[r'bus_stops'] = this.busStops;
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
        colorCode: mapValueOfType<String>(json, r'color_code'),
        linePattern: RouteLinePatternEnum.fromJson(json[r'line_pattern']),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        stopCount: mapValueOfType<int>(json, r'stop_count')!,
        totalStudents: mapValueOfType<int>(json, r'total_students')!,
        routeStops: RouteStop.listFromJson(json[r'route_stops']),
        encodedPolyline: mapValueOfType<String>(json, r'encoded_polyline')!,
        busStops: mapValueOfType<String>(json, r'bus_stops')!,
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
    'encoded_polyline',
    'bus_stops',
    'created_at',
    'updated_at',
  };
}

/// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
class RouteLinePatternEnum {
  /// Instantiate a new enum with the provided [value].
  const RouteLinePatternEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const solid = RouteLinePatternEnum._(r'solid');
  static const dashed = RouteLinePatternEnum._(r'dashed');

  /// List of all possible values in this [enum][RouteLinePatternEnum].
  static const values = <RouteLinePatternEnum>[
    solid,
    dashed,
  ];

  static RouteLinePatternEnum? fromJson(dynamic value) => RouteLinePatternEnumTypeTransformer().decode(value);

  static List<RouteLinePatternEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteLinePatternEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteLinePatternEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RouteLinePatternEnum] to String,
/// and [decode] dynamic data back to [RouteLinePatternEnum].
class RouteLinePatternEnumTypeTransformer {
  factory RouteLinePatternEnumTypeTransformer() => _instance ??= const RouteLinePatternEnumTypeTransformer._();

  const RouteLinePatternEnumTypeTransformer._();

  String encode(RouteLinePatternEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RouteLinePatternEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RouteLinePatternEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'solid': return RouteLinePatternEnum.solid;
        case r'dashed': return RouteLinePatternEnum.dashed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RouteLinePatternEnumTypeTransformer] instance.
  static RouteLinePatternEnumTypeTransformer? _instance;
}


