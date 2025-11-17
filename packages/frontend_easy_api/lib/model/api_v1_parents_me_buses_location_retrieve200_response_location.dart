//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation {
  /// Returns a new [ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation] instance.
  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation({
    this.latitude,
    this.longitude,
    this.lastUpdated,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? latitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? longitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.lastUpdated == lastUpdated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (lastUpdated == null ? 0 : lastUpdated!.hashCode);

  @override
  String toString() => 'ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation[latitude=$latitude, longitude=$longitude, lastUpdated=$lastUpdated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.lastUpdated != null) {
      json[r'last_updated'] = this.lastUpdated;
    } else {
      json[r'last_updated'] = null;
    }
    return json;
  }

  /// Returns a new [ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation(
        latitude: num.parse('${json[r'latitude']}'),
        longitude: num.parse('${json[r'longitude']}'),
        lastUpdated: mapValueOfType<String>(json, r'last_updated'),
      );
    }
    return null;
  }

  static List<ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation> mapFromJson(dynamic json) {
    final map = <String, ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation-objects as value to a dart map
  static Map<String, List<ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

