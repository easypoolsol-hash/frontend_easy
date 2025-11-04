// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceLogLogLevelEnum _$deviceLogLogLevelEnum_DEBUG =
    const DeviceLogLogLevelEnum._('DEBUG');
const DeviceLogLogLevelEnum _$deviceLogLogLevelEnum_INFO =
    const DeviceLogLogLevelEnum._('INFO');
const DeviceLogLogLevelEnum _$deviceLogLogLevelEnum_WARN =
    const DeviceLogLogLevelEnum._('WARN');
const DeviceLogLogLevelEnum _$deviceLogLogLevelEnum_ERROR =
    const DeviceLogLogLevelEnum._('ERROR');
const DeviceLogLogLevelEnum _$deviceLogLogLevelEnum_CRITICAL =
    const DeviceLogLogLevelEnum._('CRITICAL');

DeviceLogLogLevelEnum _$deviceLogLogLevelEnumValueOf(String name) {
  switch (name) {
    case 'DEBUG':
      return _$deviceLogLogLevelEnum_DEBUG;
    case 'INFO':
      return _$deviceLogLogLevelEnum_INFO;
    case 'WARN':
      return _$deviceLogLogLevelEnum_WARN;
    case 'ERROR':
      return _$deviceLogLogLevelEnum_ERROR;
    case 'CRITICAL':
      return _$deviceLogLogLevelEnum_CRITICAL;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeviceLogLogLevelEnum> _$deviceLogLogLevelEnumValues =
    BuiltSet<DeviceLogLogLevelEnum>(const <DeviceLogLogLevelEnum>[
  _$deviceLogLogLevelEnum_DEBUG,
  _$deviceLogLogLevelEnum_INFO,
  _$deviceLogLogLevelEnum_WARN,
  _$deviceLogLogLevelEnum_ERROR,
  _$deviceLogLogLevelEnum_CRITICAL,
]);

Serializer<DeviceLogLogLevelEnum> _$deviceLogLogLevelEnumSerializer =
    _$DeviceLogLogLevelEnumSerializer();

class _$DeviceLogLogLevelEnumSerializer
    implements PrimitiveSerializer<DeviceLogLogLevelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEBUG': 'DEBUG',
    'INFO': 'INFO',
    'WARN': 'WARN',
    'ERROR': 'ERROR',
    'CRITICAL': 'CRITICAL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEBUG': 'DEBUG',
    'INFO': 'INFO',
    'WARN': 'WARN',
    'ERROR': 'ERROR',
    'CRITICAL': 'CRITICAL',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceLogLogLevelEnum];
  @override
  final String wireName = 'DeviceLogLogLevelEnum';

  @override
  Object serialize(Serializers serializers, DeviceLogLogLevelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeviceLogLogLevelEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeviceLogLogLevelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeviceLog extends DeviceLog {
  @override
  final int logId;
  @override
  final String kiosk;
  @override
  final String kioskId;
  @override
  final DeviceLogLogLevelEnum logLevel;
  @override
  final String message;
  @override
  final JsonObject? metadata;
  @override
  final DateTime timestamp;

  factory _$DeviceLog([void Function(DeviceLogBuilder)? updates]) =>
      (DeviceLogBuilder()..update(updates))._build();

  _$DeviceLog._(
      {required this.logId,
      required this.kiosk,
      required this.kioskId,
      required this.logLevel,
      required this.message,
      this.metadata,
      required this.timestamp})
      : super._();
  @override
  DeviceLog rebuild(void Function(DeviceLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceLogBuilder toBuilder() => DeviceLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceLog &&
        logId == other.logId &&
        kiosk == other.kiosk &&
        kioskId == other.kioskId &&
        logLevel == other.logLevel &&
        message == other.message &&
        metadata == other.metadata &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logId.hashCode);
    _$hash = $jc(_$hash, kiosk.hashCode);
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, logLevel.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceLog')
          ..add('logId', logId)
          ..add('kiosk', kiosk)
          ..add('kioskId', kioskId)
          ..add('logLevel', logLevel)
          ..add('message', message)
          ..add('metadata', metadata)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class DeviceLogBuilder implements Builder<DeviceLog, DeviceLogBuilder> {
  _$DeviceLog? _$v;

  int? _logId;
  int? get logId => _$this._logId;
  set logId(int? logId) => _$this._logId = logId;

  String? _kiosk;
  String? get kiosk => _$this._kiosk;
  set kiosk(String? kiosk) => _$this._kiosk = kiosk;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  DeviceLogLogLevelEnum? _logLevel;
  DeviceLogLogLevelEnum? get logLevel => _$this._logLevel;
  set logLevel(DeviceLogLogLevelEnum? logLevel) => _$this._logLevel = logLevel;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DeviceLogBuilder() {
    DeviceLog._defaults(this);
  }

  DeviceLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logId = $v.logId;
      _kiosk = $v.kiosk;
      _kioskId = $v.kioskId;
      _logLevel = $v.logLevel;
      _message = $v.message;
      _metadata = $v.metadata;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceLog other) {
    _$v = other as _$DeviceLog;
  }

  @override
  void update(void Function(DeviceLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceLog build() => _build();

  _$DeviceLog _build() {
    final _$result = _$v ??
        _$DeviceLog._(
          logId: BuiltValueNullFieldError.checkNotNull(
              logId, r'DeviceLog', 'logId'),
          kiosk: BuiltValueNullFieldError.checkNotNull(
              kiosk, r'DeviceLog', 'kiosk'),
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'DeviceLog', 'kioskId'),
          logLevel: BuiltValueNullFieldError.checkNotNull(
              logLevel, r'DeviceLog', 'logLevel'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DeviceLog', 'message'),
          metadata: metadata,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'DeviceLog', 'timestamp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
