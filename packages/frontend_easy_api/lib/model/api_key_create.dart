//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;

class APIKeyCreate {
  /// Returns a new [APIKeyCreate] instance.
  APIKeyCreate({
    required this.kioskId,
    this.name,
    this.permissions,
    this.expiresAt,
    required this.rawKey,
  });

  /// Reference to kiosk device
  String kioskId;

  /// Human-readable name for the key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// JSON object defining scoped permissions
  Object? permissions;

  DateTime? expiresAt;

  String rawKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIKeyCreate &&
    other.kioskId == kioskId &&
    other.name == name &&
    other.permissions == permissions &&
    other.expiresAt == expiresAt &&
    other.rawKey == rawKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kioskId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (rawKey.hashCode);

  @override
  String toString() => 'APIKeyCreate[kioskId=$kioskId, name=$name, permissions=$permissions, expiresAt=$expiresAt, rawKey=$rawKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kiosk_id'] = this.kioskId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
      json[r'raw_key'] = this.rawKey;
    return json;
  }

  /// Returns a new [APIKeyCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIKeyCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIKeyCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIKeyCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIKeyCreate(
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        name: mapValueOfType<String>(json, r'name'),
        permissions: mapValueOfType<Object>(json, r'permissions'),
        expiresAt: mapDateTime(json, r'expires_at', r''),
        rawKey: mapValueOfType<String>(json, r'raw_key')!,
      );
    }
    return null;
  }

  static List<APIKeyCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIKeyCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIKeyCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIKeyCreate> mapFromJson(dynamic json) {
    final map = <String, APIKeyCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIKeyCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIKeyCreate-objects as value to a dart map
  static Map<String, List<APIKeyCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIKeyCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIKeyCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kiosk_id',
    'raw_key',
  };
}

