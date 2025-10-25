//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_school.g.dart';

/// PatchedSchool
///
/// Properties:
/// * [schoolId] 
/// * [name] 
/// * [createdAt] 
@BuiltValue()
abstract class PatchedSchool implements Built<PatchedSchool, PatchedSchoolBuilder> {
  @BuiltValueField(wireName: r'school_id')
  String? get schoolId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  PatchedSchool._();

  factory PatchedSchool([void updates(PatchedSchoolBuilder b)]) = _$PatchedSchool;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedSchoolBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedSchool> get serializer => _$PatchedSchoolSerializer();
}

class _$PatchedSchoolSerializer implements PrimitiveSerializer<PatchedSchool> {
  @override
  final Iterable<Type> types = const [PatchedSchool, _$PatchedSchool];

  @override
  final String wireName = r'PatchedSchool';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedSchool object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.schoolId != null) {
      yield r'school_id';
      yield serializers.serialize(
        object.schoolId,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedSchool object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedSchoolBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'school_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schoolId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedSchool deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedSchoolBuilder();
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

