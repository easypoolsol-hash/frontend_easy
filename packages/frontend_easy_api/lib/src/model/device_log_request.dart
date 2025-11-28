//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_log_request.g.dart';

/// Serializer for device logs
///
/// Properties:
/// * [kiosk] - Kiosk that generated this log entry
/// * [logLevel] - Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
/// * [message] - Log message content
/// * [metadata] - Additional structured data as JSON
@BuiltValue()
abstract class DeviceLogRequest implements Built<DeviceLogRequest, DeviceLogRequestBuilder> {
  /// Kiosk that generated this log entry
  @BuiltValueField(wireName: r'kiosk')
  String get kiosk;

  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueField(wireName: r'log_level')
  DeviceLogRequestLogLevelEnum get logLevel;
  // enum logLevelEnum {  DEBUG,  INFO,  WARN,  ERROR,  CRITICAL,  };

  /// Log message content
  @BuiltValueField(wireName: r'message')
  String get message;

  /// Additional structured data as JSON
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  DeviceLogRequest._();

  factory DeviceLogRequest([void updates(DeviceLogRequestBuilder b)]) = _$DeviceLogRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceLogRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceLogRequest> get serializer => _$DeviceLogRequestSerializer();
}

class _$DeviceLogRequestSerializer implements PrimitiveSerializer<DeviceLogRequest> {
  @override
  final Iterable<Type> types = const [DeviceLogRequest, _$DeviceLogRequest];

  @override
  final String wireName = r'DeviceLogRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceLogRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kiosk';
    yield serializers.serialize(
      object.kiosk,
      specifiedType: const FullType(String),
    );
    yield r'log_level';
    yield serializers.serialize(
      object.logLevel,
      specifiedType: const FullType(DeviceLogRequestLogLevelEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceLogRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceLogRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kiosk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kiosk = valueDes;
          break;
        case r'log_level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceLogRequestLogLevelEnum),
          ) as DeviceLogRequestLogLevelEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceLogRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceLogRequestBuilder();
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

class DeviceLogRequestLogLevelEnum extends EnumClass {

  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'DEBUG')
  static const DeviceLogRequestLogLevelEnum DEBUG = _$deviceLogRequestLogLevelEnum_DEBUG;
  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'INFO')
  static const DeviceLogRequestLogLevelEnum INFO = _$deviceLogRequestLogLevelEnum_INFO;
  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'WARN')
  static const DeviceLogRequestLogLevelEnum WARN = _$deviceLogRequestLogLevelEnum_WARN;
  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const DeviceLogRequestLogLevelEnum ERROR = _$deviceLogRequestLogLevelEnum_ERROR;
  /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @BuiltValueEnumConst(wireName: r'CRITICAL')
  static const DeviceLogRequestLogLevelEnum CRITICAL = _$deviceLogRequestLogLevelEnum_CRITICAL;

  static Serializer<DeviceLogRequestLogLevelEnum> get serializer => _$deviceLogRequestLogLevelEnumSerializer;

  const DeviceLogRequestLogLevelEnum._(String name): super(name);

  static BuiltSet<DeviceLogRequestLogLevelEnum> get values => _$deviceLogRequestLogLevelEnumValues;
  static DeviceLogRequestLogLevelEnum valueOf(String name) => _$deviceLogRequestLogLevelEnumValueOf(name);
}

