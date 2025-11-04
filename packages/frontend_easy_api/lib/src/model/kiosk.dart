//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kiosk.g.dart';

/// Serializer for kiosks
///
/// Properties:
/// * [kioskId] - Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
/// * [bus] 
/// * [busLicensePlate] 
/// * [firmwareVersion] - Current firmware version installed on device
/// * [lastHeartbeat] - Timestamp of last heartbeat received from device
/// * [isActive] - Whether this kiosk is active and accepting requests
/// * [batteryLevel] 
/// * [storageUsedMb] - Storage used in MB on the device
/// * [statusDisplay] 
/// * [isOnline] 
/// * [createdAt] - When this kiosk was registered
/// * [updatedAt] - When this kiosk record was last updated
@BuiltValue()
abstract class Kiosk implements Built<Kiosk, KioskBuilder> {
  /// Unique kiosk device identifier (e.g., KIOSK001, BUS123-KIOSK)
  @BuiltValueField(wireName: r'kiosk_id')
  String get kioskId;

  @BuiltValueField(wireName: r'bus')
  String get bus;

  @BuiltValueField(wireName: r'bus_license_plate')
  String get busLicensePlate;

  /// Current firmware version installed on device
  @BuiltValueField(wireName: r'firmware_version')
  String? get firmwareVersion;

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

  @BuiltValueField(wireName: r'status_display')
  String get statusDisplay;

  @BuiltValueField(wireName: r'is_online')
  String get isOnline;

  /// When this kiosk was registered
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// When this kiosk record was last updated
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  Kiosk._();

  factory Kiosk([void updates(KioskBuilder b)]) = _$Kiosk;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KioskBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Kiosk> get serializer => _$KioskSerializer();
}

class _$KioskSerializer implements PrimitiveSerializer<Kiosk> {
  @override
  final Iterable<Type> types = const [Kiosk, _$Kiosk];

  @override
  final String wireName = r'Kiosk';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Kiosk object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kiosk_id';
    yield serializers.serialize(
      object.kioskId,
      specifiedType: const FullType(String),
    );
    yield r'bus';
    yield serializers.serialize(
      object.bus,
      specifiedType: const FullType(String),
    );
    yield r'bus_license_plate';
    yield serializers.serialize(
      object.busLicensePlate,
      specifiedType: const FullType(String),
    );
    if (object.firmwareVersion != null) {
      yield r'firmware_version';
      yield serializers.serialize(
        object.firmwareVersion,
        specifiedType: const FullType(String),
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
    yield r'status_display';
    yield serializers.serialize(
      object.statusDisplay,
      specifiedType: const FullType(String),
    );
    yield r'is_online';
    yield serializers.serialize(
      object.isOnline,
      specifiedType: const FullType(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Kiosk object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KioskBuilder result,
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
  Kiosk deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KioskBuilder();
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

