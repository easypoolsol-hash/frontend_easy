//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/school.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paginated_school_list.g.dart';

/// PaginatedSchoolList
///
/// Properties:
/// * [count] 
/// * [next] 
/// * [previous] 
/// * [results] 
@BuiltValue()
abstract class PaginatedSchoolList implements Built<PaginatedSchoolList, PaginatedSchoolListBuilder> {
  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'next')
  String? get next;

  @BuiltValueField(wireName: r'previous')
  String? get previous;

  @BuiltValueField(wireName: r'results')
  BuiltList<School> get results;

  PaginatedSchoolList._();

  factory PaginatedSchoolList([void updates(PaginatedSchoolListBuilder b)]) = _$PaginatedSchoolList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginatedSchoolListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginatedSchoolList> get serializer => _$PaginatedSchoolListSerializer();
}

class _$PaginatedSchoolListSerializer implements PrimitiveSerializer<PaginatedSchoolList> {
  @override
  final Iterable<Type> types = const [PaginatedSchoolList, _$PaginatedSchoolList];

  @override
  final String wireName = r'PaginatedSchoolList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginatedSchoolList object, {
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
      specifiedType: const FullType(BuiltList, [FullType(School)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PaginatedSchoolList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaginatedSchoolListBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(School)]),
          ) as BuiltList<School>;
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
  PaginatedSchoolList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginatedSchoolListBuilder();
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

