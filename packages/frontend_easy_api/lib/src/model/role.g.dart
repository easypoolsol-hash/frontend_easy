// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Role',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['role_id', 'name', 'created_at', 'updated_at'],
    );
    final val = Role(
      roleId: $checkedConvert('role_id', (v) => v as String),
      name: $checkedConvert(
        'name',
        (v) => $enumDecode(_$RoleNameEnumEnumMap, v),
      ),
      description: $checkedConvert('description', (v) => v as String?),
      permissions: $checkedConvert('permissions', (v) => v),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
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
    'roleId': 'role_id',
    'isActive': 'is_active',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
  'role_id': instance.roleId,
  'name': _$RoleNameEnumEnumMap[instance.name]!,
  if (instance.description case final value?) 'description': value,
  if (instance.permissions case final value?) 'permissions': value,
  if (instance.isActive case final value?) 'is_active': value,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$RoleNameEnumEnumMap = {
  RoleNameEnum.superAdmin: 'super_admin',
  RoleNameEnum.backendEngineer: 'backend_engineer',
  RoleNameEnum.schoolAdmin: 'school_admin',
  RoleNameEnum.parent: 'parent',
};
