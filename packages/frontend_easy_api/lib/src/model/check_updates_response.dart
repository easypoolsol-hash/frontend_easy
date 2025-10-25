//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_updates_response.g.dart';

/// Serializer for check updates response
///
/// Properties:
/// * [needsUpdate] - Whether kiosk needs to download new snapshot
/// * [currentVersion] - Current database version timestamp
/// * [studentCount] - Number of students for this bus
/// * [embeddingCount] - Number of embeddings for this bus
/// * [contentHash] - Content hash for integrity verification
@BuiltValue()
abstract class CheckUpdatesResponse implements Built<CheckUpdatesResponse, CheckUpdatesResponseBuilder> {
  /// Whether kiosk needs to download new snapshot
  @BuiltValueField(wireName: r'needs_update')
  bool get needsUpdate;

  /// Current database version timestamp
  @BuiltValueField(wireName: r'current_version')
  String get currentVersion;

  /// Number of students for this bus
  @BuiltValueField(wireName: r'student_count')
  int get studentCount;

  /// Number of embeddings for this bus
  @BuiltValueField(wireName: r'embedding_count')
  int get embeddingCount;

  /// Content hash for integrity verification
  @BuiltValueField(wireName: r'content_hash')
  String get contentHash;

  CheckUpdatesResponse._();

  factory CheckUpdatesResponse([void updates(CheckUpdatesResponseBuilder b)]) = _$CheckUpdatesResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckUpdatesResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckUpdatesResponse> get serializer => _$CheckUpdatesResponseSerializer();
}

class _$CheckUpdatesResponseSerializer implements PrimitiveSerializer<CheckUpdatesResponse> {
  @override
  final Iterable<Type> types = const [CheckUpdatesResponse, _$CheckUpdatesResponse];

  @override
  final String wireName = r'CheckUpdatesResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckUpdatesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'needs_update';
    yield serializers.serialize(
      object.needsUpdate,
      specifiedType: const FullType(bool),
    );
    yield r'current_version';
    yield serializers.serialize(
      object.currentVersion,
      specifiedType: const FullType(String),
    );
    yield r'student_count';
    yield serializers.serialize(
      object.studentCount,
      specifiedType: const FullType(int),
    );
    yield r'embedding_count';
    yield serializers.serialize(
      object.embeddingCount,
      specifiedType: const FullType(int),
    );
    yield r'content_hash';
    yield serializers.serialize(
      object.contentHash,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckUpdatesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckUpdatesResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'needs_update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.needsUpdate = valueDes;
          break;
        case r'current_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currentVersion = valueDes;
          break;
        case r'student_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.studentCount = valueDes;
          break;
        case r'embedding_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.embeddingCount = valueDes;
          break;
        case r'content_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentHash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckUpdatesResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckUpdatesResponseBuilder();
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

