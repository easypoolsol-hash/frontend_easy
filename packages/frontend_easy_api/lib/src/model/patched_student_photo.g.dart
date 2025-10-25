// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedStudentPhoto _$PatchedStudentPhotoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedStudentPhoto',
      json,
      ($checkedConvert) {
        final val = PatchedStudentPhoto(
          photoId: $checkedConvert('photo_id', (v) => v as String?),
          student: $checkedConvert('student', (v) => v as String?),
          photo: $checkedConvert('photo', (v) => v as String?),
          isPrimary: $checkedConvert('is_primary', (v) => v as bool?),
          capturedAt: $checkedConvert(
            'captured_at',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          studentDetails: $checkedConvert(
            'student_details',
            (v) => v as String?,
          ),
          createdAt: $checkedConvert(
            'created_at',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'photoId': 'photo_id',
        'isPrimary': 'is_primary',
        'capturedAt': 'captured_at',
        'studentDetails': 'student_details',
        'createdAt': 'created_at',
      },
    );

Map<String, dynamic> _$PatchedStudentPhotoToJson(
  PatchedStudentPhoto instance,
) => <String, dynamic>{
  'photo_id': ?instance.photoId,
  'student': ?instance.student,
  'photo': ?instance.photo,
  'is_primary': ?instance.isPrimary,
  'captured_at': ?instance.capturedAt?.toIso8601String(),
  'student_details': ?instance.studentDetails,
  'created_at': ?instance.createdAt?.toIso8601String(),
};
