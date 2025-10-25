// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parent _$ParentFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Parent',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'parent_id',
        'decrypted_name',
        'decrypted_phone',
        'decrypted_email',
        'name',
        'phone',
        'email',
        'created_at',
      ],
    );
    final val = Parent(
      parentId: $checkedConvert('parent_id', (v) => v as String),
      decryptedName: $checkedConvert('decrypted_name', (v) => v as String),
      decryptedPhone: $checkedConvert('decrypted_phone', (v) => v as String),
      decryptedEmail: $checkedConvert('decrypted_email', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      phone: $checkedConvert('phone', (v) => v as String),
      email: $checkedConvert('email', (v) => v as String),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
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

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
  'parent_id': instance.parentId,
  'decrypted_name': instance.decryptedName,
  'decrypted_phone': instance.decryptedPhone,
  'decrypted_email': instance.decryptedEmail,
  'name': instance.name,
  'phone': instance.phone,
  'email': instance.email,
  'created_at': instance.createdAt.toIso8601String(),
};
