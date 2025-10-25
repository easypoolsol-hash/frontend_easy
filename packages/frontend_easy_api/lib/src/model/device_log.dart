//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_log.g.dart';

/// Serializer for device logs
///
/// Properties:
/// * [logId] - Auto-incrementing log entry ID
/// * [kiosk] - Kiosk that generated this log entry
/// * [kioskId] 
/// * [logLevel] - Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
/// * [message] - Log message content
/// * [metadata] - Additional structured data as JSON
/// * [timestamp] - When this log entry was created
@BuiltValue()
abstract class DeviceLog implements Built<DeviceLog, DeviceLogBuilder> {
  /// Auto-incrementing log entry ID
  @BuiltValueField(wireName: r'log_id')
  int get logId;

  /// Kiosk that generated this log entry
  @BuiltValueField(wireName: r'kiosk')
  String get kiosk;

  @BuiltValueField(wireName: r'kiosk_id')
  String get kioskId;

  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueField(wireName: r'log_level')
  DeviceLogLogLevelEnum get logLevel;
  // enum logLevelEnum {  DEBUG,  INFO,  WARN,  ERROR,  CRITICAL,  };

  /// Log message content
  @BuiltValueField(wireName: r'message')
  String get message;

  /// Additional structured data as JSON
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// When this log entry was created
  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  DeviceLog._();

  factory DeviceLog([void updates(DeviceLogBuilder b)]) = _$DeviceLog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceLogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceLog> get serializer => _$DeviceLogSerializer();
}

class _$DeviceLogSerializer implements PrimitiveSerializer<DeviceLog> {
  @override
  final Iterable<Type> types = const [DeviceLog, _$DeviceLog];

  @override
  final String wireName = r'DeviceLog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceLog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'log_id';
    yield serializers.serialize(
      object.logId,
      specifiedType: const FullType(int),
    );
    yield r'kiosk';
    yield serializers.serialize(
      object.kiosk,
      specifiedType: const FullType(String),
    );
    yield r'kiosk_id';
    yield serializers.serialize(
      object.kioskId,
      specifiedType: const FullType(String),
    );
    yield r'log_level';
    yield serializers.serialize(
      object.logLevel,
      specifiedType: const FullType(DeviceLogLogLevelEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceLog object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceLogBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'log_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logId = valueDes;
          break;
        case r'kiosk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kiosk = valueDes;
          break;
        case r'kiosk_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kioskId = valueDes;
          break;
        case r'log_level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceLogLogLevelEnum),
          ) as DeviceLogLogLevelEnum;
          result.logLevel = valueDes;
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
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceLog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceLogBuilder();
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

class DeviceLogLogLevelEnum extends EnumClass {

  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'DEBUG')
  static const DeviceLogLogLevelEnum DEBUG = _$deviceLogLogLevelEnum_DEBUG;
  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'INFO')
  static const DeviceLogLogLevelEnum INFO = _$deviceLogLogLevelEnum_INFO;
  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'WARN')
  static const DeviceLogLogLevelEnum WARN = _$deviceLogLogLevelEnum_WARN;
  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const DeviceLogLogLevelEnum ERROR = _$deviceLogLogLevelEnum_ERROR;
  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'CRITICAL')
  static const DeviceLogLogLevelEnum CRITICAL = _$deviceLogLogLevelEnum_CRITICAL;

  static Serializer<DeviceLogLogLevelEnum> get serializer => _$deviceLogLogLevelEnumSerializer;

  const DeviceLogLogLevelEnum._(String name): super(name);

  static BuiltSet<DeviceLogLogLevelEnum> get values => _$deviceLogLogLevelEnumValues;
  static DeviceLogLogLevelEnum valueOf(String name) => _$deviceLogLogLevelEnumValueOf(name);
}

