//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SOSAlert {
  /// Returns a new [SOSAlert] instance.
  SOSAlert({
    required this.alertId,
    required this.kioskId,
    required this.busLicensePlate,
    required this.busNumber,
    this.latitude,
    this.longitude,
    this.status,
    this.message,
    this.metadata,
    required this.createdAt,
    required this.acknowledgedAt,
    required this.resolvedAt,
    this.acknowledgedBy,
    this.resolvedBy,
  });

  /// Auto-incrementing alert ID
  int alertId;

  String kioskId;

  String? busLicensePlate;

  String? busNumber;

  /// GPS latitude at time of alert
  double? latitude;

  /// GPS longitude at time of alert
  double? longitude;

  /// Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
  SOSAlertStatusEnum? status;

  /// Optional message/notes from the kiosk operator
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Additional data (battery level, network status, etc.)
  Object? metadata;

  /// When the alert was created
  DateTime createdAt;

  /// When the alert was first acknowledged by staff
  DateTime? acknowledgedAt;

  /// When the alert was resolved
  DateTime? resolvedAt;

  /// Name/ID of person who acknowledged the alert
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? acknowledgedBy;

  /// Name/ID of person who resolved the alert
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resolvedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SOSAlert &&
    other.alertId == alertId &&
    other.kioskId == kioskId &&
    other.busLicensePlate == busLicensePlate &&
    other.busNumber == busNumber &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.status == status &&
    other.message == message &&
    other.metadata == metadata &&
    other.createdAt == createdAt &&
    other.acknowledgedAt == acknowledgedAt &&
    other.resolvedAt == resolvedAt &&
    other.acknowledgedBy == acknowledgedBy &&
    other.resolvedBy == resolvedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alertId.hashCode) +
    (kioskId.hashCode) +
    (busLicensePlate == null ? 0 : busLicensePlate!.hashCode) +
    (busNumber == null ? 0 : busNumber!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (createdAt.hashCode) +
    (acknowledgedAt == null ? 0 : acknowledgedAt!.hashCode) +
    (resolvedAt == null ? 0 : resolvedAt!.hashCode) +
    (acknowledgedBy == null ? 0 : acknowledgedBy!.hashCode) +
    (resolvedBy == null ? 0 : resolvedBy!.hashCode);

  @override
  String toString() => 'SOSAlert[alertId=$alertId, kioskId=$kioskId, busLicensePlate=$busLicensePlate, busNumber=$busNumber, latitude=$latitude, longitude=$longitude, status=$status, message=$message, metadata=$metadata, createdAt=$createdAt, acknowledgedAt=$acknowledgedAt, resolvedAt=$resolvedAt, acknowledgedBy=$acknowledgedBy, resolvedBy=$resolvedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'alert_id'] = this.alertId;
      json[r'kiosk_id'] = this.kioskId;
    if (this.busLicensePlate != null) {
      json[r'bus_license_plate'] = this.busLicensePlate;
    } else {
      json[r'bus_license_plate'] = null;
    }
    if (this.busNumber != null) {
      json[r'bus_number'] = this.busNumber;
    } else {
      json[r'bus_number'] = null;
    }
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
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
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    if (this.acknowledgedAt != null) {
      json[r'acknowledged_at'] = this.acknowledgedAt!.toUtc().toIso8601String();
    } else {
      json[r'acknowledged_at'] = null;
    }
    if (this.resolvedAt != null) {
      json[r'resolved_at'] = this.resolvedAt!.toUtc().toIso8601String();
    } else {
      json[r'resolved_at'] = null;
    }
    if (this.acknowledgedBy != null) {
      json[r'acknowledged_by'] = this.acknowledgedBy;
    } else {
      json[r'acknowledged_by'] = null;
    }
    if (this.resolvedBy != null) {
      json[r'resolved_by'] = this.resolvedBy;
    } else {
      json[r'resolved_by'] = null;
    }
    return json;
  }

  /// Returns a new [SOSAlert] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SOSAlert? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SOSAlert[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SOSAlert[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SOSAlert(
        alertId: mapValueOfType<int>(json, r'alert_id')!,
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        busLicensePlate: mapValueOfType<String>(json, r'bus_license_plate'),
        busNumber: mapValueOfType<String>(json, r'bus_number'),
        latitude: mapValueOfType<double>(json, r'latitude'),
        longitude: mapValueOfType<double>(json, r'longitude'),
        status: SOSAlertStatusEnum.fromJson(json[r'status']),
        message: mapValueOfType<String>(json, r'message'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        acknowledgedAt: mapDateTime(json, r'acknowledged_at', r''),
        resolvedAt: mapDateTime(json, r'resolved_at', r''),
        acknowledgedBy: mapValueOfType<String>(json, r'acknowledged_by'),
        resolvedBy: mapValueOfType<String>(json, r'resolved_by'),
      );
    }
    return null;
  }

  static List<SOSAlert> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SOSAlert>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SOSAlert.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SOSAlert> mapFromJson(dynamic json) {
    final map = <String, SOSAlert>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SOSAlert.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SOSAlert-objects as value to a dart map
  static Map<String, List<SOSAlert>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SOSAlert>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SOSAlert.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'alert_id',
    'kiosk_id',
    'bus_license_plate',
    'bus_number',
    'created_at',
    'acknowledged_at',
    'resolved_at',
  };
}

/// Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
class SOSAlertStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SOSAlertStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = SOSAlertStatusEnum._(r'active');
  static const acknowledged = SOSAlertStatusEnum._(r'acknowledged');
  static const resolved = SOSAlertStatusEnum._(r'resolved');
  static const falseAlarm = SOSAlertStatusEnum._(r'false_alarm');

  /// List of all possible values in this [enum][SOSAlertStatusEnum].
  static const values = <SOSAlertStatusEnum>[
    active,
    acknowledged,
    resolved,
    falseAlarm,
  ];

  static SOSAlertStatusEnum? fromJson(dynamic value) => SOSAlertStatusEnumTypeTransformer().decode(value);

  static List<SOSAlertStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SOSAlertStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SOSAlertStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SOSAlertStatusEnum] to String,
/// and [decode] dynamic data back to [SOSAlertStatusEnum].
class SOSAlertStatusEnumTypeTransformer {
  factory SOSAlertStatusEnumTypeTransformer() => _instance ??= const SOSAlertStatusEnumTypeTransformer._();

  const SOSAlertStatusEnumTypeTransformer._();

  String encode(SOSAlertStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SOSAlertStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SOSAlertStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return SOSAlertStatusEnum.active;
        case r'acknowledged': return SOSAlertStatusEnum.acknowledged;
        case r'resolved': return SOSAlertStatusEnum.resolved;
        case r'false_alarm': return SOSAlertStatusEnum.falseAlarm;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SOSAlertStatusEnumTypeTransformer] instance.
  static SOSAlertStatusEnumTypeTransformer? _instance;
}


