//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedUser {
  /// Returns a new [PatchedUser] instance.
  PatchedUser({
    this.userId,
    this.username,
    this.email,
    this.groups = const [],
    this.groupNames,
    this.isActive,
    this.lastLogin,
    this.createdAt,
    this.updatedAt,
    this.parentId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  List<String> groups;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupNames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  DateTime? lastLogin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  String? parentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedUser &&
    other.userId == userId &&
    other.username == username &&
    other.email == email &&
    _deepEquality.equals(other.groups, groups) &&
    other.groupNames == groupNames &&
    other.isActive == isActive &&
    other.lastLogin == lastLogin &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.parentId == parentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId == null ? 0 : userId!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (groups.hashCode) +
    (groupNames == null ? 0 : groupNames!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (lastLogin == null ? 0 : lastLogin!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode);

  @override
  String toString() => 'PatchedUser[userId=$userId, username=$username, email=$email, groups=$groups, groupNames=$groupNames, isActive=$isActive, lastLogin=$lastLogin, createdAt=$createdAt, updatedAt=$updatedAt, parentId=$parentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
      json[r'groups'] = this.groups;
    if (this.groupNames != null) {
      json[r'group_names'] = this.groupNames;
    } else {
      json[r'group_names'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
    if (this.lastLogin != null) {
      json[r'last_login'] = this.lastLogin!.toUtc().toIso8601String();
    } else {
      json[r'last_login'] = null;
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
    if (this.parentId != null) {
      json[r'parent_id'] = this.parentId;
    } else {
      json[r'parent_id'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedUser(
        userId: mapValueOfType<String>(json, r'user_id'),
        username: mapValueOfType<String>(json, r'username'),
        email: mapValueOfType<String>(json, r'email'),
        groups: json[r'groups'] is Iterable
            ? (json[r'groups'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        groupNames: mapValueOfType<String>(json, r'group_names'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        lastLogin: mapDateTime(json, r'last_login', r''),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        parentId: mapValueOfType<String>(json, r'parent_id'),
      );
    }
    return null;
  }

  static List<PatchedUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedUser> mapFromJson(dynamic json) {
    final map = <String, PatchedUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedUser-objects as value to a dart map
  static Map<String, List<PatchedUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

