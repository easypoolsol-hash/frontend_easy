//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'school_request.g.dart';

/// SchoolRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class SchoolRequest implements Built<SchoolRequest, SchoolRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  SchoolRequest._();

  factory SchoolRequest([void updates(SchoolRequestBuilder b)]) = _$SchoolRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SchoolRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SchoolRequest> get serializer => _$SchoolRequestSerializer();
}

class _$SchoolRequestSerializer implements PrimitiveSerializer<SchoolRequest> {
  @override
  final Iterable<Type> types = const [SchoolRequest, _$SchoolRequest];

  @override
  final String wireName = r'SchoolRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SchoolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SchoolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SchoolRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SchoolRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SchoolRequestBuilder();
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

