//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_parent_request.g.dart';

/// StudentParentRequest
///
/// Properties:
/// * [student] 
/// * [parent] 
/// * [relationship] - * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
/// * [isPrimary] 
@BuiltValue()
abstract class StudentParentRequest implements Built<StudentParentRequest, StudentParentRequestBuilder> {
  @BuiltValueField(wireName: r'student')
  String get student;

  @BuiltValueField(wireName: r'parent')
  String get parent;

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueField(wireName: r'relationship')
  StudentParentRequestRelationshipEnum get relationship;
  // enum relationshipEnum {  mother,  father,  guardian,  grandparent,  other,  };

  @BuiltValueField(wireName: r'is_primary')
  bool? get isPrimary;

  StudentParentRequest._();

  factory StudentParentRequest([void updates(StudentParentRequestBuilder b)]) = _$StudentParentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentParentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StudentParentRequest> get serializer => _$StudentParentRequestSerializer();
}

class _$StudentParentRequestSerializer implements PrimitiveSerializer<StudentParentRequest> {
  @override
  final Iterable<Type> types = const [StudentParentRequest, _$StudentParentRequest];

  @override
  final String wireName = r'StudentParentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StudentParentRequest object, {
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
      specifiedType: const FullType(StudentParentRequestRelationshipEnum),
    );
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
    StudentParentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudentParentRequestBuilder result,
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
            specifiedType: const FullType(StudentParentRequestRelationshipEnum),
          ) as StudentParentRequestRelationshipEnum;
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
  StudentParentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentParentRequestBuilder();
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

class StudentParentRequestRelationshipEnum extends EnumClass {

  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'mother')
  static const StudentParentRequestRelationshipEnum mother = _$studentParentRequestRelationshipEnum_mother;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'father')
  static const StudentParentRequestRelationshipEnum father = _$studentParentRequestRelationshipEnum_father;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'guardian')
  static const StudentParentRequestRelationshipEnum guardian = _$studentParentRequestRelationshipEnum_guardian;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'grandparent')
  static const StudentParentRequestRelationshipEnum grandparent = _$studentParentRequestRelationshipEnum_grandparent;
  /// * `mother` - Mother * `father` - Father * `guardian` - Guardian * `grandparent` - Grandparent * `other` - Other
  @BuiltValueEnumConst(wireName: r'other')
  static const StudentParentRequestRelationshipEnum other = _$studentParentRequestRelationshipEnum_other;

  static Serializer<StudentParentRequestRelationshipEnum> get serializer => _$studentParentRequestRelationshipEnumSerializer;

  const StudentParentRequestRelationshipEnum._(String name): super(name);

  static BuiltSet<StudentParentRequestRelationshipEnum> get values => _$studentParentRequestRelationshipEnumValues;
  static StudentParentRequestRelationshipEnum valueOf(String name) => _$studentParentRequestRelationshipEnumValueOf(name);
}

