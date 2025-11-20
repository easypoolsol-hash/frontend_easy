//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/api_v1_students_all_retrieve200_response_results_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_students_all_retrieve200_response.g.dart';

/// ApiV1StudentsAllRetrieve200Response
///
/// Properties:
/// * [count] 
/// * [next] 
/// * [previous] 
/// * [results] 
@BuiltValue()
abstract class ApiV1StudentsAllRetrieve200Response implements Built<ApiV1StudentsAllRetrieve200Response, ApiV1StudentsAllRetrieve200ResponseBuilder> {
  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'next')
  bool? get next;

  @BuiltValueField(wireName: r'previous')
  bool? get previous;

  @BuiltValueField(wireName: r'results')
  BuiltList<ApiV1StudentsAllRetrieve200ResponseResultsInner>? get results;

  ApiV1StudentsAllRetrieve200Response._();

  factory ApiV1StudentsAllRetrieve200Response([void updates(ApiV1StudentsAllRetrieve200ResponseBuilder b)]) = _$ApiV1StudentsAllRetrieve200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1StudentsAllRetrieve200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1StudentsAllRetrieve200Response> get serializer => _$ApiV1StudentsAllRetrieve200ResponseSerializer();
}

class _$ApiV1StudentsAllRetrieve200ResponseSerializer implements PrimitiveSerializer<ApiV1StudentsAllRetrieve200Response> {
  @override
  final Iterable<Type> types = const [ApiV1StudentsAllRetrieve200Response, _$ApiV1StudentsAllRetrieve200Response];

  @override
  final String wireName = r'ApiV1StudentsAllRetrieve200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1StudentsAllRetrieve200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.next != null) {
      yield r'next';
      yield serializers.serialize(
        object.next,
        specifiedType: const FullType(bool),
      );
    }
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType(bool),
      );
    }
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(ApiV1StudentsAllRetrieve200ResponseResultsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1StudentsAllRetrieve200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1StudentsAllRetrieve200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.next = valueDes;
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.previous = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ApiV1StudentsAllRetrieve200ResponseResultsInner)]),
          ) as BuiltList<ApiV1StudentsAllRetrieve200ResponseResultsInner>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1StudentsAllRetrieve200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1StudentsAllRetrieve200ResponseBuilder();
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

