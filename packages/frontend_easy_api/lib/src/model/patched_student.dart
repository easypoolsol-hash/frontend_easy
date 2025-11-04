//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/school.dart';
import 'package:frontend_easy_api/src/model/student_parent.dart';
import 'package:frontend_easy_api/src/model/bus_basic.dart';
import 'package:frontend_easy_api/src/model/student_photo.dart';
import 'package:frontend_easy_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_student.g.dart';

/// Full serializer for detail view - includes all nested data
///
/// Properties:
/// * [studentId] 
/// * [school] 
/// * [decryptedName] 
/// * [name] - Encrypted at application layer
/// * [grade] 
/// * [section] 
/// * [assignedBus] - UUID primary key
/// * [status] - * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
/// * [enrollmentDate] 
/// * [schoolDetails] 
/// * [busDetails] 
/// * [parents] 
/// * [photos] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class PatchedStudent implements Built<PatchedStudent, PatchedStudentBuilder> {
  @BuiltValueField(wireName: r'student_id')
  String? get studentId;

  @BuiltValueField(wireName: r'school')
  String? get school;

  @BuiltValueField(wireName: r'decrypted_name')
  String? get decryptedName;

  /// Encrypted at application layer
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'grade')
  String? get grade;

  @BuiltValueField(wireName: r'section')
  String? get section;

  /// UUID primary key
  @BuiltValueField(wireName: r'assigned_bus')
  String? get assignedBus;

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueField(wireName: r'status')
  PatchedStudentStatusEnum? get status;
  // enum statusEnum {  active,  inactive,  suspended,  };

  @BuiltValueField(wireName: r'enrollment_date')
  Date? get enrollmentDate;

  @BuiltValueField(wireName: r'school_details')
  School? get schoolDetails;

  @BuiltValueField(wireName: r'bus_details')
  BusBasic? get busDetails;

  @BuiltValueField(wireName: r'parents')
  BuiltList<StudentParent>? get parents;

  @BuiltValueField(wireName: r'photos')
  BuiltList<StudentPhoto>? get photos;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  PatchedStudent._();

  factory PatchedStudent([void updates(PatchedStudentBuilder b)]) = _$PatchedStudent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedStudentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedStudent> get serializer => _$PatchedStudentSerializer();
}

class _$PatchedStudentSerializer implements PrimitiveSerializer<PatchedStudent> {
  @override
  final Iterable<Type> types = const [PatchedStudent, _$PatchedStudent];

  @override
  final String wireName = r'PatchedStudent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedStudent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.studentId != null) {
      yield r'student_id';
      yield serializers.serialize(
        object.studentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.school != null) {
      yield r'school';
      yield serializers.serialize(
        object.school,
        specifiedType: const FullType(String),
      );
    }
    if (object.decryptedName != null) {
      yield r'decrypted_name';
      yield serializers.serialize(
        object.decryptedName,
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
    if (object.grade != null) {
      yield r'grade';
      yield serializers.serialize(
        object.grade,
        specifiedType: const FullType(String),
      );
    }
    if (object.section != null) {
      yield r'section';
      yield serializers.serialize(
        object.section,
        specifiedType: const FullType(String),
      );
    }
    if (object.assignedBus != null) {
      yield r'assigned_bus';
      yield serializers.serialize(
        object.assignedBus,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(PatchedStudentStatusEnum),
      );
    }
    if (object.enrollmentDate != null) {
      yield r'enrollment_date';
      yield serializers.serialize(
        object.enrollmentDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.schoolDetails != null) {
      yield r'school_details';
      yield serializers.serialize(
        object.schoolDetails,
        specifiedType: const FullType(School),
      );
    }
    if (object.busDetails != null) {
      yield r'bus_details';
      yield serializers.serialize(
        object.busDetails,
        specifiedType: const FullType(BusBasic),
      );
    }
    if (object.parents != null) {
      yield r'parents';
      yield serializers.serialize(
        object.parents,
        specifiedType: const FullType(BuiltList, [FullType(StudentParent)]),
      );
    }
    if (object.photos != null) {
      yield r'photos';
      yield serializers.serialize(
        object.photos,
        specifiedType: const FullType(BuiltList, [FullType(StudentPhoto)]),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedStudent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedStudentBuilder result,
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
        case r'school':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.school = valueDes;
          break;
        case r'decrypted_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.decryptedName = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
        case r'assigned_bus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.assignedBus = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatchedStudentStatusEnum),
          ) as PatchedStudentStatusEnum;
          result.status = valueDes;
          break;
        case r'enrollment_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.enrollmentDate = valueDes;
          break;
        case r'school_details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(School),
          ) as School;
          result.schoolDetails.replace(valueDes);
          break;
        case r'bus_details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BusBasic),
          ) as BusBasic;
          result.busDetails.replace(valueDes);
          break;
        case r'parents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StudentParent)]),
          ) as BuiltList<StudentParent>;
          result.parents.replace(valueDes);
          break;
        case r'photos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StudentPhoto)]),
          ) as BuiltList<StudentPhoto>;
          result.photos.replace(valueDes);
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedStudent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedStudentBuilder();
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

class PatchedStudentStatusEnum extends EnumClass {

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'active')
  static const PatchedStudentStatusEnum active = _$patchedStudentStatusEnum_active;
  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'inactive')
  static const PatchedStudentStatusEnum inactive = _$patchedStudentStatusEnum_inactive;
  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'suspended')
  static const PatchedStudentStatusEnum suspended = _$patchedStudentStatusEnum_suspended;

  static Serializer<PatchedStudentStatusEnum> get serializer => _$patchedStudentStatusEnumSerializer;

  const PatchedStudentStatusEnum._(String name): super(name);

  static BuiltSet<PatchedStudentStatusEnum> get values => _$patchedStudentStatusEnumValues;
  static PatchedStudentStatusEnum valueOf(String name) => _$patchedStudentStatusEnumValueOf(name);
}

