// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_students_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardStudentsResponse _$DashboardStudentsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DashboardStudentsResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['count', 'next', 'previous', 'results'],
  );
  final val = DashboardStudentsResponse(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as bool),
    previous: $checkedConvert('previous', (v) => v as bool),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => StudentActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$DashboardStudentsResponseToJson(
  DashboardStudentsResponse instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
