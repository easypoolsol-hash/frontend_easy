//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditLog {
  /// Returns a new [AuditLog] instance.
  AuditLog({
    required this.logId,
    this.user,
    required this.userUsername,
    required this.userEmail,
    required this.action,
    required this.resourceType,
    this.resourceId,
    this.changes,
    this.ipAddress,
    this.userAgent,
    required this.timestamp,
  });

  int logId;

  String? user;

  String userUsername;

  String userEmail;

  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
  AuditLogActionEnum action;

  /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  AuditLogResourceTypeEnum resourceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceId;

  /// JSON object of changes made
  Object? changes;

  String? ipAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userAgent;

  DateTime timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditLog &&
    other.logId == logId &&
    other.user == user &&
    other.userUsername == userUsername &&
    other.userEmail == userEmail &&
    other.action == action &&
    other.resourceType == resourceType &&
    other.resourceId == resourceId &&
    other.changes == changes &&
    other.ipAddress == ipAddress &&
    other.userAgent == userAgent &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logId.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (userUsername.hashCode) +
    (userEmail.hashCode) +
    (action.hashCode) +
    (resourceType.hashCode) +
    (resourceId == null ? 0 : resourceId!.hashCode) +
    (changes == null ? 0 : changes!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (userAgent == null ? 0 : userAgent!.hashCode) +
    (timestamp.hashCode);

  @override
  String toString() => 'AuditLog[logId=$logId, user=$user, userUsername=$userUsername, userEmail=$userEmail, action=$action, resourceType=$resourceType, resourceId=$resourceId, changes=$changes, ipAddress=$ipAddress, userAgent=$userAgent, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'log_id'] = this.logId;
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
      json[r'user_username'] = this.userUsername;
      json[r'user_email'] = this.userEmail;
      json[r'action'] = this.action;
      json[r'resource_type'] = this.resourceType;
    if (this.resourceId != null) {
      json[r'resource_id'] = this.resourceId;
    } else {
      json[r'resource_id'] = null;
    }
    if (this.changes != null) {
      json[r'changes'] = this.changes;
    } else {
      json[r'changes'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ip_address'] = this.ipAddress;
    } else {
      json[r'ip_address'] = null;
    }
    if (this.userAgent != null) {
      json[r'user_agent'] = this.userAgent;
    } else {
      json[r'user_agent'] = null;
    }
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AuditLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditLog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditLog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditLog(
        logId: mapValueOfType<int>(json, r'log_id')!,
        user: mapValueOfType<String>(json, r'user'),
        userUsername: mapValueOfType<String>(json, r'user_username')!,
        userEmail: mapValueOfType<String>(json, r'user_email')!,
        action: AuditLogActionEnum.fromJson(json[r'action'])!,
        resourceType: AuditLogResourceTypeEnum.fromJson(json[r'resource_type'])!,
        resourceId: mapValueOfType<String>(json, r'resource_id'),
        changes: mapValueOfType<Object>(json, r'changes'),
        ipAddress: mapValueOfType<String>(json, r'ip_address'),
        userAgent: mapValueOfType<String>(json, r'user_agent'),
        timestamp: mapDateTime(json, r'timestamp', r'')!,
      );
    }
    return null;
  }

  static List<AuditLog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditLog> mapFromJson(dynamic json) {
    final map = <String, AuditLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditLog-objects as value to a dart map
  static Map<String, List<AuditLog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditLog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'log_id',
    'user_username',
    'user_email',
    'action',
    'resource_type',
    'timestamp',
  };
}

/// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
class AuditLogActionEnum {
  /// Instantiate a new enum with the provided [value].
  const AuditLogActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATE = AuditLogActionEnum._(r'CREATE');
  static const UPDATE = AuditLogActionEnum._(r'UPDATE');
  static const DELETE = AuditLogActionEnum._(r'DELETE');
  static const LOGIN = AuditLogActionEnum._(r'LOGIN');
  static const LOGOUT = AuditLogActionEnum._(r'LOGOUT');
  static const API_ACCESS = AuditLogActionEnum._(r'API_ACCESS');

  /// List of all possible values in this [enum][AuditLogActionEnum].
  static const values = <AuditLogActionEnum>[
    CREATE,
    UPDATE,
    DELETE,
    LOGIN,
    LOGOUT,
    API_ACCESS,
  ];

  static AuditLogActionEnum? fromJson(dynamic value) => AuditLogActionEnumTypeTransformer().decode(value);

  static List<AuditLogActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLogActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLogActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AuditLogActionEnum] to String,
/// and [decode] dynamic data back to [AuditLogActionEnum].
class AuditLogActionEnumTypeTransformer {
  factory AuditLogActionEnumTypeTransformer() => _instance ??= const AuditLogActionEnumTypeTransformer._();

  const AuditLogActionEnumTypeTransformer._();

  String encode(AuditLogActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuditLogActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuditLogActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATE': return AuditLogActionEnum.CREATE;
        case r'UPDATE': return AuditLogActionEnum.UPDATE;
        case r'DELETE': return AuditLogActionEnum.DELETE;
        case r'LOGIN': return AuditLogActionEnum.LOGIN;
        case r'LOGOUT': return AuditLogActionEnum.LOGOUT;
        case r'API_ACCESS': return AuditLogActionEnum.API_ACCESS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AuditLogActionEnumTypeTransformer] instance.
  static AuditLogActionEnumTypeTransformer? _instance;
}


/// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
class AuditLogResourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AuditLogResourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const user = AuditLogResourceTypeEnum._(r'user');
  static const student = AuditLogResourceTypeEnum._(r'student');
  static const bus = AuditLogResourceTypeEnum._(r'bus');
  static const kiosk = AuditLogResourceTypeEnum._(r'kiosk');
  static const event = AuditLogResourceTypeEnum._(r'event');
  static const notification = AuditLogResourceTypeEnum._(r'notification');

  /// List of all possible values in this [enum][AuditLogResourceTypeEnum].
  static const values = <AuditLogResourceTypeEnum>[
    user,
    student,
    bus,
    kiosk,
    event,
    notification,
  ];

  static AuditLogResourceTypeEnum? fromJson(dynamic value) => AuditLogResourceTypeEnumTypeTransformer().decode(value);

  static List<AuditLogResourceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLogResourceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLogResourceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AuditLogResourceTypeEnum] to String,
/// and [decode] dynamic data back to [AuditLogResourceTypeEnum].
class AuditLogResourceTypeEnumTypeTransformer {
  factory AuditLogResourceTypeEnumTypeTransformer() => _instance ??= const AuditLogResourceTypeEnumTypeTransformer._();

  const AuditLogResourceTypeEnumTypeTransformer._();

  String encode(AuditLogResourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuditLogResourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuditLogResourceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'user': return AuditLogResourceTypeEnum.user;
        case r'student': return AuditLogResourceTypeEnum.student;
        case r'bus': return AuditLogResourceTypeEnum.bus;
        case r'kiosk': return AuditLogResourceTypeEnum.kiosk;
        case r'event': return AuditLogResourceTypeEnum.event;
        case r'notification': return AuditLogResourceTypeEnum.notification;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AuditLogResourceTypeEnumTypeTransformer] instance.
  static AuditLogResourceTypeEnumTypeTransformer? _instance;
}


