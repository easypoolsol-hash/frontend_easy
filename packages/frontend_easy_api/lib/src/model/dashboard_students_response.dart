//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/student_activity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_students_response.g.dart';

/// Paginated response for dashboard students.
///
/// Properties:
/// * [count] - Total number of students with events
/// * [next] - Has next page
/// * [previous] - Has previous page
/// * [results] - List of students
@BuiltValue()
abstract class DashboardStudentsResponse implements Built<DashboardStudentsResponse, DashboardStudentsResponseBuilder> {
  /// Total number of students with events
  @BuiltValueField(wireName: r'count')
  int get count;

  /// Has next page
  @BuiltValueField(wireName: r'next')
  bool get next;

  /// Has previous page
  @BuiltValueField(wireName: r'previous')
  bool get previous;

  /// List of students
  @BuiltValueField(wireName: r'results')
  BuiltList<StudentActivity> get results;

  DashboardStudentsResponse._();

  factory DashboardStudentsResponse([void updates(DashboardStudentsResponseBuilder b)]) = _$DashboardStudentsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardStudentsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardStudentsResponse> get serializer => _$DashboardStudentsResponseSerializer();
}

class _$DashboardStudentsResponseSerializer implements PrimitiveSerializer<DashboardStudentsResponse> {
  @override
  final Iterable<Type> types = const [DashboardStudentsResponse, _$DashboardStudentsResponse];

  @override
  final String wireName = r'DashboardStudentsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardStudentsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'next';
    yield serializers.serialize(
      object.next,
      specifiedType: const FullType(bool),
    );
    yield r'previous';
    yield serializers.serialize(
      object.previous,
      specifiedType: const FullType(bool),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(StudentActivity)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardStudentsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DashboardStudentsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.next = valueDes;
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.previous = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StudentActivity)]),
          ) as BuiltList<StudentActivity>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardStudentsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardStudentsResponseBuilder();
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

