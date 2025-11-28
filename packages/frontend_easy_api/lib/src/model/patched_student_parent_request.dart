//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_student_parent_request.g.dart';

/// PatchedStudentParentRequest
///
/// Properties:
/// * [student] 
/// * [parent] 
/// * [relationship] - * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
/// * [isPrimary] 
@BuiltValue()
abstract class PatchedStudentParentRequest implements Built<PatchedStudentParentRequest, PatchedStudentParentRequestBuilder> {
  @BuiltValueField(wireName: r'student')
  String? get student;

  @BuiltValueField(wireName: r'parent')
  String? get parent;

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueField(wireName: r'relationship')
  PatchedStudentParentRequestRelationshipEnum? get relationship;
  // enum relationshipEnum {  mother,  father,  guardian,  grandparent,  other,  };

  @BuiltValueField(wireName: r'is_primary')
  bool? get isPrimary;

  PatchedStudentParentRequest._();

  factory PatchedStudentParentRequest([void updates(PatchedStudentParentRequestBuilder b)]) = _$PatchedStudentParentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedStudentParentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedStudentParentRequest> get serializer => _$PatchedStudentParentRequestSerializer();
}

class _$PatchedStudentParentRequestSerializer implements PrimitiveSerializer<PatchedStudentParentRequest> {
  @override
  final Iterable<Type> types = const [PatchedStudentParentRequest, _$PatchedStudentParentRequest];

  @override
  final String wireName = r'PatchedStudentParentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedStudentParentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.student != null) {
      yield r'student';
      yield serializers.serialize(
        object.student,
        specifiedType: const FullType(String),
      );
    }
    if (object.parent != null) {
      yield r'parent';
      yield serializers.serialize(
        object.parent,
        specifiedType: const FullType(String),
      );
    }
    if (object.relationship != null) {
      yield r'relationship';
      yield serializers.serialize(
        object.relationship,
        specifiedType: const FullType(PatchedStudentParentRequestRelationshipEnum),
      );
    }
    if (object.isPrimary != null) {
      yield r'is_primary';
      yield serializers.serialize(
        object.isPrimary,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedStudentParentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedStudentParentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'student':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.student = valueDes;
          break;
        case r'parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.parent = valueDes;
          break;
        case r'relationship':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatchedStudentParentRequestRelationshipEnum),
          ) as PatchedStudentParentRequestRelationshipEnum;
          result.relationship = valueDes;
          break;
        case r'is_primary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPrimary = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedStudentParentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedStudentParentRequestBuilder();
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

class PatchedStudentParentRequestRelationshipEnum extends EnumClass {

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'mother')
  static const PatchedStudentParentRequestRelationshipEnum mother = _$patchedStudentParentRequestRelationshipEnum_mother;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'father')
  static const PatchedStudentParentRequestRelationshipEnum father = _$patchedStudentParentRequestRelationshipEnum_father;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'guardian')
  static const PatchedStudentParentRequestRelationshipEnum guardian = _$patchedStudentParentRequestRelationshipEnum_guardian;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'grandparent')
  static const PatchedStudentParentRequestRelationshipEnum grandparent = _$patchedStudentParentRequestRelationshipEnum_grandparent;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'other')
  static const PatchedStudentParentRequestRelationshipEnum other = _$patchedStudentParentRequestRelationshipEnum_other;

  static Serializer<PatchedStudentParentRequestRelationshipEnum> get serializer => _$patchedStudentParentRequestRelationshipEnumSerializer;

  const PatchedStudentParentRequestRelationshipEnum._(String name): super(name);

  static BuiltSet<PatchedStudentParentRequestRelationshipEnum> get values => _$patchedStudentParentRequestRelationshipEnumValues;
  static PatchedStudentParentRequestRelationshipEnum valueOf(String name) => _$patchedStudentParentRequestRelationshipEnumValueOf(name);
}

