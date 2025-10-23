// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedParent _$PatchedParentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedParent',
  json,
  ($checkedConvert) {
    final val = PatchedParent(
      parentId: $checkedConvert('parent_id', (v) => v as String?),
      decryptedName: $checkedConvert('decrypted_name', (v) => v as String?),
      decryptedPhone: $checkedConvert('decrypted_phone', (v) => v as String?),
      decryptedEmail: $checkedConvert('decrypted_email', (v) => v as String?),
      name: $checkedConvert('name', (v) => v as String?),
      phone: $checkedConvert('phone', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String?),
      createdAt: $checkedConvert(
        'created_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'parentId': 'parent_id',
    'decryptedName': 'decrypted_name',
    'decryptedPhone': 'decrypted_phone',
    'decryptedEmail': 'decrypted_email',
    'createdAt': 'created_at',
  },
);

Map<String, dynamic> _$PatchedParentToJson(PatchedParent instance) =>
    <String, dynamic>{
      'parent_id': ?instance.parentId,
      'decrypted_name': ?instance.decryptedName,
      'decrypted_phone': ?instance.decryptedPhone,
      'decrypted_email': ?instance.decryptedEmail,
      'name': ?instance.name,
      'phone': ?instance.phone,
      'email': ?instance.email,
      'created_at': ?instance.createdAt?.toIso8601String(),
    };
