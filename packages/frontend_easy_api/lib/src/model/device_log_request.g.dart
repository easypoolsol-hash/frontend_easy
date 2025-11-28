// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_log_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceLogRequestLogLevelEnum _$deviceLogRequestLogLevelEnum_DEBUG =
    const DeviceLogRequestLogLevelEnum._('DEBUG');
const DeviceLogRequestLogLevelEnum _$deviceLogRequestLogLevelEnum_INFO =
    const DeviceLogRequestLogLevelEnum._('INFO');
const DeviceLogRequestLogLevelEnum _$deviceLogRequestLogLevelEnum_WARN =
    const DeviceLogRequestLogLevelEnum._('WARN');
const DeviceLogRequestLogLevelEnum _$deviceLogRequestLogLevelEnum_ERROR =
    const DeviceLogRequestLogLevelEnum._('ERROR');
const DeviceLogRequestLogLevelEnum _$deviceLogRequestLogLevelEnum_CRITICAL =
    const DeviceLogRequestLogLevelEnum._('CRITICAL');

DeviceLogRequestLogLevelEnum _$deviceLogRequestLogLevelEnumValueOf(
    String name) {
  switch (name) {
    case 'DEBUG':
      return _$deviceLogRequestLogLevelEnum_DEBUG;
    case 'INFO':
      return _$deviceLogRequestLogLevelEnum_INFO;
    case 'WARN':
      return _$deviceLogRequestLogLevelEnum_WARN;
    case 'ERROR':
      return _$deviceLogRequestLogLevelEnum_ERROR;
    case 'CRITICAL':
      return _$deviceLogRequestLogLevelEnum_CRITICAL;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeviceLogRequestLogLevelEnum>
    _$deviceLogRequestLogLevelEnumValues =
    BuiltSet<DeviceLogRequestLogLevelEnum>(const <DeviceLogRequestLogLevelEnum>[
  _$deviceLogRequestLogLevelEnum_DEBUG,
  _$deviceLogRequestLogLevelEnum_INFO,
  _$deviceLogRequestLogLevelEnum_WARN,
  _$deviceLogRequestLogLevelEnum_ERROR,
  _$deviceLogRequestLogLevelEnum_CRITICAL,
]);

Serializer<DeviceLogRequestLogLevelEnum>
    _$deviceLogRequestLogLevelEnumSerializer =
    _$DeviceLogRequestLogLevelEnumSerializer();

class _$DeviceLogRequestLogLevelEnumSerializer
    implements PrimitiveSerializer<DeviceLogRequestLogLevelEnum> {
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
  final Iterable<Type> types = const <Type>[DeviceLogRequestLogLevelEnum];
  @override
  final String wireName = 'DeviceLogRequestLogLevelEnum';

  @override
  Object serialize(Serializers serializers, DeviceLogRequestLogLevelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeviceLogRequestLogLevelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeviceLogRequestLogLevelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DeviceLogRequest extends DeviceLogRequest {
  @override
  final String kiosk;
  @override
  final DeviceLogRequestLogLevelEnum logLevel;
  @override
  final String message;
  @override
  final JsonObject? metadata;

  factory _$DeviceLogRequest(
          [void Function(DeviceLogRequestBuilder)? updates]) =>
      (DeviceLogRequestBuilder()..update(updates))._build();

  _$DeviceLogRequest._(
      {required this.kiosk,
      required this.logLevel,
      required this.message,
      this.metadata})
      : super._();
  @override
  DeviceLogRequest rebuild(void Function(DeviceLogRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceLogRequestBuilder toBuilder() =>
      DeviceLogRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceLogRequest &&
        kiosk == other.kiosk &&
        logLevel == other.logLevel &&
        message == other.message &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kiosk.hashCode);
    _$hash = $jc(_$hash, logLevel.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceLogRequest')
          ..add('kiosk', kiosk)
          ..add('logLevel', logLevel)
          ..add('message', message)
          ..add('metadata', metadata))
        .toString();
  }
}

class DeviceLogRequestBuilder
    implements Builder<DeviceLogRequest, DeviceLogRequestBuilder> {
  _$DeviceLogRequest? _$v;

  String? _kiosk;
  String? get kiosk => _$this._kiosk;
  set kiosk(String? kiosk) => _$this._kiosk = kiosk;

  DeviceLogRequestLogLevelEnum? _logLevel;
  DeviceLogRequestLogLevelEnum? get logLevel => _$this._logLevel;
  set logLevel(DeviceLogRequestLogLevelEnum? logLevel) =>
      _$this._logLevel = logLevel;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  DeviceLogRequestBuilder() {
    DeviceLogRequest._defaults(this);
  }

  DeviceLogRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kiosk = $v.kiosk;
      _logLevel = $v.logLevel;
      _message = $v.message;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceLogRequest other) {
    _$v = other as _$DeviceLogRequest;
  }

  @override
  void update(void Function(DeviceLogRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceLogRequest build() => _build();

  _$DeviceLogRequest _build() {
    final _$result = _$v ??
        _$DeviceLogRequest._(
          kiosk: BuiltValueNullFieldError.checkNotNull(
              kiosk, r'DeviceLogRequest', 'kiosk'),
          logLevel: BuiltValueNullFieldError.checkNotNull(
              logLevel, r'DeviceLogRequest', 'logLevel'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DeviceLogRequest', 'message'),
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
