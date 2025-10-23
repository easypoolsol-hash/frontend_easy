// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_parent_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedParentList _$PaginatedParentListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedParentList', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedParentList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map((e) => Parent.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedParentListToJson(
  PaginatedParentList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
