//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Kiosk {
  /// Returns a new [Kiosk] instance.
  Kiosk({
    required this.kioskId,
    required this.bus,
    required this.busLicensePlate,
    this.firmwareVersion,
    this.lastHeartbeat,
    this.isActive,
    this.batteryLevel,
    this.storageUsedMb,
    required this.statusDisplay,
    required this.isOnline,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
  String kioskId;

  String bus;

  String busLicensePlate;

  /// Current firmware version installed on device
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firmwareVersion;

  /// Timestamp of last heartbeat received from device
  DateTime? lastHeartbeat;

  /// Whether this kiosk is active and accepting requests
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? batteryLevel;

  /// Storage used in MB on the device
  ///
  /// Minimum value: 0
  /// Maximum value: 9223372036854775807
  int? storageUsedMb;

  String statusDisplay;

  String isOnline;

  /// When this kiosk was registered
  DateTime createdAt;

  /// When this kiosk record was last updated
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Kiosk &&
    other.kioskId == kioskId &&
    other.bus == bus &&
    other.busLicensePlate == busLicensePlate &&
    other.firmwareVersion == firmwareVersion &&
    other.lastHeartbeat == lastHeartbeat &&
    other.isActive == isActive &&
    other.batteryLevel == batteryLevel &&
    other.storageUsedMb == storageUsedMb &&
    other.statusDisplay == statusDisplay &&
    other.isOnline == isOnline &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kioskId.hashCode) +
    (bus.hashCode) +
    (busLicensePlate.hashCode) +
    (firmwareVersion == null ? 0 : firmwareVersion!.hashCode) +
    (lastHeartbeat == null ? 0 : lastHeartbeat!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (batteryLevel == null ? 0 : batteryLevel!.hashCode) +
    (storageUsedMb == null ? 0 : storageUsedMb!.hashCode) +
    (statusDisplay.hashCode) +
    (isOnline.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Kiosk[kioskId=$kioskId, bus=$bus, busLicensePlate=$busLicensePlate, firmwareVersion=$firmwareVersion, lastHeartbeat=$lastHeartbeat, isActive=$isActive, batteryLevel=$batteryLevel, storageUsedMb=$storageUsedMb, statusDisplay=$statusDisplay, isOnline=$isOnline, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kiosk_id'] = this.kioskId;
      json[r'bus'] = this.bus;
      json[r'bus_license_plate'] = this.busLicensePlate;
    if (this.firmwareVersion != null) {
      json[r'firmware_version'] = this.firmwareVersion;
    } else {
      json[r'firmware_version'] = null;
    }
    if (this.lastHeartbeat != null) {
      json[r'last_heartbeat'] = this.lastHeartbeat!.toUtc().toIso8601String();
    } else {
      json[r'last_heartbeat'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
    if (this.batteryLevel != null) {
      json[r'battery_level'] = this.batteryLevel;
    } else {
      json[r'battery_level'] = null;
    }
    if (this.storageUsedMb != null) {
      json[r'storage_used_mb'] = this.storageUsedMb;
    } else {
      json[r'storage_used_mb'] = null;
    }
      json[r'status_display'] = this.statusDisplay;
      json[r'is_online'] = this.isOnline;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Kiosk] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Kiosk? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Kiosk[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Kiosk[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Kiosk(
        kioskId: mapValueOfType<String>(json, r'kiosk_id')!,
        bus: mapValueOfType<String>(json, r'bus')!,
        busLicensePlate: mapValueOfType<String>(json, r'bus_license_plate')!,
        firmwareVersion: mapValueOfType<String>(json, r'firmware_version'),
        lastHeartbeat: mapDateTime(json, r'last_heartbeat', r''),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        batteryLevel: mapValueOfType<double>(json, r'battery_level'),
        storageUsedMb: mapValueOfType<int>(json, r'storage_used_mb'),
        statusDisplay: mapValueOfType<String>(json, r'status_display')!,
        isOnline: mapValueOfType<String>(json, r'is_online')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Kiosk> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Kiosk>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Kiosk.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Kiosk> mapFromJson(dynamic json) {
    final map = <String, Kiosk>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Kiosk.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Kiosk-objects as value to a dart map
  static Map<String, List<Kiosk>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Kiosk>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Kiosk.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kiosk_id',
    'bus',
    'bus_license_plate',
    'status_display',
    'is_online',
    'created_at',
    'updated_at',
  };
}

