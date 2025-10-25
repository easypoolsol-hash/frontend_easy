//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Bus {
  /// Returns a new [Bus] instance.
  Bus({
    required this.busId,
    required this.licensePlate,
    this.route,
    required this.routeName,
    required this.capacity,
    this.deviceId,
    this.status,
    this.manufacturer,
    this.model,
    this.year,
    this.lastMaintenance,
    required this.assignedStudentsCount,
    required this.utilizationPercentage,
    required this.isAvailable,
    required this.createdAt,
    required this.updatedAt,
  });

  /// UUID primary key
  String busId;

  /// Vehicle license plate number
  String licensePlate;

  /// Route this bus is assigned to
  String? route;

  String routeName;

  /// Maximum number of passengers
  ///
  /// Minimum value: 1
  /// Maximum value: 9223372036854775807
  int capacity;

  /// Kiosk device identifier installed on this bus
  String? deviceId;

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  BusStatusEnum? status;

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

  int assignedStudentsCount;

  double utilizationPercentage;

  bool isAvailable;

  /// When this bus was added to the system
  DateTime createdAt;

  /// When this bus record was last updated
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Bus &&
    other.busId == busId &&
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
    (busId.hashCode) +
    (licensePlate.hashCode) +
    (route == null ? 0 : route!.hashCode) +
    (routeName.hashCode) +
    (capacity.hashCode) +
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (manufacturer == null ? 0 : manufacturer!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (year == null ? 0 : year!.hashCode) +
    (lastMaintenance == null ? 0 : lastMaintenance!.hashCode) +
    (assignedStudentsCount.hashCode) +
    (utilizationPercentage.hashCode) +
    (isAvailable.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Bus[busId=$busId, licensePlate=$licensePlate, route=$route, routeName=$routeName, capacity=$capacity, deviceId=$deviceId, status=$status, manufacturer=$manufacturer, model=$model, year=$year, lastMaintenance=$lastMaintenance, assignedStudentsCount=$assignedStudentsCount, utilizationPercentage=$utilizationPercentage, isAvailable=$isAvailable, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bus_id'] = this.busId;
      json[r'license_plate'] = this.licensePlate;
    if (this.route != null) {
      json[r'route'] = this.route;
    } else {
      json[r'route'] = null;
    }
      json[r'route_name'] = this.routeName;
      json[r'capacity'] = this.capacity;
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
      json[r'assigned_students_count'] = this.assignedStudentsCount;
      json[r'utilization_percentage'] = this.utilizationPercentage;
      json[r'is_available'] = this.isAvailable;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Bus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Bus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Bus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Bus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Bus(
        busId: mapValueOfType<String>(json, r'bus_id')!,
        licensePlate: mapValueOfType<String>(json, r'license_plate')!,
        route: mapValueOfType<String>(json, r'route'),
        routeName: mapValueOfType<String>(json, r'route_name')!,
        capacity: mapValueOfType<int>(json, r'capacity')!,
        deviceId: mapValueOfType<String>(json, r'device_id'),
        status: BusStatusEnum.fromJson(json[r'status']),
        manufacturer: mapValueOfType<String>(json, r'manufacturer'),
        model: mapValueOfType<String>(json, r'model'),
        year: mapValueOfType<int>(json, r'year'),
        lastMaintenance: mapDateTime(json, r'last_maintenance', r''),
        assignedStudentsCount: mapValueOfType<int>(json, r'assigned_students_count')!,
        utilizationPercentage: mapValueOfType<double>(json, r'utilization_percentage')!,
        isAvailable: mapValueOfType<bool>(json, r'is_available')!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<Bus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Bus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Bus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Bus> mapFromJson(dynamic json) {
    final map = <String, Bus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Bus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Bus-objects as value to a dart map
  static Map<String, List<Bus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Bus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Bus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bus_id',
    'license_plate',
    'route_name',
    'capacity',
    'assigned_students_count',
    'utilization_percentage',
    'is_available',
    'created_at',
    'updated_at',
  };
}

/// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
class BusStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BusStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = BusStatusEnum._(r'active');
  static const maintenance = BusStatusEnum._(r'maintenance');
  static const retired = BusStatusEnum._(r'retired');

  /// List of all possible values in this [enum][BusStatusEnum].
  static const values = <BusStatusEnum>[
    active,
    maintenance,
    retired,
  ];

  static BusStatusEnum? fromJson(dynamic value) => BusStatusEnumTypeTransformer().decode(value);

  static List<BusStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BusStatusEnum] to String,
/// and [decode] dynamic data back to [BusStatusEnum].
class BusStatusEnumTypeTransformer {
  factory BusStatusEnumTypeTransformer() => _instance ??= const BusStatusEnumTypeTransformer._();

  const BusStatusEnumTypeTransformer._();

  String encode(BusStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BusStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BusStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return BusStatusEnum.active;
        case r'maintenance': return BusStatusEnum.maintenance;
        case r'retired': return BusStatusEnum.retired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BusStatusEnumTypeTransformer] instance.
  static BusStatusEnumTypeTransformer? _instance;
}


