// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_bus_locations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParentBusLocationsResponse _$ParentBusLocationsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ParentBusLocationsResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['features']);
  final val = ParentBusLocationsResponse(
    type: $checkedConvert('type', (v) => v as String? ?? 'FeatureCollection'),
    features: $checkedConvert(
      'features',
      (v) => (v as List<dynamic>)
          .map(
            (e) => (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as Object),
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ParentBusLocationsResponseToJson(
  ParentBusLocationsResponse instance,
) => <String, dynamic>{
  if (instance.type case final value?) 'type': value,
  'features': instance.features,
};
