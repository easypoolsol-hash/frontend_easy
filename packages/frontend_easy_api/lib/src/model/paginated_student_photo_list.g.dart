// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_student_photo_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedStudentPhotoList _$PaginatedStudentPhotoListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedStudentPhotoList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedStudentPhotoList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => StudentPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedStudentPhotoListToJson(
  PaginatedStudentPhotoList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
