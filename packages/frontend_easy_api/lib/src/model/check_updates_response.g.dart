// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_updates_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckUpdatesResponse _$CheckUpdatesResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CheckUpdatesResponse',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'needs_update',
        'current_version',
        'student_count',
        'embedding_count',
        'content_hash',
      ],
    );
    final val = CheckUpdatesResponse(
      needsUpdate: $checkedConvert('needs_update', (v) => v as bool),
      currentVersion: $checkedConvert('current_version', (v) => v as String),
      studentCount: $checkedConvert('student_count', (v) => (v as num).toInt()),
      embeddingCount: $checkedConvert(
        'embedding_count',
        (v) => (v as num).toInt(),
      ),
      contentHash: $checkedConvert('content_hash', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'needsUpdate': 'needs_update',
    'currentVersion': 'current_version',
    'studentCount': 'student_count',
    'embeddingCount': 'embedding_count',
    'contentHash': 'content_hash',
  },
);

Map<String, dynamic> _$CheckUpdatesResponseToJson(
  CheckUpdatesResponse instance,
) => <String, dynamic>{
  'needs_update': instance.needsUpdate,
  'current_version': instance.currentVersion,
  'student_count': instance.studentCount,
  'embedding_count': instance.embeddingCount,
  'content_hash': instance.contentHash,
};
