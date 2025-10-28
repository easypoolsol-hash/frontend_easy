// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentParent _$StudentParentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'StudentParent',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'student',
            'parent',
            'relationship',
            'parent_details',
            'student_details',
          ],
        );
        final val = StudentParent(
          student: $checkedConvert('student', (v) => v as String),
          parent: $checkedConvert('parent', (v) => v as String),
          relationship: $checkedConvert(
            'relationship',
            (v) => $enumDecode(_$StudentParentRelationshipEnumEnumMap, v),
          ),
          isPrimary: $checkedConvert('is_primary', (v) => v as bool?),
          parentDetails: $checkedConvert(
            'parent_details',
            (v) => Parent.fromJson(v as Map<String, dynamic>),
          ),
          studentDetails: $checkedConvert(
            'student_details',
            (v) => v as String,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'isPrimary': 'is_primary',
        'parentDetails': 'parent_details',
        'studentDetails': 'student_details',
      },
    );

Map<String, dynamic> _$StudentParentToJson(StudentParent instance) =>
    <String, dynamic>{
      'student': instance.student,
      'parent': instance.parent,
      'relationship':
          _$StudentParentRelationshipEnumEnumMap[instance.relationship]!,
      if (instance.isPrimary case final value?) 'is_primary': value,
      'parent_details': instance.parentDetails.toJson(),
      'student_details': instance.studentDetails,
    };

const _$StudentParentRelationshipEnumEnumMap = {
  StudentParentRelationshipEnum.mother: 'mother',
  StudentParentRelationshipEnum.father: 'father',
  StudentParentRelationshipEnum.guardian: 'guardian',
  StudentParentRelationshipEnum.grandparent: 'grandparent',
  StudentParentRelationshipEnum.other: 'other',
};
