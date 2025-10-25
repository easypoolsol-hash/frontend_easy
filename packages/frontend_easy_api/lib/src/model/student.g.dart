// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Student _$StudentFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Student',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'student_id',
        'school',
        'decrypted_name',
        'name',
        'grade',
        'enrollment_date',
        'school_details',
        'bus_details',
        'parents',
        'photos',
        'created_at',
        'updated_at',
      ],
    );
    final val = Student(
      studentId: $checkedConvert('student_id', (v) => v as String),
      school: $checkedConvert('school', (v) => v as String),
      decryptedName: $checkedConvert('decrypted_name', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      grade: $checkedConvert('grade', (v) => v as String),
      section: $checkedConvert('section', (v) => v as String?),
      assignedBus: $checkedConvert('assigned_bus', (v) => v as String?),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(_$StudentStatusEnumEnumMap, v),
      ),
      enrollmentDate: $checkedConvert(
        'enrollment_date',
        (v) => DateTime.parse(v as String),
      ),
      schoolDetails: $checkedConvert(
        'school_details',
        (v) => School.fromJson(v as Map<String, dynamic>),
      ),
      busDetails: $checkedConvert(
        'bus_details',
        (v) => BusBasic.fromJson(v as Map<String, dynamic>),
      ),
      parents: $checkedConvert(
        'parents',
        (v) => (v as List<dynamic>)
            .map((e) => StudentParent.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      photos: $checkedConvert(
        'photos',
        (v) => (v as List<dynamic>)
            .map((e) => StudentPhoto.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
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

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
  'student_id': instance.studentId,
  'school': instance.school,
  'decrypted_name': instance.decryptedName,
  'name': instance.name,
  'grade': instance.grade,
  'section': ?instance.section,
  'assigned_bus': ?instance.assignedBus,
  'status': ?_$StudentStatusEnumEnumMap[instance.status],
  'enrollment_date': instance.enrollmentDate.toIso8601String(),
  'school_details': instance.schoolDetails.toJson(),
  'bus_details': instance.busDetails.toJson(),
  'parents': instance.parents.map((e) => e.toJson()).toList(),
  'photos': instance.photos.map((e) => e.toJson()).toList(),
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$StudentStatusEnumEnumMap = {
  StudentStatusEnum.active: 'active',
  StudentStatusEnum.inactive: 'inactive',
  StudentStatusEnum.suspended: 'suspended',
};
