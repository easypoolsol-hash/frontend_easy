// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_user_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedUserList _$PaginatedUserListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedUserList', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedUserList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedUserListToJson(PaginatedUserList instance) =>
    <String, dynamic>{
      'count': instance.count,
      if (instance.next case final value?) 'next': value,
      if (instance.previous case final value?) 'previous': value,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
