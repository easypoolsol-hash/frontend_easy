//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sos_alert_create_request.g.dart';

/// Serializer for creating SOS alerts from kiosk
///
/// Properties:
/// * [latitude] - GPS latitude at time of alert
/// * [longitude] - GPS longitude at time of alert
/// * [message] - Optional message from operator
/// * [metadata] - Additional context data
@BuiltValue()
abstract class SOSAlertCreateRequest implements Built<SOSAlertCreateRequest, SOSAlertCreateRequestBuilder> {
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

  SOSAlertCreateRequest._();

  factory SOSAlertCreateRequest([void updates(SOSAlertCreateRequestBuilder b)]) = _$SOSAlertCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SOSAlertCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SOSAlertCreateRequest> get serializer => _$SOSAlertCreateRequestSerializer();
}

class _$SOSAlertCreateRequestSerializer implements PrimitiveSerializer<SOSAlertCreateRequest> {
  @override
  final Iterable<Type> types = const [SOSAlertCreateRequest, _$SOSAlertCreateRequest];

  @override
  final String wireName = r'SOSAlertCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SOSAlertCreateRequest object, {
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
    SOSAlertCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SOSAlertCreateRequestBuilder result,
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
  SOSAlertCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SOSAlertCreateRequestBuilder();
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

