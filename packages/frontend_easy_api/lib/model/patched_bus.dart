//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedBus {
  /// Returns a new [PatchedBus] instance.
  PatchedBus({
    this.busId,
    this.busNumber,
    this.licensePlate,
    this.route,
    this.routeName,
    this.capacity,
    this.deviceId,
    this.status,
    this.manufacturer,
    this.model,
    this.year,
    this.lastMaintenance,
    this.assignedStudentsCount,
    this.utilizationPercentage,
    this.isAvailable,
    this.createdAt,
    this.updatedAt,
  });

  /// UUID primary key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? busId;

  /// School-assigned bus number (e.g., 'BUS-001', 'B-12')
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? busNumber;

  /// Vehicle license plate number
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licensePlate;

  /// Route this bus is assigned to
  String? route;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routeName;

  /// Maximum number of passengers
  ///
  /// Minimum value: 1
  /// Maximum value: 9223372036854775807
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? capacity;

  /// Kiosk device identifier installed on this bus
  String? deviceId;

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  PatchedBusStatusEnum? status;

  /// Bus manufacturer
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manufacturer;

  /// Bus model
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Manufacturing year
  ///
  /// Minimum value: 0
  /// Maximum value: 9223372036854775807
  int? year;

  /// Date of last maintenance
  DateTime? lastMaintenance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? assignedStudentsCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? utilizationPercentage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAvailable;

  /// When this bus was added to the system
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// When this bus record was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedBus &&
    other.busId == busId &&
    other.busNumber == busNumber &&
    other.licensePlate == licensePlate &&
    other.route == route &&
    other.routeName == routeName &&
    other.capacity == capacity &&
    other.deviceId == deviceId &&
    other.status == status &&
    other.manufacturer == manufacturer &&
    other.model == model &&
    other.year == year &&
    other.lastMaintenance == lastMaintenance &&
    other.assignedStudentsCount == assignedStudentsCount &&
    other.utilizationPercentage == utilizationPercentage &&
    other.isAvailable == isAvailable &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (busId == null ? 0 : busId!.hashCode) +
    (busNumber == null ? 0 : busNumber!.hashCode) +
    (licensePlate == null ? 0 : licensePlate!.hashCode) +
    (route == null ? 0 : route!.hashCode) +
    (routeName == null ? 0 : routeName!.hashCode) +
    (capacity == null ? 0 : capacity!.hashCode) +
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (manufacturer == null ? 0 : manufacturer!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (year == null ? 0 : year!.hashCode) +
    (lastMaintenance == null ? 0 : lastMaintenance!.hashCode) +
    (assignedStudentsCount == null ? 0 : assignedStudentsCount!.hashCode) +
    (utilizationPercentage == null ? 0 : utilizationPercentage!.hashCode) +
    (isAvailable == null ? 0 : isAvailable!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'PatchedBus[busId=$busId, busNumber=$busNumber, licensePlate=$licensePlate, route=$route, routeName=$routeName, capacity=$capacity, deviceId=$deviceId, status=$status, manufacturer=$manufacturer, model=$model, year=$year, lastMaintenance=$lastMaintenance, assignedStudentsCount=$assignedStudentsCount, utilizationPercentage=$utilizationPercentage, isAvailable=$isAvailable, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.busId != null) {
      json[r'bus_id'] = this.busId;
    } else {
      json[r'bus_id'] = null;
    }
    if (this.busNumber != null) {
      json[r'bus_number'] = this.busNumber;
    } else {
      json[r'bus_number'] = null;
    }
    if (this.licensePlate != null) {
      json[r'license_plate'] = this.licensePlate;
    } else {
      json[r'license_plate'] = null;
    }
    if (this.route != null) {
      json[r'route'] = this.route;
    } else {
      json[r'route'] = null;
    }
    if (this.routeName != null) {
      json[r'route_name'] = this.routeName;
    } else {
      json[r'route_name'] = null;
    }
    if (this.capacity != null) {
      json[r'capacity'] = this.capacity;
    } else {
      json[r'capacity'] = null;
    }
    if (this.deviceId != null) {
      json[r'device_id'] = this.deviceId;
    } else {
      json[r'device_id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.manufacturer != null) {
      json[r'manufacturer'] = this.manufacturer;
    } else {
      json[r'manufacturer'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.year != null) {
      json[r'year'] = this.year;
    } else {
      json[r'year'] = null;
    }
    if (this.lastMaintenance != null) {
      json[r'last_maintenance'] = _dateFormatter.format(this.lastMaintenance!.toUtc());
    } else {
      json[r'last_maintenance'] = null;
    }
    if (this.assignedStudentsCount != null) {
      json[r'assigned_students_count'] = this.assignedStudentsCount;
    } else {
      json[r'assigned_students_count'] = null;
    }
    if (this.utilizationPercentage != null) {
      json[r'utilization_percentage'] = this.utilizationPercentage;
    } else {
      json[r'utilization_percentage'] = null;
    }
    if (this.isAvailable != null) {
      json[r'is_available'] = this.isAvailable;
    } else {
      json[r'is_available'] = null;
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
    return json;
  }

  /// Returns a new [PatchedBus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedBus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedBus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedBus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchedBus(
        busId: mapValueOfType<String>(json, r'bus_id'),
        busNumber: mapValueOfType<String>(json, r'bus_number'),
        licensePlate: mapValueOfType<String>(json, r'license_plate'),
        route: mapValueOfType<String>(json, r'route'),
        routeName: mapValueOfType<String>(json, r'route_name'),
        capacity: mapValueOfType<int>(json, r'capacity'),
        deviceId: mapValueOfType<String>(json, r'device_id'),
        status: PatchedBusStatusEnum.fromJson(json[r'status']),
        manufacturer: mapValueOfType<String>(json, r'manufacturer'),
        model: mapValueOfType<String>(json, r'model'),
        year: mapValueOfType<int>(json, r'year'),
        lastMaintenance: mapDateTime(json, r'last_maintenance', r''),
        assignedStudentsCount: mapValueOfType<int>(json, r'assigned_students_count'),
        utilizationPercentage: mapValueOfType<double>(json, r'utilization_percentage'),
        isAvailable: mapValueOfType<bool>(json, r'is_available'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<PatchedBus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedBus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedBus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedBus> mapFromJson(dynamic json) {
    final map = <String, PatchedBus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedBus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedBus-objects as value to a dart map
  static Map<String, List<PatchedBus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchedBus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedBus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
class PatchedBusStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PatchedBusStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = PatchedBusStatusEnum._(r'active');
  static const maintenance = PatchedBusStatusEnum._(r'maintenance');
  static const retired = PatchedBusStatusEnum._(r'retired');

  /// List of all possible values in this [enum][PatchedBusStatusEnum].
  static const values = <PatchedBusStatusEnum>[
    active,
    maintenance,
    retired,
  ];

  static PatchedBusStatusEnum? fromJson(dynamic value) => PatchedBusStatusEnumTypeTransformer().decode(value);

  static List<PatchedBusStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchedBusStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedBusStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PatchedBusStatusEnum] to String,
/// and [decode] dynamic data back to [PatchedBusStatusEnum].
class PatchedBusStatusEnumTypeTransformer {
  factory PatchedBusStatusEnumTypeTransformer() => _instance ??= const PatchedBusStatusEnumTypeTransformer._();

  const PatchedBusStatusEnumTypeTransformer._();

  String encode(PatchedBusStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PatchedBusStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PatchedBusStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return PatchedBusStatusEnum.active;
        case r'maintenance': return PatchedBusStatusEnum.maintenance;
        case r'retired': return PatchedBusStatusEnum.retired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PatchedBusStatusEnumTypeTransformer] instance.
  static PatchedBusStatusEnumTypeTransformer? _instance;
}


