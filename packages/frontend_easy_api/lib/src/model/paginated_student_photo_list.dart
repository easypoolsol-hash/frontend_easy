//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/student_photo.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paginated_student_photo_list.g.dart';

/// PaginatedStudentPhotoList
///
/// Properties:
/// * [count] 
/// * [next] 
/// * [previous] 
/// * [results] 
@BuiltValue()
abstract class PaginatedStudentPhotoList implements Built<PaginatedStudentPhotoList, PaginatedStudentPhotoListBuilder> {
  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'next')
  String? get next;

  @BuiltValueField(wireName: r'previous')
  String? get previous;

  @BuiltValueField(wireName: r'results')
  BuiltList<StudentPhoto> get results;

  PaginatedStudentPhotoList._();

  factory PaginatedStudentPhotoList([void updates(PaginatedStudentPhotoListBuilder b)]) = _$PaginatedStudentPhotoList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginatedStudentPhotoListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginatedStudentPhotoList> get serializer => _$PaginatedStudentPhotoListSerializer();
}

class _$PaginatedStudentPhotoListSerializer implements PrimitiveSerializer<PaginatedStudentPhotoList> {
  @override
  final Iterable<Type> types = const [PaginatedStudentPhotoList, _$PaginatedStudentPhotoList];

  @override
  final String wireName = r'PaginatedStudentPhotoList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginatedStudentPhotoList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    if (object.next != null) {
      yield r'next';
      yield serializers.serialize(
        object.next,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(StudentPhoto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PaginatedStudentPhotoList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaginatedStudentPhotoListBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.next = valueDes;
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previous = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StudentPhoto)]),
          ) as BuiltList<StudentPhoto>;
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
  PaginatedStudentPhotoList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginatedStudentPhotoListBuilder();
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

