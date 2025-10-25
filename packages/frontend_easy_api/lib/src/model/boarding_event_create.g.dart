// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_event_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoardingEventCreate _$BoardingEventCreateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BoardingEventCreate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'event_id',
            'student',
            'kiosk_id',
            'confidence_score',
            'timestamp',
            'gps_coords',
            'model_version',
          ],
        );
        final val = BoardingEventCreate(
          eventId: $checkedConvert('event_id', (v) => v as String),
          student: $checkedConvert('student', (v) => v as String),
          kioskId: $checkedConvert('kiosk_id', (v) => v as String),
          confidenceScore: $checkedConvert(
            'confidence_score',
            (v) => (v as num).toDouble(),
          ),
          timestamp: $checkedConvert(
            'timestamp',
            (v) => DateTime.parse(v as String),
          ),
          gpsCoords: $checkedConvert(
            'gps_coords',
            (v) => (v as List<dynamic>?)
                ?.map((e) => (e as num).toDouble())
                .toList(),
          ),
          busRoute: $checkedConvert('bus_route', (v) => v as String?),
          faceImageUrl: $checkedConvert('face_image_url', (v) => v as String?),
          modelVersion: $checkedConvert('model_version', (v) => v as String),
          metadata: $checkedConvert('metadata', (v) => v),
        );
        return val;
      },
      fieldKeyMap: const {
        'eventId': 'event_id',
        'kioskId': 'kiosk_id',
        'confidenceScore': 'confidence_score',
        'gpsCoords': 'gps_coords',
        'busRoute': 'bus_route',
        'faceImageUrl': 'face_image_url',
        'modelVersion': 'model_version',
      },
    );

Map<String, dynamic> _$BoardingEventCreateToJson(
  BoardingEventCreate instance,
) => <String, dynamic>{
  'event_id': instance.eventId,
  'student': instance.student,
  'kiosk_id': instance.kioskId,
  'confidence_score': instance.confidenceScore,
  'timestamp': instance.timestamp.toIso8601String(),
  'gps_coords': instance.gpsCoords,
  'bus_route': ?instance.busRoute,
  'face_image_url': ?instance.faceImageUrl,
  'model_version': instance.modelVersion,
  'metadata': ?instance.metadata,
};
