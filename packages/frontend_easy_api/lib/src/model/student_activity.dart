//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/boarding_event_nested.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_activity.g.dart';

/// Serializer for student activity with boarding events.  SECURITY: Does NOT expose internal student_id UUID to dashboard Uses school_student_id (human-readable) instead
///
/// Properties:
/// * [schoolStudentId] - School-provided student ID (e.g., STU-2024-001)
/// * [studentName] - Student name (decrypted by backend)
/// * [grade] - Student grade
/// * [busNumber] - Bus license plate
/// * [routeName] - Route name
/// * [events] - All boarding events for this student today
/// * [eventCount] - Number of events today
@BuiltValue()
abstract class StudentActivity implements Built<StudentActivity, StudentActivityBuilder> {
  /// School-provided student ID (e.g., STU-2024-001)
  @BuiltValueField(wireName: r'school_student_id')
  String get schoolStudentId;

  /// Student name (decrypted by backend)
  @BuiltValueField(wireName: r'student_name')
  String get studentName;

  /// Student grade
  @BuiltValueField(wireName: r'grade')
  String get grade;

  /// Bus license plate
  @BuiltValueField(wireName: r'bus_number')
  String? get busNumber;

  /// Route name
  @BuiltValueField(wireName: r'route_name')
  String? get routeName;

  /// All boarding events for this student today
  @BuiltValueField(wireName: r'events')
  BuiltList<BoardingEventNested> get events;

  /// Number of events today
  @BuiltValueField(wireName: r'event_count')
  int get eventCount;

  StudentActivity._();

  factory StudentActivity([void updates(StudentActivityBuilder b)]) = _$StudentActivity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudentActivityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StudentActivity> get serializer => _$StudentActivitySerializer();
}

class _$StudentActivitySerializer implements PrimitiveSerializer<StudentActivity> {
  @override
  final Iterable<Type> types = const [StudentActivity, _$StudentActivity];

  @override
  final String wireName = r'StudentActivity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StudentActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'school_student_id';
    yield serializers.serialize(
      object.schoolStudentId,
      specifiedType: const FullType(String),
    );
    yield r'student_name';
    yield serializers.serialize(
      object.studentName,
      specifiedType: const FullType(String),
    );
    yield r'grade';
    yield serializers.serialize(
      object.grade,
      specifiedType: const FullType(String),
    );
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
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [FullType(BoardingEventNested)]),
    );
    yield r'event_count';
    yield serializers.serialize(
      object.eventCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StudentActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StudentActivityBuilder result,
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
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BoardingEventNested)]),
          ) as BuiltList<BoardingEventNested>;
          result.events.replace(valueDes);
          break;
        case r'event_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.eventCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StudentActivity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudentActivityBuilder();
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

