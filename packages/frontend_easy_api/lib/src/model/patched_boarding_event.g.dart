// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_boarding_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedBoardingEvent _$PatchedBoardingEventFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedBoardingEvent',
  json,
  ($checkedConvert) {
    final val = PatchedBoardingEvent(
      eventId: $checkedConvert('event_id', (v) => v as String?),
      student: $checkedConvert('student', (v) => v as String?),
      kioskId: $checkedConvert('kiosk_id', (v) => v as String?),
      confidenceScore: $checkedConvert(
        'confidence_score',
        (v) => (v as num?)?.toDouble(),
      ),
      timestamp: $checkedConvert(
        'timestamp',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
      longitude: $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
      busRoute: $checkedConvert('bus_route', (v) => v as String?),
      faceImageUrl: $checkedConvert('face_image_url', (v) => v as String?),
      modelVersion: $checkedConvert('model_version', (v) => v as String?),
      metadata: $checkedConvert('metadata', (v) => v),
      createdAt: $checkedConvert(
        'created_at',
        (v) => v == null ? null : DateTime.parse(v as String),
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

Map<String, dynamic> _$PatchedBoardingEventToJson(
  PatchedBoardingEvent instance,
) => <String, dynamic>{
  if (instance.eventId case final value?) 'event_id': value,
  if (instance.student case final value?) 'student': value,
  if (instance.kioskId case final value?) 'kiosk_id': value,
  if (instance.confidenceScore case final value?) 'confidence_score': value,
  if (instance.timestamp?.toIso8601String() case final value?)
    'timestamp': value,
  if (instance.latitude case final value?) 'latitude': value,
  if (instance.longitude case final value?) 'longitude': value,
  if (instance.busRoute case final value?) 'bus_route': value,
  if (instance.faceImageUrl case final value?) 'face_image_url': value,
  if (instance.modelVersion case final value?) 'model_version': value,
  if (instance.metadata case final value?) 'metadata': value,
  if (instance.createdAt?.toIso8601String() case final value?)
    'created_at': value,
};
