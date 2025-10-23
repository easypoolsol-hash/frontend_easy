// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_route_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedRouteList _$PaginatedRouteListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedRouteList', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedRouteList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map((e) => Route.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedRouteListToJson(PaginatedRouteList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': ?instance.next,
      'previous': ?instance.previous,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
