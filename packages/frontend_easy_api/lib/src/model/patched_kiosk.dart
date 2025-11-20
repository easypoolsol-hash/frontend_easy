//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/operation_timing.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_kiosk.g.dart';

/// Serializer for kiosks
///
/// Properties:
/// * [kioskId] - Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
/// * [bus] 
/// * [busLicensePlate] 
/// * [firmwareVersion] - Current firmware version installed on device
/// * [gitCommitSha] - Git commit SHA of current kiosk app build
/// * [lastHeartbeat] - Timestamp of last heartbeat received from device
/// * [isActive] - Whether this kiosk is active and accepting requests
/// * [batteryLevel] 
/// * [storageUsedMb] - Storage used in MB on the device
/// * [operationTiming] 
/// * [statusDisplay] 
/// * [isOnline] 
/// * [createdAt] - When this kiosk was registered
/// * [updatedAt] - When this kiosk record was last updated
@BuiltValue()
abstract class PatchedKiosk implements Built<PatchedKiosk, PatchedKioskBuilder> {
  /// Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
  @BuiltValueField(wireName: r'kiosk_id')
  String? get kioskId;

  @BuiltValueField(wireName: r'bus')
  String? get bus;

  @BuiltValueField(wireName: r'bus_license_plate')
  String? get busLicensePlate;

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

  @BuiltValueField(wireName: r'operation_timing')
  OperationTiming? get operationTiming;

  @BuiltValueField(wireName: r'status_display')
  String? get statusDisplay;

  @BuiltValueField(wireName: r'is_online')
  String? get isOnline;

  /// When this kiosk was registered
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// When this kiosk record was last updated
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  PatchedKiosk._();

  factory PatchedKiosk([void updates(PatchedKioskBuilder b)]) = _$PatchedKiosk;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedKioskBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedKiosk> get serializer => _$PatchedKioskSerializer();
}

class _$PatchedKioskSerializer implements PrimitiveSerializer<PatchedKiosk> {
  @override
  final Iterable<Type> types = const [PatchedKiosk, _$PatchedKiosk];

  @override
  final String wireName = r'PatchedKiosk';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedKiosk object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kioskId != null) {
      yield r'kiosk_id';
      yield serializers.serialize(
        object.kioskId,
        specifiedType: const FullType(String),
      );
    }
    if (object.bus != null) {
      yield r'bus';
      yield serializers.serialize(
        object.bus,
        specifiedType: const FullType(String),
      );
    }
    if (object.busLicensePlate != null) {
      yield r'bus_license_plate';
      yield serializers.serialize(
        object.busLicensePlate,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.operationTiming != null) {
      yield r'operation_timing';
      yield serializers.serialize(
        object.operationTiming,
        specifiedType: const FullType(OperationTiming),
      );
    }
    if (object.statusDisplay != null) {
      yield r'status_display';
      yield serializers.serialize(
        object.statusDisplay,
        specifiedType: const FullType(String),
      );
    }
    if (object.isOnline != null) {
      yield r'is_online';
      yield serializers.serialize(
        object.isOnline,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedKiosk object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedKioskBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kiosk_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kioskId = valueDes;
          break;
        case r'bus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bus = valueDes;
          break;
        case r'bus_license_plate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.busLicensePlate = valueDes;
          break;
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
        case r'operation_timing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperationTiming),
          ) as OperationTiming;
          result.operationTiming.replace(valueDes);
          break;
        case r'status_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusDisplay = valueDes;
          break;
        case r'is_online':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isOnline = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedKiosk deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedKioskBuilder();
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

