// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_obtain_pair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenObtainPair _$TokenObtainPairFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TokenObtainPair', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['username', 'password', 'access', 'refresh'],
      );
      final val = TokenObtainPair(
        username: $checkedConvert('username', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String),
        access: $checkedConvert('access', (v) => v as String),
        refresh: $checkedConvert('refresh', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$TokenObtainPairToJson(TokenObtainPair instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'access': instance.access,
      'refresh': instance.refresh,
    };
