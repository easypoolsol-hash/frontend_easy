//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'boarding_event_nested.g.dart';

/// Nested boarding event for student activity.
///
/// Properties:
/// * [eventId] - Event ULID
/// * [timestamp] - When event occurred
/// * [kioskId] - Kiosk device ID
/// * [eventType] - Event type (boarding/pickup/dropoff)
/// * [confirmationFaceUrls] - List of signed URLs for confirmation faces (flexible - 1 to N photos)
@BuiltValue()
abstract class BoardingEventNested implements Built<BoardingEventNested, BoardingEventNestedBuilder> {
  /// Event ULID
  @BuiltValueField(wireName: r'event_id')
  String get eventId;

  /// When event occurred
  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  /// Kiosk device ID
  @BuiltValueField(wireName: r'kiosk_id')
  String get kioskId;

  /// Event type (boarding/pickup/dropoff)
  @BuiltValueField(wireName: r'event_type')
  String get eventType;

  /// List of signed URLs for confirmation faces (flexible - 1 to N photos)
  @BuiltValueField(wireName: r'confirmation_face_urls')
  BuiltList<String>? get confirmationFaceUrls;

  BoardingEventNested._();

  factory BoardingEventNested([void updates(BoardingEventNestedBuilder b)]) = _$BoardingEventNested;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BoardingEventNestedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BoardingEventNested> get serializer => _$BoardingEventNestedSerializer();
}

class _$BoardingEventNestedSerializer implements PrimitiveSerializer<BoardingEventNested> {
  @override
  final Iterable<Type> types = const [BoardingEventNested, _$BoardingEventNested];

  @override
  final String wireName = r'BoardingEventNested';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BoardingEventNested object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event_id';
    yield serializers.serialize(
      object.eventId,
      specifiedType: const FullType(String),
    );
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
    yield r'kiosk_id';
    yield serializers.serialize(
      object.kioskId,
      specifiedType: const FullType(String),
    );
    yield r'event_type';
    yield serializers.serialize(
      object.eventType,
      specifiedType: const FullType(String),
    );
    if (object.confirmationFaceUrls != null) {
      yield r'confirmation_face_urls';
      yield serializers.serialize(
        object.confirmationFaceUrls,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BoardingEventNested object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BoardingEventNestedBuilder result,
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
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'kiosk_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kioskId = valueDes;
          break;
        case r'event_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventType = valueDes;
          break;
        case r'confirmation_face_urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.confirmationFaceUrls.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BoardingEventNested deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BoardingEventNestedBuilder();
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

