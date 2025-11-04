//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/parent.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_student_parent.g.dart';

/// PatchedStudentParent
///
/// Properties:
/// * [student] 
/// * [parent] 
/// * [relationship] - * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
/// * [isPrimary] 
/// * [parentDetails] 
/// * [studentDetails] 
@BuiltValue()
abstract class PatchedStudentParent implements Built<PatchedStudentParent, PatchedStudentParentBuilder> {
  @BuiltValueField(wireName: r'student')
  String? get student;

  @BuiltValueField(wireName: r'parent')
  String? get parent;

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueField(wireName: r'relationship')
  PatchedStudentParentRelationshipEnum? get relationship;
  // enum relationshipEnum {  mother,  father,  guardian,  grandparent,  other,  };

  @BuiltValueField(wireName: r'is_primary')
  bool? get isPrimary;

  @BuiltValueField(wireName: r'parent_details')
  Parent? get parentDetails;

  @BuiltValueField(wireName: r'student_details')
  String? get studentDetails;

  PatchedStudentParent._();

  factory PatchedStudentParent([void updates(PatchedStudentParentBuilder b)]) = _$PatchedStudentParent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedStudentParentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedStudentParent> get serializer => _$PatchedStudentParentSerializer();
}

class _$PatchedStudentParentSerializer implements PrimitiveSerializer<PatchedStudentParent> {
  @override
  final Iterable<Type> types = const [PatchedStudentParent, _$PatchedStudentParent];

  @override
  final String wireName = r'PatchedStudentParent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedStudentParent object, {
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
        specifiedType: const FullType(PatchedStudentParentRelationshipEnum),
      );
    }
    if (object.isPrimary != null) {
      yield r'is_primary';
      yield serializers.serialize(
        object.isPrimary,
        specifiedType: const FullType(bool),
      );
    }
    if (object.parentDetails != null) {
      yield r'parent_details';
      yield serializers.serialize(
        object.parentDetails,
        specifiedType: const FullType(Parent),
      );
    }
    if (object.studentDetails != null) {
      yield r'student_details';
      yield serializers.serialize(
        object.studentDetails,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedStudentParent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedStudentParentBuilder result,
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
            specifiedType: const FullType(PatchedStudentParentRelationshipEnum),
          ) as PatchedStudentParentRelationshipEnum;
          result.relationship = valueDes;
          break;
        case r'is_primary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPrimary = valueDes;
          break;
        case r'parent_details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Parent),
          ) as Parent;
          result.parentDetails.replace(valueDes);
          break;
        case r'student_details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studentDetails = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedStudentParent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedStudentParentBuilder();
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

class PatchedStudentParentRelationshipEnum extends EnumClass {

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'mother')
  static const PatchedStudentParentRelationshipEnum mother = _$patchedStudentParentRelationshipEnum_mother;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'father')
  static const PatchedStudentParentRelationshipEnum father = _$patchedStudentParentRelationshipEnum_father;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'guardian')
  static const PatchedStudentParentRelationshipEnum guardian = _$patchedStudentParentRelationshipEnum_guardian;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'grandparent')
  static const PatchedStudentParentRelationshipEnum grandparent = _$patchedStudentParentRelationshipEnum_grandparent;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'other')
  static const PatchedStudentParentRelationshipEnum other = _$patchedStudentParentRelationshipEnum_other;

  static Serializer<PatchedStudentParentRelationshipEnum> get serializer => _$patchedStudentParentRelationshipEnumSerializer;

  const PatchedStudentParentRelationshipEnum._(String name): super(name);

  static BuiltSet<PatchedStudentParentRelationshipEnum> get values => _$patchedStudentParentRelationshipEnumValues;
  static PatchedStudentParentRelationshipEnum valueOf(String name) => _$patchedStudentParentRelationshipEnumValueOf(name);
}

