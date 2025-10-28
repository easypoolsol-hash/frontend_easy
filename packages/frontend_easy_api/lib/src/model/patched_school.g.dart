// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedSchool _$PatchedSchoolFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedSchool',
      json,
      ($checkedConvert) {
        final val = PatchedSchool(
          schoolId: $checkedConvert('school_id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          createdAt: $checkedConvert(
            'created_at',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'schoolId': 'school_id', 'createdAt': 'created_at'},
    );

Map<String, dynamic> _$PatchedSchoolToJson(PatchedSchool instance) =>
    <String, dynamic>{
      if (instance.schoolId case final value?) 'school_id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
    };
