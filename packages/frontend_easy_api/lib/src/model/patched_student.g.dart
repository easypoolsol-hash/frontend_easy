// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedStudent _$PatchedStudentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedStudent',
      json,
      ($checkedConvert) {
        final val = PatchedStudent(
          studentId: $checkedConvert('student_id', (v) => v as String?),
          school: $checkedConvert('school', (v) => v as String?),
          decryptedName: $checkedConvert('decrypted_name', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          grade: $checkedConvert('grade', (v) => v as String?),
          section: $checkedConvert('section', (v) => v as String?),
          assignedBus: $checkedConvert('assigned_bus', (v) => v as String?),
          status: $checkedConvert(
            'status',
            (v) => $enumDecodeNullable(_$PatchedStudentStatusEnumEnumMap, v),
          ),
          enrollmentDate: $checkedConvert(
            'enrollment_date',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          schoolDetails: $checkedConvert(
            'school_details',
            (v) =>
                v == null ? null : School.fromJson(v as Map<String, dynamic>),
          ),
          busDetails: $checkedConvert(
            'bus_details',
            (v) =>
                v == null ? null : BusBasic.fromJson(v as Map<String, dynamic>),
          ),
          parents: $checkedConvert(
            'parents',
            (v) => (v as List<dynamic>?)
                ?.map((e) => StudentParent.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          photos: $checkedConvert(
            'photos',
            (v) => (v as List<dynamic>?)
                ?.map((e) => StudentPhoto.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          createdAt: $checkedConvert(
            'created_at',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          updatedAt: $checkedConvert(
            'updated_at',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'studentId': 'student_id',
        'decryptedName': 'decrypted_name',
        'assignedBus': 'assigned_bus',
        'enrollmentDate': 'enrollment_date',
        'schoolDetails': 'school_details',
        'busDetails': 'bus_details',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
      },
    );

Map<String, dynamic> _$PatchedStudentToJson(PatchedStudent instance) =>
    <String, dynamic>{
      if (instance.studentId case final value?) 'student_id': value,
      if (instance.school case final value?) 'school': value,
      if (instance.decryptedName case final value?) 'decrypted_name': value,
      if (instance.name case final value?) 'name': value,
      if (instance.grade case final value?) 'grade': value,
      if (instance.section case final value?) 'section': value,
      if (instance.assignedBus case final value?) 'assigned_bus': value,
      if (_$PatchedStudentStatusEnumEnumMap[instance.status] case final value?)
        'status': value,
      if (instance.enrollmentDate?.toIso8601String() case final value?)
        'enrollment_date': value,
      if (instance.schoolDetails?.toJson() case final value?)
        'school_details': value,
      if (instance.busDetails?.toJson() case final value?) 'bus_details': value,
      if (instance.parents?.map((e) => e.toJson()).toList() case final value?)
        'parents': value,
      if (instance.photos?.map((e) => e.toJson()).toList() case final value?)
        'photos': value,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.updatedAt?.toIso8601String() case final value?)
        'updated_at': value,
    };

const _$PatchedStudentStatusEnumEnumMap = {
  PatchedStudentStatusEnum.active: 'active',
  PatchedStudentStatusEnum.inactive: 'inactive',
  PatchedStudentStatusEnum.suspended: 'suspended',
};
