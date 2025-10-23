// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_basic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusBasic _$BusBasicFromJson(Map<String, dynamic> json) => $checkedCreate(
  'BusBasic',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'bus_id',
        'license_plate',
        'capacity',
        'created_at',
        'updated_at',
      ],
    );
    final val = BusBasic(
      busId: $checkedConvert('bus_id', (v) => v as String),
      licensePlate: $checkedConvert('license_plate', (v) => v as String),
      capacity: $checkedConvert('capacity', (v) => (v as num).toInt()),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(_$BusBasicStatusEnumEnumMap, v),
      ),
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
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$BusBasicToJson(BusBasic instance) => <String, dynamic>{
  'bus_id': instance.busId,
  'license_plate': instance.licensePlate,
  'capacity': instance.capacity,
  'status': ?_$BusBasicStatusEnumEnumMap[instance.status],
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$BusBasicStatusEnumEnumMap = {
  BusBasicStatusEnum.active: 'active',
  BusBasicStatusEnum.maintenance: 'maintenance',
  BusBasicStatusEnum.retired: 'retired',
};
