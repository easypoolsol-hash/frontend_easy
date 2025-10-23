// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIKey _$APIKeyFromJson(Map<String, dynamic> json) => $checkedCreate(
  'APIKey',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['key_id', 'kiosk_id', 'last_used', 'created_at'],
    );
    final val = APIKey(
      keyId: $checkedConvert('key_id', (v) => v as String),
      kioskId: $checkedConvert('kiosk_id', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String?),
      permissions: $checkedConvert('permissions', (v) => v),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      expiresAt: $checkedConvert(
        'expires_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      lastUsed: $checkedConvert(
        'last_used',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'keyId': 'key_id',
    'kioskId': 'kiosk_id',
    'isActive': 'is_active',
    'expiresAt': 'expires_at',
    'lastUsed': 'last_used',
    'createdAt': 'created_at',
  },
);

Map<String, dynamic> _$APIKeyToJson(APIKey instance) => <String, dynamic>{
  'key_id': instance.keyId,
  'kiosk_id': instance.kioskId,
  'name': ?instance.name,
  'permissions': ?instance.permissions,
  'is_active': ?instance.isActive,
  'expires_at': ?instance.expiresAt?.toIso8601String(),
  'last_used': instance.lastUsed?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
};
