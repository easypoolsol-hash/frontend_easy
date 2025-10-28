// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_bus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedBus _$PatchedBusFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PatchedBus',
  json,
  ($checkedConvert) {
    final val = PatchedBus(
      busId: $checkedConvert('bus_id', (v) => v as String?),
      busNumber: $checkedConvert('bus_number', (v) => v as String?),
      licensePlate: $checkedConvert('license_plate', (v) => v as String?),
      route: $checkedConvert('route', (v) => v as String?),
      routeName: $checkedConvert('route_name', (v) => v as String?),
      capacity: $checkedConvert('capacity', (v) => (v as num?)?.toInt()),
      deviceId: $checkedConvert('device_id', (v) => v as String?),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(_$PatchedBusStatusEnumEnumMap, v),
      ),
      manufacturer: $checkedConvert('manufacturer', (v) => v as String?),
      model: $checkedConvert('model', (v) => v as String?),
      year: $checkedConvert('year', (v) => (v as num?)?.toInt()),
      lastMaintenance: $checkedConvert(
        'last_maintenance',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      assignedStudentsCount: $checkedConvert(
        'assigned_students_count',
        (v) => (v as num?)?.toInt(),
      ),
      utilizationPercentage: $checkedConvert(
        'utilization_percentage',
        (v) => (v as num?)?.toDouble(),
      ),
      isAvailable: $checkedConvert('is_available', (v) => v as bool?),
      createdAt: $checkedConvert(
        'created_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      updatedAt: $checkedConvert(
        'updated_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'busId': 'bus_id',
    'busNumber': 'bus_number',
    'licensePlate': 'license_plate',
    'routeName': 'route_name',
    'deviceId': 'device_id',
    'lastMaintenance': 'last_maintenance',
    'assignedStudentsCount': 'assigned_students_count',
    'utilizationPercentage': 'utilization_percentage',
    'isAvailable': 'is_available',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$PatchedBusToJson(PatchedBus instance) =>
    <String, dynamic>{
      if (instance.busId case final value?) 'bus_id': value,
      if (instance.busNumber case final value?) 'bus_number': value,
      if (instance.licensePlate case final value?) 'license_plate': value,
      if (instance.route case final value?) 'route': value,
      if (instance.routeName case final value?) 'route_name': value,
      if (instance.capacity case final value?) 'capacity': value,
      if (instance.deviceId case final value?) 'device_id': value,
      if (_$PatchedBusStatusEnumEnumMap[instance.status] case final value?)
        'status': value,
      if (instance.manufacturer case final value?) 'manufacturer': value,
      if (instance.model case final value?) 'model': value,
      if (instance.year case final value?) 'year': value,
      if (instance.lastMaintenance?.toIso8601String() case final value?)
        'last_maintenance': value,
      if (instance.assignedStudentsCount case final value?)
        'assigned_students_count': value,
      if (instance.utilizationPercentage case final value?)
        'utilization_percentage': value,
      if (instance.isAvailable case final value?) 'is_available': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };

const _$PatchedBusStatusEnumEnumMap = {
  PatchedBusStatusEnum.active: 'active',
  PatchedBusStatusEnum.maintenance: 'maintenance',
  PatchedBusStatusEnum.retired: 'retired',
};
