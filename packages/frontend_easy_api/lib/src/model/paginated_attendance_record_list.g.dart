// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_attendance_record_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedAttendanceRecordList _$PaginatedAttendanceRecordListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedAttendanceRecordList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedAttendanceRecordList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => AttendanceRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedAttendanceRecordListToJson(
  PaginatedAttendanceRecordList instance,
) => <String, dynamic>{
  'count': instance.count,
  if (instance.next case final value?) 'next': value,
  if (instance.previous case final value?) 'previous': value,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
