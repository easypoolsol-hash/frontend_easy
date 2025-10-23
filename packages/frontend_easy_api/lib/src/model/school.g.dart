// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

School _$SchoolFromJson(Map<String, dynamic> json) => $checkedCreate(
  'School',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['school_id', 'name', 'created_at']);
    final val = School(
      schoolId: $checkedConvert('school_id', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'schoolId': 'school_id', 'createdAt': 'created_at'},
);

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
  'school_id': instance.schoolId,
  'name': instance.name,
  'created_at': instance.createdAt.toIso8601String(),
};
