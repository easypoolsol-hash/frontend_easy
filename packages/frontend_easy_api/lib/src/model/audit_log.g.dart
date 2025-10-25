// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuditLog _$AuditLogFromJson(Map<String, dynamic> json) => $checkedCreate(
  'AuditLog',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'log_id',
        'user_username',
        'user_email',
        'action',
        'resource_type',
        'timestamp',
      ],
    );
    final val = AuditLog(
      logId: $checkedConvert('log_id', (v) => (v as num).toInt()),
      user: $checkedConvert('user', (v) => v as String?),
      userUsername: $checkedConvert('user_username', (v) => v as String),
      userEmail: $checkedConvert('user_email', (v) => v as String),
      action: $checkedConvert(
        'action',
        (v) => $enumDecode(_$AuditLogActionEnumEnumMap, v),
      ),
      resourceType: $checkedConvert(
        'resource_type',
        (v) => $enumDecode(_$AuditLogResourceTypeEnumEnumMap, v),
      ),
      resourceId: $checkedConvert('resource_id', (v) => v as String?),
      changes: $checkedConvert('changes', (v) => v),
      ipAddress: $checkedConvert('ip_address', (v) => v as String?),
      userAgent: $checkedConvert('user_agent', (v) => v as String?),
      timestamp: $checkedConvert(
        'timestamp',
        (v) => DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'logId': 'log_id',
    'userUsername': 'user_username',
    'userEmail': 'user_email',
    'resourceType': 'resource_type',
    'resourceId': 'resource_id',
    'ipAddress': 'ip_address',
    'userAgent': 'user_agent',
  },
);

Map<String, dynamic> _$AuditLogToJson(AuditLog instance) => <String, dynamic>{
  'log_id': instance.logId,
  'user': ?instance.user,
  'user_username': instance.userUsername,
  'user_email': instance.userEmail,
  'action': _$AuditLogActionEnumEnumMap[instance.action]!,
  'resource_type': _$AuditLogResourceTypeEnumEnumMap[instance.resourceType]!,
  'resource_id': ?instance.resourceId,
  'changes': ?instance.changes,
  'ip_address': ?instance.ipAddress,
  'user_agent': ?instance.userAgent,
  'timestamp': instance.timestamp.toIso8601String(),
};

const _$AuditLogActionEnumEnumMap = {
  AuditLogActionEnum.CREATE: 'CREATE',
  AuditLogActionEnum.UPDATE: 'UPDATE',
  AuditLogActionEnum.DELETE: 'DELETE',
  AuditLogActionEnum.LOGIN: 'LOGIN',
  AuditLogActionEnum.LOGOUT: 'LOGOUT',
  AuditLogActionEnum.API_ACCESS: 'API_ACCESS',
};

const _$AuditLogResourceTypeEnumEnumMap = {
  AuditLogResourceTypeEnum.user: 'user',
  AuditLogResourceTypeEnum.student: 'student',
  AuditLogResourceTypeEnum.bus: 'bus',
  AuditLogResourceTypeEnum.kiosk: 'kiosk',
  AuditLogResourceTypeEnum.event: 'event',
  AuditLogResourceTypeEnum.notification: 'notification',
};
