//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;

class ApiV1ParentsMeBusesLocationRetrieve200Response {
  /// Returns a new [ApiV1ParentsMeBusesLocationRetrieve200Response] instance.
  ApiV1ParentsMeBusesLocationRetrieve200Response({
    this.busId,
    this.licensePlate,
    this.location,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? busId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licensePlate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation? location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiV1ParentsMeBusesLocationRetrieve200Response &&
    other.busId == busId &&
    other.licensePlate == licensePlate &&
    other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (busId == null ? 0 : busId!.hashCode) +
    (licensePlate == null ? 0 : licensePlate!.hashCode) +
    (location == null ? 0 : location!.hashCode);

  @override
  String toString() => 'ApiV1ParentsMeBusesLocationRetrieve200Response[busId=$busId, licensePlate=$licensePlate, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.busId != null) {
      json[r'bus_id'] = this.busId;
    } else {
      json[r'bus_id'] = null;
    }
    if (this.licensePlate != null) {
      json[r'license_plate'] = this.licensePlate;
    } else {
      json[r'license_plate'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    return json;
  }

  /// Returns a new [ApiV1ParentsMeBusesLocationRetrieve200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiV1ParentsMeBusesLocationRetrieve200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiV1ParentsMeBusesLocationRetrieve200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiV1ParentsMeBusesLocationRetrieve200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiV1ParentsMeBusesLocationRetrieve200Response(
        busId: mapValueOfType<String>(json, r'bus_id'),
        licensePlate: mapValueOfType<String>(json, r'license_plate'),
        location: ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation.fromJson(json[r'location']),
      );
    }
    return null;
  }

  static List<ApiV1ParentsMeBusesLocationRetrieve200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiV1ParentsMeBusesLocationRetrieve200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiV1ParentsMeBusesLocationRetrieve200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiV1ParentsMeBusesLocationRetrieve200Response> mapFromJson(dynamic json) {
    final map = <String, ApiV1ParentsMeBusesLocationRetrieve200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiV1ParentsMeBusesLocationRetrieve200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiV1ParentsMeBusesLocationRetrieve200Response-objects as value to a dart map
  static Map<String, List<ApiV1ParentsMeBusesLocationRetrieve200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiV1ParentsMeBusesLocationRetrieve200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiV1ParentsMeBusesLocationRetrieve200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

