// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_event_nested.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoardingEventNested _$BoardingEventNestedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BoardingEventNested',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'event_id',
            'timestamp',
            'kiosk_id',
            'event_type',
          ],
        );
        final val = BoardingEventNested(
          eventId: $checkedConvert('event_id', (v) => v as String),
          timestamp: $checkedConvert(
            'timestamp',
            (v) => DateTime.parse(v as String),
          ),
          kioskId: $checkedConvert('kiosk_id', (v) => v as String),
          eventType: $checkedConvert('event_type', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'eventId': 'event_id',
        'kioskId': 'kiosk_id',
        'eventType': 'event_type',
      },
    );

Map<String, dynamic> _$BoardingEventNestedToJson(
  BoardingEventNested instance,
) => <String, dynamic>{
  'event_id': instance.eventId,
  'timestamp': instance.timestamp.toIso8601String(),
  'kiosk_id': instance.kioskId,
  'event_type': instance.eventType,
};
