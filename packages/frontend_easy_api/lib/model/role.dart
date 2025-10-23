//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Role {
  /// Returns a new [Role] instance.
  Role({
    required this.roleId,
    required this.name,
    this.description,
    this.permissions,
    this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  String roleId;

  /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
  RoleNameEnum name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// JSON object defining role permissions
  Object? permissions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Role &&
    other.roleId == roleId &&
    other.name == name &&
    other.description == description &&
    other.permissions == permissions &&
    other.isActive == isActive &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (roleId.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Role[roleId=$roleId, name=$name, description=$description, permissions=$permissions, isActive=$isActive, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'role_id'] = this.roleId;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
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
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Role] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Role? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Role[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Role[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Role(
        roleId: mapValueOfType<String>(json, r'role_id')!,
        name: RoleNameEnum.fromJson(json[r'name'])!,
        description: mapValueOfType<String>(json, r'description'),
        permissions: mapValueOfType<Object>(json, r'permissions'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Role> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Role>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Role.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Role> mapFromJson(dynamic json) {
    final map = <String, Role>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Role.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Role-objects as value to a dart map
  static Map<String, List<Role>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Role>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Role.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'role_id',
    'name',
    'created_at',
    'updated_at',
  };
}

/// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
class RoleNameEnum {
  /// Instantiate a new enum with the provided [value].
  const RoleNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const superAdmin = RoleNameEnum._(r'super_admin');
  static const backendEngineer = RoleNameEnum._(r'backend_engineer');
  static const schoolAdmin = RoleNameEnum._(r'school_admin');
  static const parent = RoleNameEnum._(r'parent');

  /// List of all possible values in this [enum][RoleNameEnum].
  static const values = <RoleNameEnum>[
    superAdmin,
    backendEngineer,
    schoolAdmin,
    parent,
  ];

  static RoleNameEnum? fromJson(dynamic value) => RoleNameEnumTypeTransformer().decode(value);

  static List<RoleNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoleNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoleNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RoleNameEnum] to String,
/// and [decode] dynamic data back to [RoleNameEnum].
class RoleNameEnumTypeTransformer {
  factory RoleNameEnumTypeTransformer() => _instance ??= const RoleNameEnumTypeTransformer._();

  const RoleNameEnumTypeTransformer._();

  String encode(RoleNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RoleNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RoleNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'super_admin': return RoleNameEnum.superAdmin;
        case r'backend_engineer': return RoleNameEnum.backendEngineer;
        case r'school_admin': return RoleNameEnum.schoolAdmin;
        case r'parent': return RoleNameEnum.parent;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RoleNameEnumTypeTransformer] instance.
  static RoleNameEnumTypeTransformer? _instance;
}
