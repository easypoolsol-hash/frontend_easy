//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;

class BusBasic {
  /// Returns a new [BusBasic] instance.
  BusBasic({
    required this.busId,
    required this.busNumber,
    this.capacity,
    this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  /// UUID primary key
  String busId;

  /// School-assigned bus number (e.g., 'BUS-001', 'B-12')
  String busNumber;

  /// Maximum number of passengers
  ///
  /// Minimum value: 1
  /// Maximum value: 9223372036854775807
  int? capacity;

  /// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
  BusBasicStatusEnum? status;

  /// When this bus was added to the system
  DateTime createdAt;

  /// When this bus record was last updated
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BusBasic &&
    other.busId == busId &&
    other.busNumber == busNumber &&
    other.capacity == capacity &&
    other.status == status &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (busId.hashCode) +
    (busNumber.hashCode) +
    (capacity == null ? 0 : capacity!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'BusBasic[busId=$busId, busNumber=$busNumber, capacity=$capacity, status=$status, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bus_id'] = this.busId;
      json[r'bus_number'] = this.busNumber;
    if (this.capacity != null) {
      json[r'capacity'] = this.capacity;
    } else {
      json[r'capacity'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [BusBasic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BusBasic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BusBasic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BusBasic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BusBasic(
        busId: mapValueOfType<String>(json, r'bus_id')!,
        busNumber: mapValueOfType<String>(json, r'bus_number')!,
        capacity: mapValueOfType<int>(json, r'capacity'),
        status: BusBasicStatusEnum.fromJson(json[r'status']),
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<BusBasic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusBasic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusBasic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BusBasic> mapFromJson(dynamic json) {
    final map = <String, BusBasic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BusBasic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BusBasic-objects as value to a dart map
  static Map<String, List<BusBasic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BusBasic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BusBasic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bus_id',
    'bus_number',
    'created_at',
    'updated_at',
  };
}

/// Current operational status  * `active` - Active * `maintenance` - Under Maintenance * `retired` - Retired
class BusBasicStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BusBasicStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = BusBasicStatusEnum._(r'active');
  static const maintenance = BusBasicStatusEnum._(r'maintenance');
  static const retired = BusBasicStatusEnum._(r'retired');

  /// List of all possible values in this [enum][BusBasicStatusEnum].
  static const values = <BusBasicStatusEnum>[
    active,
    maintenance,
    retired,
  ];

  static BusBasicStatusEnum? fromJson(dynamic value) => BusBasicStatusEnumTypeTransformer().decode(value);

  static List<BusBasicStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BusBasicStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BusBasicStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BusBasicStatusEnum] to String,
/// and [decode] dynamic data back to [BusBasicStatusEnum].
class BusBasicStatusEnumTypeTransformer {
  factory BusBasicStatusEnumTypeTransformer() => _instance ??= const BusBasicStatusEnumTypeTransformer._();

  const BusBasicStatusEnumTypeTransformer._();

  String encode(BusBasicStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BusBasicStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BusBasicStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return BusBasicStatusEnum.active;
        case r'maintenance': return BusBasicStatusEnum.maintenance;
        case r'retired': return BusBasicStatusEnum.retired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BusBasicStatusEnumTypeTransformer] instance.
  static BusBasicStatusEnumTypeTransformer? _instance;
}


