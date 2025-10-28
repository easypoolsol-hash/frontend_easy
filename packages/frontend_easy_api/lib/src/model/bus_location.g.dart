// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusLocation _$BusLocationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BusLocation', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['location_id', 'latitude', 'longitude', 'timestamp'],
  );
  final val = BusLocation(
    locationId: $checkedConvert('location_id', (v) => (v as num).toInt()),
    latitude: $checkedConvert('latitude', (v) => (v as num).toDouble()),
    longitude: $checkedConvert('longitude', (v) => (v as num).toDouble()),
    accuracy: $checkedConvert('accuracy', (v) => (v as num?)?.toDouble()),
    speed: $checkedConvert('speed', (v) => (v as num?)?.toDouble()),
    heading: $checkedConvert('heading', (v) => (v as num?)?.toDouble()),
    timestamp: $checkedConvert('timestamp', (v) => DateTime.parse(v as String)),
  );
  return val;
}, fieldKeyMap: const {'locationId': 'location_id'});

Map<String, dynamic> _$BusLocationToJson(BusLocation instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      if (instance.accuracy case final value?) 'accuracy': value,
      if (instance.speed case final value?) 'speed': value,
      if (instance.heading case final value?) 'heading': value,
      'timestamp': instance.timestamp.toIso8601String(),
    };
