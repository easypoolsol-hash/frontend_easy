//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_kiosk_boarding_create200_response.g.dart';

/// ApiV1KioskBoardingCreate200Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class ApiV1KioskBoardingCreate200Response implements Built<ApiV1KioskBoardingCreate200Response, ApiV1KioskBoardingCreate200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ApiV1KioskBoardingCreate200Response._();

  factory ApiV1KioskBoardingCreate200Response([void updates(ApiV1KioskBoardingCreate200ResponseBuilder b)]) = _$ApiV1KioskBoardingCreate200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1KioskBoardingCreate200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1KioskBoardingCreate200Response> get serializer => _$ApiV1KioskBoardingCreate200ResponseSerializer();
}

class _$ApiV1KioskBoardingCreate200ResponseSerializer implements PrimitiveSerializer<ApiV1KioskBoardingCreate200Response> {
  @override
  final Iterable<Type> types = const [ApiV1KioskBoardingCreate200Response, _$ApiV1KioskBoardingCreate200Response];

  @override
  final String wireName = r'ApiV1KioskBoardingCreate200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1KioskBoardingCreate200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1KioskBoardingCreate200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1KioskBoardingCreate200ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1KioskBoardingCreate200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1KioskBoardingCreate200ResponseBuilder();
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

