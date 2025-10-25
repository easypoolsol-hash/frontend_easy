// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentActivity _$StudentActivityFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'StudentActivity',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'school_student_id',
        'student_name',
        'grade',
        'events',
        'event_count',
      ],
    );
    final val = StudentActivity(
      schoolStudentId: $checkedConvert('school_student_id', (v) => v as String),
      studentName: $checkedConvert('student_name', (v) => v as String),
      grade: $checkedConvert('grade', (v) => v as String),
      busNumber: $checkedConvert('bus_number', (v) => v as String?),
      routeName: $checkedConvert('route_name', (v) => v as String?),
      events: $checkedConvert(
        'events',
        (v) => (v as List<dynamic>)
            .map((e) => BoardingEventNested.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      eventCount: $checkedConvert('event_count', (v) => (v as num).toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'schoolStudentId': 'school_student_id',
    'studentName': 'student_name',
    'busNumber': 'bus_number',
    'routeName': 'route_name',
    'eventCount': 'event_count',
  },
);

Map<String, dynamic> _$StudentActivityToJson(StudentActivity instance) =>
    <String, dynamic>{
      'school_student_id': instance.schoolStudentId,
      'student_name': instance.studentName,
      'grade': instance.grade,
      'bus_number': ?instance.busNumber,
      'route_name': ?instance.routeName,
      'events': instance.events.map((e) => e.toJson()).toList(),
      'event_count': instance.eventCount,
    };
