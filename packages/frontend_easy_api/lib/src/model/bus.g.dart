// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bus _$BusFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Bus',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'bus_id',
        'license_plate',
        'route_name',
        'capacity',
        'assigned_students_count',
        'utilization_percentage',
        'is_available',
        'created_at',
        'updated_at',
      ],
    );
    final val = Bus(
      busId: $checkedConvert('bus_id', (v) => v as String),
      licensePlate: $checkedConvert('license_plate', (v) => v as String),
      route: $checkedConvert('route', (v) => v as String?),
      routeName: $checkedConvert('route_name', (v) => v as String),
      capacity: $checkedConvert('capacity', (v) => (v as num).toInt()),
      deviceId: $checkedConvert('device_id', (v) => v as String?),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(_$BusStatusEnumEnumMap, v),
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
        (v) => v as String,
      ),
      utilizationPercentage: $checkedConvert(
        'utilization_percentage',
        (v) => v as String,
      ),
      isAvailable: $checkedConvert('is_available', (v) => v as String),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
      updatedAt: $checkedConvert(
        'updated_at',
        (v) => DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'busId': 'bus_id',
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

Map<String, dynamic> _$BusToJson(Bus instance) => <String, dynamic>{
  'bus_id': instance.busId,
  'license_plate': instance.licensePlate,
  'route': ?instance.route,
  'route_name': instance.routeName,
  'capacity': instance.capacity,
  'device_id': ?instance.deviceId,
  'status': ?_$BusStatusEnumEnumMap[instance.status],
  'manufacturer': ?instance.manufacturer,
  'model': ?instance.model,
  'year': ?instance.year,
  'last_maintenance': ?instance.lastMaintenance?.toIso8601String(),
  'assigned_students_count': instance.assignedStudentsCount,
  'utilization_percentage': instance.utilizationPercentage,
  'is_available': instance.isAvailable,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$BusStatusEnumEnumMap = {
  BusStatusEnum.active: 'active',
  BusStatusEnum.maintenance: 'maintenance',
  BusStatusEnum.retired: 'retired',
};
