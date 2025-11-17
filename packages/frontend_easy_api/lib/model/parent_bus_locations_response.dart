//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;

class ParentBusLocationsResponse {
  /// Returns a new [ParentBusLocationsResponse] instance.
  ParentBusLocationsResponse({
    this.type = 'FeatureCollection',
    this.features = const [],
  });

  String type;

  /// GeoJSON features array
  List<Map<String, Object>> features;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ParentBusLocationsResponse &&
    other.type == type &&
    _deepEquality.equals(other.features, features);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (features.hashCode);

  @override
  String toString() => 'ParentBusLocationsResponse[type=$type, features=$features]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'features'] = this.features;
    return json;
  }

  /// Returns a new [ParentBusLocationsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ParentBusLocationsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ParentBusLocationsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ParentBusLocationsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ParentBusLocationsResponse(
        type: mapValueOfType<String>(json, r'type') ?? 'FeatureCollection',
        features: Map.listFromJson(json[r'features']),
      );
    }
    return null;
  }

  static List<ParentBusLocationsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ParentBusLocationsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ParentBusLocationsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ParentBusLocationsResponse> mapFromJson(dynamic json) {
    final map = <String, ParentBusLocationsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ParentBusLocationsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ParentBusLocationsResponse-objects as value to a dart map
  static Map<String, List<ParentBusLocationsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ParentBusLocationsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ParentBusLocationsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'features',
  };
}

