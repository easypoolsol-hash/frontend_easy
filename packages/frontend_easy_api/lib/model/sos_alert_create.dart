//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SOSAlertCreate {
  /// Returns a new [SOSAlertCreate] instance.
  SOSAlertCreate({
    this.latitude,
    this.longitude,
    this.message,
    this.metadata,
  });

  /// GPS latitude at time of alert
  double? latitude;

  /// GPS longitude at time of alert
  double? longitude;

  /// Optional message from operator
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Additional context data
  Object? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SOSAlertCreate &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.message == message &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'SOSAlertCreate[latitude=$latitude, longitude=$longitude, message=$message, metadata=$metadata]';

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
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [SOSAlertCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SOSAlertCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SOSAlertCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SOSAlertCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SOSAlertCreate(
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        message: mapValueOfType<String>(json, r'message'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<SOSAlertCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SOSAlertCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SOSAlertCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SOSAlertCreate> mapFromJson(dynamic json) {
    final map = <String, SOSAlertCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SOSAlertCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SOSAlertCreate-objects as value to a dart map
  static Map<String, List<SOSAlertCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SOSAlertCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SOSAlertCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

