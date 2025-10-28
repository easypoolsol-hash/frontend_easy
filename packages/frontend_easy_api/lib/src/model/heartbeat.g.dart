// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heartbeat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Heartbeat _$HeartbeatFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Heartbeat',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'timestamp',
        'database_version',
        'student_count',
        'embedding_count',
      ],
    );
    final val = Heartbeat(
      timestamp: $checkedConvert(
        'timestamp',
        (v) => DateTime.parse(v as String),
      ),
      databaseVersion: $checkedConvert('database_version', (v) => v as String),
      databaseHash: $checkedConvert('database_hash', (v) => v as String?),
      studentCount: $checkedConvert('student_count', (v) => (v as num).toInt()),
      embeddingCount: $checkedConvert(
        'embedding_count',
        (v) => (v as num).toInt(),
      ),
      health: $checkedConvert(
        'health',
        (v) =>
            v == null ? null : HealthData.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'databaseVersion': 'database_version',
    'databaseHash': 'database_hash',
    'studentCount': 'student_count',
    'embeddingCount': 'embedding_count',
  },
);

Map<String, dynamic> _$HeartbeatToJson(Heartbeat instance) => <String, dynamic>{
  'timestamp': instance.timestamp.toIso8601String(),
  'database_version': instance.databaseVersion,
  if (instance.databaseHash case final value?) 'database_hash': value,
  'student_count': instance.studentCount,
  'embedding_count': instance.embeddingCount,
  if (instance.health?.toJson() case final value?) 'health': value,
};
