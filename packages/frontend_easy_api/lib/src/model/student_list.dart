//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_list.g.dart';

/// Lightweight serializer for list view - only essential fields
///
/// Properties:
/// * [studentId] 
/// * [schoolStudentId] - School-provided student ID (e.g., STU-2024-001)
/// * [decryptedName] 
/// * [grade] 
/// * [section] 
/// * [primaryParentName] 
/// * [primaryParentPhone] 
/// * [busNumber] 
/// * [status] - * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
@BuiltValue()
abstract class StudentList implements Built<StudentList, StudentListBuilder> {
  @BuiltValueField(wireName: r'student_id')
  String get studentId;

  /// School-provided student ID (e.g., STU-2024-001)
  @BuiltValueField(wireName: r'school_student_id')
  String get schoolStudentId;

  @BuiltValueField(wireName: r'decrypted_name')
  String get decryptedName;

  @BuiltValueField(wireName: r'grade')
  String get grade;

  @BuiltValueField(wireName: r'section')
  String? get section;

  @BuiltValueField(wireName: r'primary_parent_name')
  String get primaryParentName;

  @BuiltValueField(wireName: r'primary_parent_phone')
  String get primaryParentPhone;

  @BuiltValueField(wireName: r'bus_number')
  String get busNumber;

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueField(wireName: r'status')
  StudentListStatusEnum? get status;
  // enum statusEnum {  active,  inactive,  suspended,  };

  StudentList._();

  factory StudentList([void updates(StudentListBuilder b)]) = _$StudentList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StudentList> get serializer => _$StudentListSerializer();
}

class _$StudentListSerializer implements PrimitiveSerializer<StudentList> {
  @override
  final Iterable<Type> types = const [StudentList, _$StudentList];

  @override
  final String wireName = r'StudentList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StudentList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'student_id';
    yield serializers.serialize(
      object.studentId,
      specifiedType: const FullType(String),
    );
    yield r'school_student_id';
    yield serializers.serialize(
      object.schoolStudentId,
      specifiedType: const FullType(String),
    );
    yield r'decrypted_name';
    yield serializers.serialize(
      object.decryptedName,
      specifiedType: const FullType(String),
    );
    yield r'grade';
    yield serializers.serialize(
      object.grade,
      specifiedType: const FullType(String),
    );
    if (object.section != null) {
      yield r'section';
      yield serializers.serialize(
        object.section,
        specifiedType: const FullType(String),
      );
    }
    yield r'primary_parent_name';
    yield serializers.serialize(
      object.primaryParentName,
      specifiedType: const FullType(String),
    );
    yield r'primary_parent_phone';
    yield serializers.serialize(
      object.primaryParentPhone,
      specifiedType: const FullType(String),
    );
    yield r'bus_number';
    yield serializers.serialize(
      object.busNumber,
      specifiedType: const FullType(String),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(StudentListStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StudentList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudentListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'student_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studentId = valueDes;
          break;
        case r'school_student_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schoolStudentId = valueDes;
          break;
        case r'decrypted_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.decryptedName = valueDes;
          break;
        case r'grade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.grade = valueDes;
          break;
        case r'section':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.section = valueDes;
          break;
        case r'primary_parent_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.primaryParentName = valueDes;
          break;
        case r'primary_parent_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.primaryParentPhone = valueDes;
          break;
        case r'bus_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.busNumber = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StudentListStatusEnum),
          ) as StudentListStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StudentList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentListBuilder();
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

class StudentListStatusEnum extends EnumClass {

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'active')
  static const StudentListStatusEnum active = _$studentListStatusEnum_active;
  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'inactive')
  static const StudentListStatusEnum inactive = _$studentListStatusEnum_inactive;
  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'suspended')
  static const StudentListStatusEnum suspended = _$studentListStatusEnum_suspended;

  static Serializer<StudentListStatusEnum> get serializer => _$studentListStatusEnumSerializer;

  const StudentListStatusEnum._(String name): super(name);

  static BuiltSet<StudentListStatusEnum> get values => _$studentListStatusEnumValues;
  static StudentListStatusEnum valueOf(String name) => _$studentListStatusEnumValueOf(name);
}

