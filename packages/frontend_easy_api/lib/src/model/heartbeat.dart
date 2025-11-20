//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/health_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'heartbeat.g.dart';

/// Serializer for kiosk heartbeat
///
/// Properties:
/// * [timestamp] - Heartbeat timestamp
/// * [databaseVersion] - Current database version on kiosk
/// * [databaseHash] - Database content hash
/// * [studentCount] - Students in DB
/// * [embeddingCount] - Embeddings in DB
/// * [gitCommitSha] - Git commit SHA of the kiosk app build (40 chars). Null for dev builds.
/// * [health] 
@BuiltValue()
abstract class Heartbeat implements Built<Heartbeat, HeartbeatBuilder> {
  /// Heartbeat timestamp
  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  /// Current database version on kiosk
  @BuiltValueField(wireName: r'database_version')
  String get databaseVersion;

  /// Database content hash
  @BuiltValueField(wireName: r'database_hash')
  String? get databaseHash;

  /// Students in DB
  @BuiltValueField(wireName: r'student_count')
  int get studentCount;

  /// Embeddings in DB
  @BuiltValueField(wireName: r'embedding_count')
  int get embeddingCount;

  /// Git commit SHA of the kiosk app build (40 chars). Null for dev builds.
  @BuiltValueField(wireName: r'git_commit_sha')
  String? get gitCommitSha;

  @BuiltValueField(wireName: r'health')
  HealthData? get health;

  Heartbeat._();

  factory Heartbeat([void updates(HeartbeatBuilder b)]) = _$Heartbeat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HeartbeatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Heartbeat> get serializer => _$HeartbeatSerializer();
}

class _$HeartbeatSerializer implements PrimitiveSerializer<Heartbeat> {
  @override
  final Iterable<Type> types = const [Heartbeat, _$Heartbeat];

  @override
  final String wireName = r'Heartbeat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Heartbeat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
    yield r'database_version';
    yield serializers.serialize(
      object.databaseVersion,
      specifiedType: const FullType(String),
    );
    if (object.databaseHash != null) {
      yield r'database_hash';
      yield serializers.serialize(
        object.databaseHash,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.gitCommitSha != null) {
      yield r'git_commit_sha';
      yield serializers.serialize(
        object.gitCommitSha,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.health != null) {
      yield r'health';
      yield serializers.serialize(
        object.health,
        specifiedType: const FullType(HealthData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Heartbeat object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HeartbeatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'database_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.databaseVersion = valueDes;
          break;
        case r'database_hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.databaseHash = valueDes;
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
        case r'git_commit_sha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gitCommitSha = valueDes;
          break;
        case r'health':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HealthData),
          ) as HealthData;
          result.health.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Heartbeat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HeartbeatBuilder();
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

