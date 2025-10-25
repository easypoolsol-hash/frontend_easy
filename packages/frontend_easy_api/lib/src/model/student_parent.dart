//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/parent.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_parent.g.dart';

/// StudentParent
///
/// Properties:
/// * [student] 
/// * [parent] 
/// * [relationship] - * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
/// * [isPrimary] 
/// * [parentDetails] 
/// * [studentDetails] 
@BuiltValue()
abstract class StudentParent implements Built<StudentParent, StudentParentBuilder> {
  @BuiltValueField(wireName: r'student')
  String get student;

  @BuiltValueField(wireName: r'parent')
  String get parent;

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueField(wireName: r'relationship')
  StudentParentRelationshipEnum get relationship;
  // enum relationshipEnum {  mother,  father,  guardian,  grandparent,  other,  };

  @BuiltValueField(wireName: r'is_primary')
  bool? get isPrimary;

  @BuiltValueField(wireName: r'parent_details')
  Parent get parentDetails;

  @BuiltValueField(wireName: r'student_details')
  String get studentDetails;

  StudentParent._();

  factory StudentParent([void updates(StudentParentBuilder b)]) = _$StudentParent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentParentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StudentParent> get serializer => _$StudentParentSerializer();
}

class _$StudentParentSerializer implements PrimitiveSerializer<StudentParent> {
  @override
  final Iterable<Type> types = const [StudentParent, _$StudentParent];

  @override
  final String wireName = r'StudentParent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StudentParent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'student';
    yield serializers.serialize(
      object.student,
      specifiedType: const FullType(String),
    );
    yield r'parent';
    yield serializers.serialize(
      object.parent,
      specifiedType: const FullType(String),
    );
    yield r'relationship';
    yield serializers.serialize(
      object.relationship,
      specifiedType: const FullType(StudentParentRelationshipEnum),
    );
    if (object.isPrimary != null) {
      yield r'is_primary';
      yield serializers.serialize(
        object.isPrimary,
        specifiedType: const FullType(bool),
      );
    }
    yield r'parent_details';
    yield serializers.serialize(
      object.parentDetails,
      specifiedType: const FullType(Parent),
    );
    yield r'student_details';
    yield serializers.serialize(
      object.studentDetails,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StudentParent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudentParentBuilder result,
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
            specifiedType: const FullType(StudentParentRelationshipEnum),
          ) as StudentParentRelationshipEnum;
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
  StudentParent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentParentBuilder();
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

class StudentParentRelationshipEnum extends EnumClass {

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'mother')
  static const StudentParentRelationshipEnum mother = _$studentParentRelationshipEnum_mother;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'father')
  static const StudentParentRelationshipEnum father = _$studentParentRelationshipEnum_father;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'guardian')
  static const StudentParentRelationshipEnum guardian = _$studentParentRelationshipEnum_guardian;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'grandparent')
  static const StudentParentRelationshipEnum grandparent = _$studentParentRelationshipEnum_grandparent;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'other')
  static const StudentParentRelationshipEnum other = _$studentParentRelationshipEnum_other;

  static Serializer<StudentParentRelationshipEnum> get serializer => _$studentParentRelationshipEnumSerializer;

  const StudentParentRelationshipEnum._(String name): super(name);

  static BuiltSet<StudentParentRelationshipEnum> get values => _$studentParentRelationshipEnumValues;
  static StudentParentRelationshipEnum valueOf(String name) => _$studentParentRelationshipEnumValueOf(name);
}

