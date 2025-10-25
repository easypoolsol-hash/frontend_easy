// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_role_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedRoleList _$PaginatedRoleListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedRoleList', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedRoleList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map((e) => Role.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedRoleListToJson(PaginatedRoleList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': ?instance.next,
      'previous': ?instance.previous,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
