// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceLog _$DeviceLogFromJson(Map<String, dynamic> json) => $checkedCreate(
  'DeviceLog',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'log_id',
        'kiosk',
        'kiosk_id',
        'log_level',
        'message',
        'timestamp',
      ],
    );
    final val = DeviceLog(
      logId: $checkedConvert('log_id', (v) => (v as num).toInt()),
      kiosk: $checkedConvert('kiosk', (v) => v as String),
      kioskId: $checkedConvert('kiosk_id', (v) => v as String),
      logLevel: $checkedConvert(
        'log_level',
        (v) => $enumDecode(_$DeviceLogLogLevelEnumEnumMap, v),
      ),
      message: $checkedConvert('message', (v) => v as String),
      metadata: $checkedConvert('metadata', (v) => v),
      timestamp: $checkedConvert(
        'timestamp',
        (v) => DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'logId': 'log_id',
    'kioskId': 'kiosk_id',
    'logLevel': 'log_level',
  },
);

Map<String, dynamic> _$DeviceLogToJson(DeviceLog instance) => <String, dynamic>{
  'log_id': instance.logId,
  'kiosk': instance.kiosk,
  'kiosk_id': instance.kioskId,
  'log_level': _$DeviceLogLogLevelEnumEnumMap[instance.logLevel]!,
  'message': instance.message,
  'metadata': ?instance.metadata,
  'timestamp': instance.timestamp.toIso8601String(),
};

const _$DeviceLogLogLevelEnumEnumMap = {
  DeviceLogLogLevelEnum.DEBUG: 'DEBUG',
  DeviceLogLogLevelEnum.INFO: 'INFO',
  DeviceLogLogLevelEnum.WARN: 'WARN',
  DeviceLogLogLevelEnum.ERROR: 'ERROR',
  DeviceLogLogLevelEnum.CRITICAL: 'CRITICAL',
};
