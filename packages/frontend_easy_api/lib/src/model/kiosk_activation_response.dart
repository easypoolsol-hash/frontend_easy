//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kiosk_activation_response.g.dart';

/// Response for successful kiosk activation  Fortune 500 Pattern: Include everything needed for device operation
///
/// Properties:
/// * [message] - Success message
/// * [access] - JWT access token (15 minutes)
/// * [refresh] - JWT refresh token (60 days)
/// * [kioskId] - Activated kiosk ID
/// * [busId] - Assigned bus ID
/// * [activationTokenDestroyed] - Confirms token is now garbage
@BuiltValue()
abstract class KioskActivationResponse implements Built<KioskActivationResponse, KioskActivationResponseBuilder> {
  /// Success message
  @BuiltValueField(wireName: r'message')
  String get message;

  /// JWT access token (15 minutes)
  @BuiltValueField(wireName: r'access')
  String get access;

  /// JWT refresh token (60 days)
  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  /// Activated kiosk ID
  @BuiltValueField(wireName: r'kiosk_id')
  String get kioskId;

  /// Assigned bus ID
  @BuiltValueField(wireName: r'bus_id')
  String? get busId;

  /// Confirms token is now garbage
  @BuiltValueField(wireName: r'activation_token_destroyed')
  bool get activationTokenDestroyed;

  KioskActivationResponse._();

  factory KioskActivationResponse([void updates(KioskActivationResponseBuilder b)]) = _$KioskActivationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KioskActivationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KioskActivationResponse> get serializer => _$KioskActivationResponseSerializer();
}

class _$KioskActivationResponseSerializer implements PrimitiveSerializer<KioskActivationResponse> {
  @override
  final Iterable<Type> types = const [KioskActivationResponse, _$KioskActivationResponse];

  @override
  final String wireName = r'KioskActivationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KioskActivationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'access';
    yield serializers.serialize(
      object.access,
      specifiedType: const FullType(String),
    );
    yield r'refresh';
    yield serializers.serialize(
      object.refresh,
      specifiedType: const FullType(String),
    );
    yield r'kiosk_id';
    yield serializers.serialize(
      object.kioskId,
      specifiedType: const FullType(String),
    );
    if (object.busId != null) {
      yield r'bus_id';
      yield serializers.serialize(
        object.busId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'activation_token_destroyed';
    yield serializers.serialize(
      object.activationTokenDestroyed,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KioskActivationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KioskActivationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.access = valueDes;
          break;
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refresh = valueDes;
          break;
        case r'kiosk_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kioskId = valueDes;
          break;
        case r'bus_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.busId = valueDes;
          break;
        case r'activation_token_destroyed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.activationTokenDestroyed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KioskActivationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KioskActivationResponseBuilder();
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

