//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_boarding_event.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedBoardingEvent {
  /// Returns a new [PatchedBoardingEvent] instance.
  PatchedBoardingEvent({

     this.eventId,

     this.student,

     this.kioskId,

     this.confidenceScore,

     this.timestamp,

     this.latitude,

     this.longitude,

     this.busRoute,

     this.faceImageUrl,

     this.modelVersion,

     this.metadata,

     this.createdAt,
  });

      /// ULID primary key for global uniqueness and time sorting
  @JsonKey(

    name: r'event_id',
    required: false,
    includeIfNull: false,
  )


  final String? eventId;



      /// Student who boarded the bus
  @JsonKey(

    name: r'student',
    required: false,
    includeIfNull: false,
  )


  final String? student;



      /// Kiosk device identifier
  @JsonKey(

    name: r'kiosk_id',
    required: false,
    includeIfNull: false,
  )


  final String? kioskId;



      /// Face recognition confidence score (0.0-1.0)
          // minimum: 0.0
          // maximum: 1.0
  @JsonKey(

    name: r'confidence_score',
    required: false,
    includeIfNull: false,
  )


  final double? confidenceScore;



      /// When the boarding event occurred
  @JsonKey(

    name: r'timestamp',
    required: false,
    includeIfNull: false,
  )


  final DateTime? timestamp;



      /// GPS latitude coordinate
  @JsonKey(

    name: r'latitude',
    required: false,
    includeIfNull: false,
  )


  final double? latitude;



      /// GPS longitude coordinate
  @JsonKey(

    name: r'longitude',
    required: false,
    includeIfNull: false,
  )


  final double? longitude;



      /// Bus route identifier
  @JsonKey(

    name: r'bus_route',
    required: false,
    includeIfNull: false,
  )


  final String? busRoute;



      /// S3 URL to face image for verification (optional)
  @JsonKey(

    name: r'face_image_url',
    required: false,
    includeIfNull: false,
  )


  final String? faceImageUrl;



      /// Face recognition model version used
  @JsonKey(

    name: r'model_version',
    required: false,
    includeIfNull: false,
  )


  final String? modelVersion;



      /// Additional metadata as JSON
  @JsonKey(

    name: r'metadata',
    required: false,
    includeIfNull: false,
  )


  final Object? metadata;



      /// When this record was created in database
  @JsonKey(

    name: r'created_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedBoardingEvent &&
      other.eventId == eventId &&
      other.student == student &&
      other.kioskId == kioskId &&
      other.confidenceScore == confidenceScore &&
      other.timestamp == timestamp &&
      other.latitude == latitude &&
      other.longitude == longitude &&
      other.busRoute == busRoute &&
      other.faceImageUrl == faceImageUrl &&
      other.modelVersion == modelVersion &&
      other.metadata == metadata &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        eventId.hashCode +
        student.hashCode +
        kioskId.hashCode +
        confidenceScore.hashCode +
        timestamp.hashCode +
        (latitude == null ? 0 : latitude.hashCode) +
        (longitude == null ? 0 : longitude.hashCode) +
        busRoute.hashCode +
        faceImageUrl.hashCode +
        modelVersion.hashCode +
        (metadata == null ? 0 : metadata.hashCode) +
        createdAt.hashCode;

  factory PatchedBoardingEvent.fromJson(Map<String, dynamic> json) => _$PatchedBoardingEventFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedBoardingEventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
