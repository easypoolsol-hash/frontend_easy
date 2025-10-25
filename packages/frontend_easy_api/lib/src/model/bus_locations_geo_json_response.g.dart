// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_locations_geo_json_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusLocationsGeoJSONResponse _$BusLocationsGeoJSONResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BusLocationsGeoJSONResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['features']);
  final val = BusLocationsGeoJSONResponse(
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

Map<String, dynamic> _$BusLocationsGeoJSONResponseToJson(
  BusLocationsGeoJSONResponse instance,
) => <String, dynamic>{'type': ?instance.type, 'features': instance.features};
