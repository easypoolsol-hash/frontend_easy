//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeviceLog {
  /// Returns a new [DeviceLog] instance.
  DeviceLog({
    required this.logId,
    required this.kiosk,
    required this.kioskId,
    required this.logLevel,
    required this.message,
    this.metadata,
    required this.timestamp,
  });

  /// Auto-incrementing log entry ID
  int logId;

  /// Kiosk that generated this log entry
  String kiosk;

  String kioskId;

  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  DeviceLogLogLevelEnum logLevel;

  /// Log message content
  String message;

  /// Additional structured data as JSON
  Object? metadata;

  /// When this log entry was created
  DateTime timestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceLog &&
    other.logId == logId &&
    other.kiosk == kiosk &&
    other.kioskId == kioskId &&
    other.logLevel == logLevel &&
    other.message == message &&
    other.metadata == metadata &&
    other.timestamp == timestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (logId.hashCode) +
    (kiosk.hashCode) +
    (kioskId.hashCode) +
    (logLevel.hashCode) +
    (message.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (timestamp.hashCode);

  @override
  String toString() => 'DeviceLog[logId=$logId, kiosk=$kiosk, kioskId=$kioskId, logLevel=$logLevel, message=$message, metadata=$metadata, timestamp=$timestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'log_id'] = this.logId;
      json[r'kiosk'] = this.kiosk;
      json[r'kiosk_id'] = this.kioskId;
      json[r'log_level'] = this.logLevel;
      json[r'message'] = this.message;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DeviceLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceLog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceLog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceLog(
        logId: mapValueOfType<int>(json, r'log_id')!,
        kiosk: mapValueOfType<String>(json, r'kiosk')!,
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        logLevel: DeviceLogLogLevelEnum.fromJson(json[r'log_level'])!,
        message: mapValueOfType<String>(json, r'message')!,
        metadata: mapValueOfType<Object>(json, r'metadata'),
        timestamp: mapDateTime(json, r'timestamp', r'')!,
      );
    }
    return null;
  }

  static List<DeviceLog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceLog> mapFromJson(dynamic json) {
    final map = <String, DeviceLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceLog-objects as value to a dart map
  static Map<String, List<DeviceLog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceLog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'log_id',
    'kiosk',
    'kiosk_id',
    'log_level',
    'message',
    'timestamp',
  };
}

/// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
class DeviceLogLogLevelEnum {
  /// Instantiate a new enum with the provided [value].
  const DeviceLogLogLevelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEBUG = DeviceLogLogLevelEnum._(r'DEBUG');
  static const INFO = DeviceLogLogLevelEnum._(r'INFO');
  static const WARN = DeviceLogLogLevelEnum._(r'WARN');
  static const ERROR = DeviceLogLogLevelEnum._(r'ERROR');
  static const CRITICAL = DeviceLogLogLevelEnum._(r'CRITICAL');

  /// List of all possible values in this [enum][DeviceLogLogLevelEnum].
  static const values = <DeviceLogLogLevelEnum>[
    DEBUG,
    INFO,
    WARN,
    ERROR,
    CRITICAL,
  ];

  static DeviceLogLogLevelEnum? fromJson(dynamic value) => DeviceLogLogLevelEnumTypeTransformer().decode(value);

  static List<DeviceLogLogLevelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceLogLogLevelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceLogLogLevelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeviceLogLogLevelEnum] to String,
/// and [decode] dynamic data back to [DeviceLogLogLevelEnum].
class DeviceLogLogLevelEnumTypeTransformer {
  factory DeviceLogLogLevelEnumTypeTransformer() => _instance ??= const DeviceLogLogLevelEnumTypeTransformer._();

  const DeviceLogLogLevelEnumTypeTransformer._();

  String encode(DeviceLogLogLevelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeviceLogLogLevelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeviceLogLogLevelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEBUG': return DeviceLogLogLevelEnum.DEBUG;
        case r'INFO': return DeviceLogLogLevelEnum.INFO;
        case r'WARN': return DeviceLogLogLevelEnum.WARN;
        case r'ERROR': return DeviceLogLogLevelEnum.ERROR;
        case r'CRITICAL': return DeviceLogLogLevelEnum.CRITICAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeviceLogLogLevelEnumTypeTransformer] instance.
  static DeviceLogLogLevelEnumTypeTransformer? _instance;
}
