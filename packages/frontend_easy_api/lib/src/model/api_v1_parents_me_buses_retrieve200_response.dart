//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_parents_me_buses_retrieve200_response.g.dart';

/// ApiV1ParentsMeBusesRetrieve200Response
///
/// Properties:
/// * [buses] 
@BuiltValue()
abstract class ApiV1ParentsMeBusesRetrieve200Response implements Built<ApiV1ParentsMeBusesRetrieve200Response, ApiV1ParentsMeBusesRetrieve200ResponseBuilder> {
  @BuiltValueField(wireName: r'buses')
  BuiltList<JsonObject>? get buses;

  ApiV1ParentsMeBusesRetrieve200Response._();

  factory ApiV1ParentsMeBusesRetrieve200Response([void updates(ApiV1ParentsMeBusesRetrieve200ResponseBuilder b)]) = _$ApiV1ParentsMeBusesRetrieve200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1ParentsMeBusesRetrieve200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1ParentsMeBusesRetrieve200Response> get serializer => _$ApiV1ParentsMeBusesRetrieve200ResponseSerializer();
}

class _$ApiV1ParentsMeBusesRetrieve200ResponseSerializer implements PrimitiveSerializer<ApiV1ParentsMeBusesRetrieve200Response> {
  @override
  final Iterable<Type> types = const [ApiV1ParentsMeBusesRetrieve200Response, _$ApiV1ParentsMeBusesRetrieve200Response];

  @override
  final String wireName = r'ApiV1ParentsMeBusesRetrieve200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1ParentsMeBusesRetrieve200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.buses != null) {
      yield r'buses';
      yield serializers.serialize(
        object.buses,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1ParentsMeBusesRetrieve200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1ParentsMeBusesRetrieve200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.buses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1ParentsMeBusesRetrieve200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1ParentsMeBusesRetrieve200ResponseBuilder();
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

