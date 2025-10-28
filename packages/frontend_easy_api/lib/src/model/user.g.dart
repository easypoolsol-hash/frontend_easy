// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
  'User',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'user_id',
        'username',
        'email',
        'role',
        'role_name',
        'last_login',
        'created_at',
        'updated_at',
      ],
    );
    final val = User(
      userId: $checkedConvert('user_id', (v) => v as String),
      username: $checkedConvert('username', (v) => v as String),
      email: $checkedConvert('email', (v) => v as String),
      role: $checkedConvert('role', (v) => v as String),
      roleName: $checkedConvert('role_name', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      lastLogin: $checkedConvert(
        'last_login',
        (v) => v == null ? null : DateTime.parse(v as String),
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
    'userId': 'user_id',
    'roleName': 'role_name',
    'isActive': 'is_active',
    'lastLogin': 'last_login',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'user_id': instance.userId,
  'username': instance.username,
  'email': instance.email,
  'role': instance.role,
  'role_name': instance.roleName,
  if (instance.isActive case final value?) 'is_active': value,
  'last_login': instance.lastLogin?.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
