// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_bus_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedBusList _$PaginatedBusListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedBusList', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedBusList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map((e) => Bus.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedBusListToJson(PaginatedBusList instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': ?instance.next,
      'previous': ?instance.previous,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
