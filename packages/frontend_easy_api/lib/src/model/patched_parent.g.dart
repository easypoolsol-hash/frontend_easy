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
      if (instance.parentId case final value?) 'parent_id': value,
      if (instance.decryptedName case final value?) 'decrypted_name': value,
      if (instance.decryptedPhone case final value?) 'decrypted_phone': value,
      if (instance.decryptedEmail case final value?) 'decrypted_email': value,
      if (instance.name case final value?) 'name': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.email case final value?) 'email': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
    };
