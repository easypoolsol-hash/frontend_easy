// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_api_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedAPIKey _$PatchedAPIKeyFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedAPIKey',
      json,
      ($checkedConvert) {
        final val = PatchedAPIKey(
          keyId: $checkedConvert('key_id', (v) => v as String?),
          kioskId: $checkedConvert('kiosk_id', (v) => v as String?),
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
            (v) => v == null ? null : DateTime.parse(v as String),
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

Map<String, dynamic> _$PatchedAPIKeyToJson(PatchedAPIKey instance) =>
    <String, dynamic>{
      'key_id': ?instance.keyId,
      'kiosk_id': ?instance.kioskId,
      'name': ?instance.name,
      'permissions': ?instance.permissions,
      'is_active': ?instance.isActive,
      'expires_at': ?instance.expiresAt?.toIso8601String(),
      'last_used': ?instance.lastUsed?.toIso8601String(),
      'created_at': ?instance.createdAt?.toIso8601String(),
    };
