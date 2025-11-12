//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sos_alert.g.dart';

/// Serializer for SOS emergency alerts
///
/// Properties:
/// * [alertId] - Auto-incrementing alert ID
/// * [kioskId] 
/// * [busLicensePlate] 
/// * [busNumber] 
/// * [latitude] - GPS latitude at time of alert
/// * [longitude] - GPS longitude at time of alert
/// * [status] - Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
/// * [message] - Optional message/notes from the kiosk operator
/// * [metadata] - Additional data (battery level, network status, etc.)
/// * [createdAt] - When the alert was created
/// * [acknowledgedAt] - When the alert was first acknowledged by staff
/// * [resolvedAt] - When the alert was resolved
/// * [acknowledgedBy] - Name/ID of person who acknowledged the alert
/// * [resolvedBy] - Name/ID of person who resolved the alert
@BuiltValue()
abstract class SOSAlert implements Built<SOSAlert, SOSAlertBuilder> {
  /// Auto-incrementing alert ID
  @BuiltValueField(wireName: r'alert_id')
  int get alertId;

  @BuiltValueField(wireName: r'kiosk_id')
  String get kioskId;

  @BuiltValueField(wireName: r'bus_license_plate')
  String? get busLicensePlate;

  @BuiltValueField(wireName: r'bus_number')
  String? get busNumber;

  /// GPS latitude at time of alert
  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  /// GPS longitude at time of alert
  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  /// Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
  @BuiltValueField(wireName: r'status')
  SOSAlertStatusEnum? get status;
  // enum statusEnum {  active,  acknowledged,  resolved,  false_alarm,  };

  /// Optional message/notes from the kiosk operator
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Additional data (battery level, network status, etc.)
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// When the alert was created
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// When the alert was first acknowledged by staff
  @BuiltValueField(wireName: r'acknowledged_at')
  DateTime? get acknowledgedAt;

  /// When the alert was resolved
  @BuiltValueField(wireName: r'resolved_at')
  DateTime? get resolvedAt;

  /// Name/ID of person who acknowledged the alert
  @BuiltValueField(wireName: r'acknowledged_by')
  String? get acknowledgedBy;

  /// Name/ID of person who resolved the alert
  @BuiltValueField(wireName: r'resolved_by')
  String? get resolvedBy;

  SOSAlert._();

  factory SOSAlert([void updates(SOSAlertBuilder b)]) = _$SOSAlert;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SOSAlertBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SOSAlert> get serializer => _$SOSAlertSerializer();
}

class _$SOSAlertSerializer implements PrimitiveSerializer<SOSAlert> {
  @override
  final Iterable<Type> types = const [SOSAlert, _$SOSAlert];

  @override
  final String wireName = r'SOSAlert';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SOSAlert object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alert_id';
    yield serializers.serialize(
      object.alertId,
      specifiedType: const FullType(int),
    );
    yield r'kiosk_id';
    yield serializers.serialize(
      object.kioskId,
      specifiedType: const FullType(String),
    );
    yield r'bus_license_plate';
    yield object.busLicensePlate == null ? null : serializers.serialize(
      object.busLicensePlate,
      specifiedType: const FullType.nullable(String),
    );
    yield r'bus_number';
    yield object.busNumber == null ? null : serializers.serialize(
      object.busNumber,
      specifiedType: const FullType.nullable(String),
    );
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SOSAlertStatusEnum),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'acknowledged_at';
    yield object.acknowledgedAt == null ? null : serializers.serialize(
      object.acknowledgedAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'resolved_at';
    yield object.resolvedAt == null ? null : serializers.serialize(
      object.resolvedAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    if (object.acknowledgedBy != null) {
      yield r'acknowledged_by';
      yield serializers.serialize(
        object.acknowledgedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.resolvedBy != null) {
      yield r'resolved_by';
      yield serializers.serialize(
        object.resolvedBy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SOSAlert object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SOSAlertBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alert_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.alertId = valueDes;
          break;
        case r'kiosk_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kioskId = valueDes;
          break;
        case r'bus_license_plate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.busLicensePlate = valueDes;
          break;
        case r'bus_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.busNumber = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.longitude = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SOSAlertStatusEnum),
          ) as SOSAlertStatusEnum;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.metadata = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'acknowledged_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.acknowledgedAt = valueDes;
          break;
        case r'resolved_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.resolvedAt = valueDes;
          break;
        case r'acknowledged_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.acknowledgedBy = valueDes;
          break;
        case r'resolved_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resolvedBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SOSAlert deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SOSAlertBuilder();
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

class SOSAlertStatusEnum extends EnumClass {

  /// Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
  @BuiltValueEnumConst(wireName: r'active')
  static const SOSAlertStatusEnum active = _$sOSAlertStatusEnum_active;
  /// Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
  @BuiltValueEnumConst(wireName: r'acknowledged')
  static const SOSAlertStatusEnum acknowledged = _$sOSAlertStatusEnum_acknowledged;
  /// Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
  @BuiltValueEnumConst(wireName: r'resolved')
  static const SOSAlertStatusEnum resolved = _$sOSAlertStatusEnum_resolved;
  /// Current status of the alert  * `active` - Active * `acknowledged` - Acknowledged * `resolved` - Resolved * `false_alarm` - False Alarm
  @BuiltValueEnumConst(wireName: r'false_alarm')
  static const SOSAlertStatusEnum falseAlarm = _$sOSAlertStatusEnum_falseAlarm;

  static Serializer<SOSAlertStatusEnum> get serializer => _$sOSAlertStatusEnumSerializer;

  const SOSAlertStatusEnum._(String name): super(name);

  static BuiltSet<SOSAlertStatusEnum> get values => _$sOSAlertStatusEnumValues;
  static SOSAlertStatusEnum valueOf(String name) => _$sOSAlertStatusEnumValueOf(name);
}

