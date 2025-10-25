// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoardingEvent _$BoardingEventFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BoardingEvent',
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
            'model_version',
            'created_at',
          ],
        );
        final val = BoardingEvent(
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
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude: $checkedConvert(
            'longitude',
            (v) => (v as num?)?.toDouble(),
          ),
          busRoute: $checkedConvert('bus_route', (v) => v as String?),
          faceImageUrl: $checkedConvert('face_image_url', (v) => v as String?),
          modelVersion: $checkedConvert('model_version', (v) => v as String),
          metadata: $checkedConvert('metadata', (v) => v),
          createdAt: $checkedConvert(
            'created_at',
            (v) => DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'eventId': 'event_id',
        'kioskId': 'kiosk_id',
        'confidenceScore': 'confidence_score',
        'busRoute': 'bus_route',
        'faceImageUrl': 'face_image_url',
        'modelVersion': 'model_version',
        'createdAt': 'created_at',
      },
    );

Map<String, dynamic> _$BoardingEventToJson(BoardingEvent instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'student': instance.student,
      'kiosk_id': instance.kioskId,
      'confidence_score': instance.confidenceScore,
      'timestamp': instance.timestamp.toIso8601String(),
      'latitude': ?instance.latitude,
      'longitude': ?instance.longitude,
      'bus_route': ?instance.busRoute,
      'face_image_url': ?instance.faceImageUrl,
      'model_version': instance.modelVersion,
      'metadata': ?instance.metadata,
      'created_at': instance.createdAt.toIso8601String(),
    };
