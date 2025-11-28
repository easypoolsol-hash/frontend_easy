//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_school_request.g.dart';

/// PatchedSchoolRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class PatchedSchoolRequest implements Built<PatchedSchoolRequest, PatchedSchoolRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  PatchedSchoolRequest._();

  factory PatchedSchoolRequest([void updates(PatchedSchoolRequestBuilder b)]) = _$PatchedSchoolRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedSchoolRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedSchoolRequest> get serializer => _$PatchedSchoolRequestSerializer();
}

class _$PatchedSchoolRequestSerializer implements PrimitiveSerializer<PatchedSchoolRequest> {
  @override
  final Iterable<Type> types = const [PatchedSchoolRequest, _$PatchedSchoolRequest];

  @override
  final String wireName = r'PatchedSchoolRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedSchoolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedSchoolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedSchoolRequestBuilder result,
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
  PatchedSchoolRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedSchoolRequestBuilder();
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

