//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_boarding_event.g.dart';

/// Serializer for boarding events
///
/// Properties:
/// * [eventId] - ULID primary key for global uniqueness and time sorting
/// * [student] - Student who boarded the bus (null for unidentified faces)
/// * [kioskId] - Kiosk device identifier
/// * [confidenceScore] - Face recognition confidence score (0.0-1.0)
/// * [timestamp] - When the boarding event occurred
/// * [latitude] - GPS latitude coordinate
/// * [longitude] - GPS longitude coordinate
/// * [busRoute] - Bus route identifier
/// * [faceImageUrl] - S3 URL to face image for verification (optional)
/// * [modelVersion] - Face recognition model version used
/// * [metadata] - Additional metadata as JSON
/// * [createdAt] - When this record was created in database
/// * [confirmationFaceUrls] 
/// * [isUnknownFace] 
@BuiltValue()
abstract class PatchedBoardingEvent implements Built<PatchedBoardingEvent, PatchedBoardingEventBuilder> {
  /// ULID primary key for global uniqueness and time sorting
  @BuiltValueField(wireName: r'event_id')
  String? get eventId;

  /// Student who boarded the bus (null for unidentified faces)
  @BuiltValueField(wireName: r'student')
  String? get student;

  /// Kiosk device identifier
  @BuiltValueField(wireName: r'kiosk_id')
  String? get kioskId;

  /// Face recognition confidence score (0.0-1.0)
  @BuiltValueField(wireName: r'confidence_score')
  double? get confidenceScore;

  /// When the boarding event occurred
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// GPS latitude coordinate
  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  /// GPS longitude coordinate
  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  /// Bus route identifier
  @BuiltValueField(wireName: r'bus_route')
  String? get busRoute;

  /// S3 URL to face image for verification (optional)
  @BuiltValueField(wireName: r'face_image_url')
  String? get faceImageUrl;

  /// Face recognition model version used
  @BuiltValueField(wireName: r'model_version')
  String? get modelVersion;

  /// Additional metadata as JSON
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// When this record was created in database
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'confirmation_face_urls')
  String? get confirmationFaceUrls;

  @BuiltValueField(wireName: r'is_unknown_face')
  String? get isUnknownFace;

  PatchedBoardingEvent._();

  factory PatchedBoardingEvent([void updates(PatchedBoardingEventBuilder b)]) = _$PatchedBoardingEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedBoardingEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedBoardingEvent> get serializer => _$PatchedBoardingEventSerializer();
}

class _$PatchedBoardingEventSerializer implements PrimitiveSerializer<PatchedBoardingEvent> {
  @override
  final Iterable<Type> types = const [PatchedBoardingEvent, _$PatchedBoardingEvent];

  @override
  final String wireName = r'PatchedBoardingEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedBoardingEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.eventId != null) {
      yield r'event_id';
      yield serializers.serialize(
        object.eventId,
        specifiedType: const FullType(String),
      );
    }
    if (object.student != null) {
      yield r'student';
      yield serializers.serialize(
        object.student,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kioskId != null) {
      yield r'kiosk_id';
      yield serializers.serialize(
        object.kioskId,
        specifiedType: const FullType(String),
      );
    }
    if (object.confidenceScore != null) {
      yield r'confidence_score';
      yield serializers.serialize(
        object.confidenceScore,
        specifiedType: const FullType(double),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.busRoute != null) {
      yield r'bus_route';
      yield serializers.serialize(
        object.busRoute,
        specifiedType: const FullType(String),
      );
    }
    if (object.faceImageUrl != null) {
      yield r'face_image_url';
      yield serializers.serialize(
        object.faceImageUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.modelVersion != null) {
      yield r'model_version';
      yield serializers.serialize(
        object.modelVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.confirmationFaceUrls != null) {
      yield r'confirmation_face_urls';
      yield serializers.serialize(
        object.confirmationFaceUrls,
        specifiedType: const FullType(String),
      );
    }
    if (object.isUnknownFace != null) {
      yield r'is_unknown_face';
      yield serializers.serialize(
        object.isUnknownFace,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedBoardingEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedBoardingEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventId = valueDes;
          break;
        case r'student':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.student = valueDes;
          break;
        case r'kiosk_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kioskId = valueDes;
          break;
        case r'confidence_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.confidenceScore = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.longitude = valueDes;
          break;
        case r'bus_route':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.busRoute = valueDes;
          break;
        case r'face_image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.faceImageUrl = valueDes;
          break;
        case r'model_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modelVersion = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'confirmation_face_urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmationFaceUrls = valueDes;
          break;
        case r'is_unknown_face':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isUnknownFace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedBoardingEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedBoardingEventBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

