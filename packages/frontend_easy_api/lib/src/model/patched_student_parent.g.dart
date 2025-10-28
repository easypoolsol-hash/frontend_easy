// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student_parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedStudentParent _$PatchedStudentParentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedStudentParent',
  json,
  ($checkedConvert) {
    final val = PatchedStudentParent(
      student: $checkedConvert('student', (v) => v as String?),
      parent: $checkedConvert('parent', (v) => v as String?),
      relationship: $checkedConvert(
        'relationship',
        (v) => $enumDecodeNullable(
          _$PatchedStudentParentRelationshipEnumEnumMap,
          v,
        ),
      ),
      isPrimary: $checkedConvert('is_primary', (v) => v as bool?),
      parentDetails: $checkedConvert(
        'parent_details',
        (v) => v == null ? null : Parent.fromJson(v as Map<String, dynamic>),
      ),
      studentDetails: $checkedConvert('student_details', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'isPrimary': 'is_primary',
    'parentDetails': 'parent_details',
    'studentDetails': 'student_details',
  },
);

Map<String, dynamic> _$PatchedStudentParentToJson(
  PatchedStudentParent instance,
) => <String, dynamic>{
  if (instance.student case final value?) 'student': value,
  if (instance.parent case final value?) 'parent': value,
  if (_$PatchedStudentParentRelationshipEnumEnumMap[instance.relationship]
      case final value?)
    'relationship': value,
  if (instance.isPrimary case final value?) 'is_primary': value,
  if (instance.parentDetails?.toJson() case final value?)
    'parent_details': value,
  if (instance.studentDetails case final value?) 'student_details': value,
};

const _$PatchedStudentParentRelationshipEnumEnumMap = {
  PatchedStudentParentRelationshipEnum.mother: 'mother',
  PatchedStudentParentRelationshipEnum.father: 'father',
  PatchedStudentParentRelationshipEnum.guardian: 'guardian',
  PatchedStudentParentRelationshipEnum.grandparent: 'grandparent',
  PatchedStudentParentRelationshipEnum.other: 'other',
};
