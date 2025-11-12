//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sos_alert_create.g.dart';

/// Serializer for creating SOS alerts from kiosk
///
/// Properties:
/// * [latitude] - GPS latitude at time of alert
/// * [longitude] - GPS longitude at time of alert
/// * [message] - Optional message from operator
/// * [metadata] - Additional context data
@BuiltValue()
abstract class SOSAlertCreate implements Built<SOSAlertCreate, SOSAlertCreateBuilder> {
  /// GPS latitude at time of alert
  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  /// GPS longitude at time of alert
  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  /// Optional message from operator
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Additional context data
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  SOSAlertCreate._();

  factory SOSAlertCreate([void updates(SOSAlertCreateBuilder b)]) = _$SOSAlertCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SOSAlertCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SOSAlertCreate> get serializer => _$SOSAlertCreateSerializer();
}

class _$SOSAlertCreateSerializer implements PrimitiveSerializer<SOSAlertCreate> {
  @override
  final Iterable<Type> types = const [SOSAlertCreate, _$SOSAlertCreate];

  @override
  final String wireName = r'SOSAlertCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SOSAlertCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SOSAlertCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SOSAlertCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SOSAlertCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SOSAlertCreateBuilder();
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

