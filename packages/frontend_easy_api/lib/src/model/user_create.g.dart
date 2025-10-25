// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCreate _$UserCreateFromJson(Map<String, dynamic> json) => $checkedCreate(
  'UserCreate',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'username',
        'email',
        'password',
        'password_confirm',
        'role',
      ],
    );
    final val = UserCreate(
      username: $checkedConvert('username', (v) => v as String),
      email: $checkedConvert('email', (v) => v as String),
      password: $checkedConvert('password', (v) => v as String),
      passwordConfirm: $checkedConvert('password_confirm', (v) => v as String),
      role: $checkedConvert('role', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {'passwordConfirm': 'password_confirm'},
);

Map<String, dynamic> _$UserCreateToJson(UserCreate instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'password_confirm': instance.passwordConfirm,
      'role': instance.role,
    };
