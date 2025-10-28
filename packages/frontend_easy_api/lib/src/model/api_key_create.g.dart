// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIKeyCreate _$APIKeyCreateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'APIKeyCreate',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['kiosk_id', 'raw_key']);
        final val = APIKeyCreate(
          kioskId: $checkedConvert('kiosk_id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String?),
          permissions: $checkedConvert('permissions', (v) => v),
          expiresAt: $checkedConvert(
            'expires_at',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          rawKey: $checkedConvert('raw_key', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'kioskId': 'kiosk_id',
        'expiresAt': 'expires_at',
        'rawKey': 'raw_key',
      },
    );

Map<String, dynamic> _$APIKeyCreateToJson(APIKeyCreate instance) =>
    <String, dynamic>{
      'kiosk_id': instance.kioskId,
      if (instance.name case final value?) 'name': value,
      if (instance.permissions case final value?) 'permissions': value,
      if (instance.expiresAt?.toIso8601String() case final value?)
        'expires_at': value,
      'raw_key': instance.rawKey,
    };
