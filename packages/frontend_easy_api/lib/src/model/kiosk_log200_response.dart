//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kiosk_log200_response.g.dart';

/// KioskLog200Response
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class KioskLog200Response implements Built<KioskLog200Response, KioskLog200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  KioskLog200Response._();

  factory KioskLog200Response([void updates(KioskLog200ResponseBuilder b)]) = _$KioskLog200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KioskLog200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KioskLog200Response> get serializer => _$KioskLog200ResponseSerializer();
}

class _$KioskLog200ResponseSerializer implements PrimitiveSerializer<KioskLog200Response> {
  @override
  final Iterable<Type> types = const [KioskLog200Response, _$KioskLog200Response];

  @override
  final String wireName = r'KioskLog200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KioskLog200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KioskLog200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KioskLog200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KioskLog200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KioskLog200ResponseBuilder();
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

