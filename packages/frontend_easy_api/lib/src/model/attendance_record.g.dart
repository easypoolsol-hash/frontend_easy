// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceRecord _$AttendanceRecordFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AttendanceRecord',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'record_id',
            'student',
            'student_name',
            'student_grade',
            'date',
            'status',
            'created_at',
          ],
        );
        final val = AttendanceRecord(
          recordId: $checkedConvert('record_id', (v) => v as String),
          student: $checkedConvert('student', (v) => v as String),
          studentName: $checkedConvert('student_name', (v) => v as String),
          studentGrade: $checkedConvert('student_grade', (v) => v as String),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          morningBoarded: $checkedConvert('morning_boarded', (v) => v as bool?),
          morningTime: $checkedConvert(
            'morning_time',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          afternoonBoarded: $checkedConvert(
            'afternoon_boarded',
            (v) => v as bool?,
          ),
          afternoonTime: $checkedConvert(
            'afternoon_time',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          status: $checkedConvert(
            'status',
            (v) => $enumDecode(_$AttendanceRecordStatusEnumEnumMap, v),
          ),
          createdAt: $checkedConvert(
            'created_at',
            (v) => DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'recordId': 'record_id',
        'studentName': 'student_name',
        'studentGrade': 'student_grade',
        'morningBoarded': 'morning_boarded',
        'morningTime': 'morning_time',
        'afternoonBoarded': 'afternoon_boarded',
        'afternoonTime': 'afternoon_time',
        'createdAt': 'created_at',
      },
    );

Map<String, dynamic> _$AttendanceRecordToJson(AttendanceRecord instance) =>
    <String, dynamic>{
      'record_id': instance.recordId,
      'student': instance.student,
      'student_name': instance.studentName,
      'student_grade': instance.studentGrade,
      'date': instance.date.toIso8601String(),
      'morning_boarded': ?instance.morningBoarded,
      'morning_time': ?instance.morningTime?.toIso8601String(),
      'afternoon_boarded': ?instance.afternoonBoarded,
      'afternoon_time': ?instance.afternoonTime?.toIso8601String(),
      'status': _$AttendanceRecordStatusEnumEnumMap[instance.status]!,
      'created_at': instance.createdAt.toIso8601String(),
    };

const _$AttendanceRecordStatusEnumEnumMap = {
  AttendanceRecordStatusEnum.present: 'present',
  AttendanceRecordStatusEnum.absent: 'absent',
  AttendanceRecordStatusEnum.partial: 'partial',
};
