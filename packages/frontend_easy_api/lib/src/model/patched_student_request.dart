//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_student_request.g.dart';

/// Full serializer for detail view - includes all nested data
///
/// Properties:
/// * [school] 
/// * [schoolStudentId] - School-provided student ID (e.g., STU-2024-001)
/// * [grade] 
/// * [section] 
/// * [addressLatitude] - Student home address latitude
/// * [addressLongitude] - Student home address longitude
/// * [assignedBus] - UUID primary key
/// * [status] - * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
/// * [enrollmentDate] - Date student enrolled in school
@BuiltValue()
abstract class PatchedStudentRequest implements Built<PatchedStudentRequest, PatchedStudentRequestBuilder> {
  @BuiltValueField(wireName: r'school')
  String? get school;

  /// School-provided student ID (e.g., STU-2024-001)
  @BuiltValueField(wireName: r'school_student_id')
  String? get schoolStudentId;

  @BuiltValueField(wireName: r'grade')
  String? get grade;

  @BuiltValueField(wireName: r'section')
  String? get section;

  /// Student home address latitude
  @BuiltValueField(wireName: r'address_latitude')
  double? get addressLatitude;

  /// Student home address longitude
  @BuiltValueField(wireName: r'address_longitude')
  double? get addressLongitude;

  /// UUID primary key
  @BuiltValueField(wireName: r'assigned_bus')
  String? get assignedBus;

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueField(wireName: r'status')
  PatchedStudentRequestStatusEnum? get status;
  // enum statusEnum {  active,  inactive,  suspended,  };

  /// Date student enrolled in school
  @BuiltValueField(wireName: r'enrollment_date')
  Date? get enrollmentDate;

  PatchedStudentRequest._();

  factory PatchedStudentRequest([void updates(PatchedStudentRequestBuilder b)]) = _$PatchedStudentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedStudentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedStudentRequest> get serializer => _$PatchedStudentRequestSerializer();
}

class _$PatchedStudentRequestSerializer implements PrimitiveSerializer<PatchedStudentRequest> {
  @override
  final Iterable<Type> types = const [PatchedStudentRequest, _$PatchedStudentRequest];

  @override
  final String wireName = r'PatchedStudentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedStudentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.school != null) {
      yield r'school';
      yield serializers.serialize(
        object.school,
        specifiedType: const FullType(String),
      );
    }
    if (object.schoolStudentId != null) {
      yield r'school_student_id';
      yield serializers.serialize(
        object.schoolStudentId,
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
    if (object.addressLatitude != null) {
      yield r'address_latitude';
      yield serializers.serialize(
        object.addressLatitude,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.addressLongitude != null) {
      yield r'address_longitude';
      yield serializers.serialize(
        object.addressLongitude,
        specifiedType: const FullType.nullable(double),
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
        specifiedType: const FullType(PatchedStudentRequestStatusEnum),
      );
    }
    if (object.enrollmentDate != null) {
      yield r'enrollment_date';
      yield serializers.serialize(
        object.enrollmentDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedStudentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedStudentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'school':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.school = valueDes;
          break;
        case r'school_student_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schoolStudentId = valueDes;
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
        case r'address_latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.addressLatitude = valueDes;
          break;
        case r'address_longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.addressLongitude = valueDes;
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
            specifiedType: const FullType(PatchedStudentRequestStatusEnum),
          ) as PatchedStudentRequestStatusEnum;
          result.status = valueDes;
          break;
        case r'enrollment_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.enrollmentDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedStudentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedStudentRequestBuilder();
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

class PatchedStudentRequestStatusEnum extends EnumClass {

  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'active')
  static const PatchedStudentRequestStatusEnum active = _$patchedStudentRequestStatusEnum_active;
  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'inactive')
  static const PatchedStudentRequestStatusEnum inactive = _$patchedStudentRequestStatusEnum_inactive;
  /// * `active` - Active * `inactive` - Inactive * `suspended` - Suspended
  @BuiltValueEnumConst(wireName: r'suspended')
  static const PatchedStudentRequestStatusEnum suspended = _$patchedStudentRequestStatusEnum_suspended;

  static Serializer<PatchedStudentRequestStatusEnum> get serializer => _$patchedStudentRequestStatusEnumSerializer;

  const PatchedStudentRequestStatusEnum._(String name): super(name);

  static BuiltSet<PatchedStudentRequestStatusEnum> get values => _$patchedStudentRequestStatusEnumValues;
  static PatchedStudentRequestStatusEnum valueOf(String name) => _$patchedStudentRequestStatusEnumValueOf(name);
}

