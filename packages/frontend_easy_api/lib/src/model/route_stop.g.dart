// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteStop _$RouteStopFromJson(Map<String, dynamic> json) => $checkedCreate(
  'RouteStop',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'bus_stop',
        'bus_stop_name',
        'latitude',
        'longitude',
        'sequence',
      ],
    );
    final val = RouteStop(
      busStop: $checkedConvert('bus_stop', (v) => v as String),
      busStopName: $checkedConvert('bus_stop_name', (v) => v as String),
      latitude: $checkedConvert('latitude', (v) => (v as num).toDouble()),
      longitude: $checkedConvert('longitude', (v) => (v as num).toDouble()),
      sequence: $checkedConvert('sequence', (v) => (v as num).toInt()),
      waypoints: $checkedConvert('waypoints', (v) => v),
    );
    return val;
  },
  fieldKeyMap: const {'busStop': 'bus_stop', 'busStopName': 'bus_stop_name'},
);

Map<String, dynamic> _$RouteStopToJson(RouteStop instance) => <String, dynamic>{
  'bus_stop': instance.busStop,
  'bus_stop_name': instance.busStopName,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'sequence': instance.sequence,
  'waypoints': ?instance.waypoints,
};
