//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'boarding_event_nested.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BoardingEventNested {
  /// Returns a new [BoardingEventNested] instance.
  BoardingEventNested({

    required  this.eventId,

    required  this.timestamp,

    required  this.kioskId,

    required  this.eventType,
  });

      /// Event ULID
  @JsonKey(
    
    name: r'event_id',
    required: true,
    includeIfNull: false,
  )


  final String eventId;



      /// When event occurred
  @JsonKey(
    
    name: r'timestamp',
    required: true,
    includeIfNull: false,
  )


  final DateTime timestamp;



      /// Kiosk device ID
  @JsonKey(
    
    name: r'kiosk_id',
    required: true,
    includeIfNull: false,
  )


  final String kioskId;



      /// Event type (boarding/pickup/dropoff)
  @JsonKey(
    
    name: r'event_type',
    required: true,
    includeIfNull: false,
  )


  final String eventType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BoardingEventNested &&
      other.eventId == eventId &&
      other.timestamp == timestamp &&
      other.kioskId == kioskId &&
      other.eventType == eventType;

    @override
    int get hashCode =>
        eventId.hashCode +
        timestamp.hashCode +
        kioskId.hashCode +
        eventType.hashCode;

  factory BoardingEventNested.fromJson(Map<String, dynamic> json) => _$BoardingEventNestedFromJson(json);

  Map<String, dynamic> toJson() => _$BoardingEventNestedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

