//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:frontend_easy_api/src/model/audit_log.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paginated_audit_log_list.g.dart';

/// PaginatedAuditLogList
///
/// Properties:
/// * [count] 
/// * [next] 
/// * [previous] 
/// * [results] 
@BuiltValue()
abstract class PaginatedAuditLogList implements Built<PaginatedAuditLogList, PaginatedAuditLogListBuilder> {
  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'next')
  String? get next;

  @BuiltValueField(wireName: r'previous')
  String? get previous;

  @BuiltValueField(wireName: r'results')
  BuiltList<AuditLog> get results;

  PaginatedAuditLogList._();

  factory PaginatedAuditLogList([void updates(PaginatedAuditLogListBuilder b)]) = _$PaginatedAuditLogList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginatedAuditLogListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginatedAuditLogList> get serializer => _$PaginatedAuditLogListSerializer();
}

class _$PaginatedAuditLogListSerializer implements PrimitiveSerializer<PaginatedAuditLogList> {
  @override
  final Iterable<Type> types = const [PaginatedAuditLogList, _$PaginatedAuditLogList];

  @override
  final String wireName = r'PaginatedAuditLogList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginatedAuditLogList object, {
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
      specifiedType: const FullType(BuiltList, [FullType(AuditLog)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PaginatedAuditLogList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaginatedAuditLogListBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(AuditLog)]),
          ) as BuiltList<AuditLog>;
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
  PaginatedAuditLogList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginatedAuditLogListBuilder();
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

