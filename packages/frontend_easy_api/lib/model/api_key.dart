//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class APIKey {
  /// Returns a new [APIKey] instance.
  APIKey({
    required this.keyId,
    required this.kioskId,
    this.name,
    this.permissions,
    this.isActive,
    this.expiresAt,
    required this.lastUsed,
    required this.createdAt,
  });

  String keyId;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  DateTime? expiresAt;

  DateTime? lastUsed;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is APIKey &&
    other.keyId == keyId &&
    other.kioskId == kioskId &&
    other.name == name &&
    other.permissions == permissions &&
    other.isActive == isActive &&
    other.expiresAt == expiresAt &&
    other.lastUsed == lastUsed &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keyId.hashCode) +
    (kioskId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (lastUsed == null ? 0 : lastUsed!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'APIKey[keyId=$keyId, kioskId=$kioskId, name=$name, permissions=$permissions, isActive=$isActive, expiresAt=$expiresAt, lastUsed=$lastUsed, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key_id'] = this.keyId;
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
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expires_at'] = null;
    }
    if (this.lastUsed != null) {
      json[r'last_used'] = this.lastUsed!.toUtc().toIso8601String();
    } else {
      json[r'last_used'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [APIKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static APIKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "APIKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "APIKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return APIKey(
        keyId: mapValueOfType<String>(json, r'key_id')!,
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        name: mapValueOfType<String>(json, r'name'),
        permissions: mapValueOfType<Object>(json, r'permissions'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        expiresAt: mapDateTime(json, r'expires_at', r''),
        lastUsed: mapDateTime(json, r'last_used', r''),
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<APIKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <APIKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = APIKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, APIKey> mapFromJson(dynamic json) {
    final map = <String, APIKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = APIKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of APIKey-objects as value to a dart map
  static Map<String, List<APIKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<APIKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = APIKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key_id',
    'kiosk_id',
    'last_used',
    'created_at',
  };
}

