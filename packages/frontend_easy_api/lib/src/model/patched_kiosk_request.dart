//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_kiosk_request.g.dart';

/// Serializer for kiosks
///
/// Properties:
/// * [firmwareVersion] - Current firmware version installed on device
/// * [gitCommitSha] - Git commit SHA of current kiosk app build
/// * [lastHeartbeat] - Timestamp of last heartbeat received from device
/// * [isActive] - Whether this kiosk is active and accepting requests
/// * [batteryLevel] 
/// * [storageUsedMb] - Storage used in MB on the device
@BuiltValue()
abstract class PatchedKioskRequest implements Built<PatchedKioskRequest, PatchedKioskRequestBuilder> {
  /// Current firmware version installed on device
  @BuiltValueField(wireName: r'firmware_version')
  String? get firmwareVersion;

  /// Git commit SHA of current kiosk app build
  @BuiltValueField(wireName: r'git_commit_sha')
  String? get gitCommitSha;

  /// Timestamp of last heartbeat received from device
  @BuiltValueField(wireName: r'last_heartbeat')
  DateTime? get lastHeartbeat;

  /// Whether this kiosk is active and accepting requests
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: r'battery_level')
  double? get batteryLevel;

  /// Storage used in MB on the device
  @BuiltValueField(wireName: r'storage_used_mb')
  int? get storageUsedMb;

  PatchedKioskRequest._();

  factory PatchedKioskRequest([void updates(PatchedKioskRequestBuilder b)]) = _$PatchedKioskRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedKioskRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedKioskRequest> get serializer => _$PatchedKioskRequestSerializer();
}

class _$PatchedKioskRequestSerializer implements PrimitiveSerializer<PatchedKioskRequest> {
  @override
  final Iterable<Type> types = const [PatchedKioskRequest, _$PatchedKioskRequest];

  @override
  final String wireName = r'PatchedKioskRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedKioskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firmwareVersion != null) {
      yield r'firmware_version';
      yield serializers.serialize(
        object.firmwareVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.gitCommitSha != null) {
      yield r'git_commit_sha';
      yield serializers.serialize(
        object.gitCommitSha,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastHeartbeat != null) {
      yield r'last_heartbeat';
      yield serializers.serialize(
        object.lastHeartbeat,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.batteryLevel != null) {
      yield r'battery_level';
      yield serializers.serialize(
        object.batteryLevel,
        specifiedType: const FullType(double),
      );
    }
    if (object.storageUsedMb != null) {
      yield r'storage_used_mb';
      yield serializers.serialize(
        object.storageUsedMb,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedKioskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedKioskRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firmware_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firmwareVersion = valueDes;
          break;
        case r'git_commit_sha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gitCommitSha = valueDes;
          break;
        case r'last_heartbeat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastHeartbeat = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'battery_level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.batteryLevel = valueDes;
          break;
        case r'storage_used_mb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.storageUsedMb = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedKioskRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedKioskRequestBuilder();
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

