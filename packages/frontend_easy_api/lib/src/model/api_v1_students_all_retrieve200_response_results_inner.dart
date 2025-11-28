//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_students_all_retrieve200_response_results_inner.g.dart';

/// ApiV1StudentsAllRetrieve200ResponseResultsInner
///
/// Properties:
/// * [schoolStudentId] 
/// * [studentName] 
/// * [grade] 
/// * [busNumber] 
/// * [routeName] 
/// * [status] 
@BuiltValue()
abstract class ApiV1StudentsAllRetrieve200ResponseResultsInner implements Built<ApiV1StudentsAllRetrieve200ResponseResultsInner, ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder> {
  @BuiltValueField(wireName: r'school_student_id')
  String? get schoolStudentId;

  @BuiltValueField(wireName: r'student_name')
  String? get studentName;

  @BuiltValueField(wireName: r'grade')
  String? get grade;

  @BuiltValueField(wireName: r'bus_number')
  String? get busNumber;

  @BuiltValueField(wireName: r'route_name')
  String? get routeName;

  @BuiltValueField(wireName: r'status')
  String? get status;

  ApiV1StudentsAllRetrieve200ResponseResultsInner._();

  factory ApiV1StudentsAllRetrieve200ResponseResultsInner([void updates(ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder b)]) = _$ApiV1StudentsAllRetrieve200ResponseResultsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1StudentsAllRetrieve200ResponseResultsInner> get serializer => _$ApiV1StudentsAllRetrieve200ResponseResultsInnerSerializer();
}

class _$ApiV1StudentsAllRetrieve200ResponseResultsInnerSerializer implements PrimitiveSerializer<ApiV1StudentsAllRetrieve200ResponseResultsInner> {
  @override
  final Iterable<Type> types = const [ApiV1StudentsAllRetrieve200ResponseResultsInner, _$ApiV1StudentsAllRetrieve200ResponseResultsInner];

  @override
  final String wireName = r'ApiV1StudentsAllRetrieve200ResponseResultsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1StudentsAllRetrieve200ResponseResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.schoolStudentId != null) {
      yield r'school_student_id';
      yield serializers.serialize(
        object.schoolStudentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.studentName != null) {
      yield r'student_name';
      yield serializers.serialize(
        object.studentName,
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
    if (object.busNumber != null) {
      yield r'bus_number';
      yield serializers.serialize(
        object.busNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.routeName != null) {
      yield r'route_name';
      yield serializers.serialize(
        object.routeName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1StudentsAllRetrieve200ResponseResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'school_student_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schoolStudentId = valueDes;
          break;
        case r'student_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.studentName = valueDes;
          break;
        case r'grade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.grade = valueDes;
          break;
        case r'bus_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.busNumber = valueDes;
          break;
        case r'route_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.routeName = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  ApiV1StudentsAllRetrieve200ResponseResultsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder();
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

