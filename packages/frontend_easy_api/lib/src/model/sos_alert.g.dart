// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sos_alert.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SOSAlertStatusEnum _$sOSAlertStatusEnum_active =
    const SOSAlertStatusEnum._('active');
const SOSAlertStatusEnum _$sOSAlertStatusEnum_acknowledged =
    const SOSAlertStatusEnum._('acknowledged');
const SOSAlertStatusEnum _$sOSAlertStatusEnum_resolved =
    const SOSAlertStatusEnum._('resolved');
const SOSAlertStatusEnum _$sOSAlertStatusEnum_falseAlarm =
    const SOSAlertStatusEnum._('falseAlarm');

SOSAlertStatusEnum _$sOSAlertStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$sOSAlertStatusEnum_active;
    case 'acknowledged':
      return _$sOSAlertStatusEnum_acknowledged;
    case 'resolved':
      return _$sOSAlertStatusEnum_resolved;
    case 'falseAlarm':
      return _$sOSAlertStatusEnum_falseAlarm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SOSAlertStatusEnum> _$sOSAlertStatusEnumValues =
    BuiltSet<SOSAlertStatusEnum>(const <SOSAlertStatusEnum>[
  _$sOSAlertStatusEnum_active,
  _$sOSAlertStatusEnum_acknowledged,
  _$sOSAlertStatusEnum_resolved,
  _$sOSAlertStatusEnum_falseAlarm,
]);

Serializer<SOSAlertStatusEnum> _$sOSAlertStatusEnumSerializer =
    _$SOSAlertStatusEnumSerializer();

class _$SOSAlertStatusEnumSerializer
    implements PrimitiveSerializer<SOSAlertStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
    'falseAlarm': 'false_alarm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
    'false_alarm': 'falseAlarm',
  };

  @override
  final Iterable<Type> types = const <Type>[SOSAlertStatusEnum];
  @override
  final String wireName = 'SOSAlertStatusEnum';

  @override
  Object serialize(Serializers serializers, SOSAlertStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SOSAlertStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SOSAlertStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SOSAlert extends SOSAlert {
  @override
  final int alertId;
  @override
  final String kioskId;
  @override
  final String? busLicensePlate;
  @override
  final String? busNumber;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final SOSAlertStatusEnum? status;
  @override
  final String? message;
  @override
  final JsonObject? metadata;
  @override
  final DateTime createdAt;
  @override
  final DateTime? acknowledgedAt;
  @override
  final DateTime? resolvedAt;
  @override
  final String? acknowledgedBy;
  @override
  final String? resolvedBy;

  factory _$SOSAlert([void Function(SOSAlertBuilder)? updates]) =>
      (SOSAlertBuilder()..update(updates))._build();

  _$SOSAlert._(
      {required this.alertId,
      required this.kioskId,
      this.busLicensePlate,
      this.busNumber,
      this.latitude,
      this.longitude,
      this.status,
      this.message,
      this.metadata,
      required this.createdAt,
      this.acknowledgedAt,
      this.resolvedAt,
      this.acknowledgedBy,
      this.resolvedBy})
      : super._();
  @override
  SOSAlert rebuild(void Function(SOSAlertBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SOSAlertBuilder toBuilder() => SOSAlertBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SOSAlert &&
        alertId == other.alertId &&
        kioskId == other.kioskId &&
        busLicensePlate == other.busLicensePlate &&
        busNumber == other.busNumber &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        status == other.status &&
        message == other.message &&
        metadata == other.metadata &&
        createdAt == other.createdAt &&
        acknowledgedAt == other.acknowledgedAt &&
        resolvedAt == other.resolvedAt &&
        acknowledgedBy == other.acknowledgedBy &&
        resolvedBy == other.resolvedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, busLicensePlate.hashCode);
    _$hash = $jc(_$hash, busNumber.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, acknowledgedAt.hashCode);
    _$hash = $jc(_$hash, resolvedAt.hashCode);
    _$hash = $jc(_$hash, acknowledgedBy.hashCode);
    _$hash = $jc(_$hash, resolvedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SOSAlert')
          ..add('alertId', alertId)
          ..add('kioskId', kioskId)
          ..add('busLicensePlate', busLicensePlate)
          ..add('busNumber', busNumber)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('status', status)
          ..add('message', message)
          ..add('metadata', metadata)
          ..add('createdAt', createdAt)
          ..add('acknowledgedAt', acknowledgedAt)
          ..add('resolvedAt', resolvedAt)
          ..add('acknowledgedBy', acknowledgedBy)
          ..add('resolvedBy', resolvedBy))
        .toString();
  }
}

class SOSAlertBuilder implements Builder<SOSAlert, SOSAlertBuilder> {
  _$SOSAlert? _$v;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  String? _busLicensePlate;
  String? get busLicensePlate => _$this._busLicensePlate;
  set busLicensePlate(String? busLicensePlate) =>
      _$this._busLicensePlate = busLicensePlate;

  String? _busNumber;
  String? get busNumber => _$this._busNumber;
  set busNumber(String? busNumber) => _$this._busNumber = busNumber;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  SOSAlertStatusEnum? _status;
  SOSAlertStatusEnum? get status => _$this._status;
  set status(SOSAlertStatusEnum? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _acknowledgedAt;
  DateTime? get acknowledgedAt => _$this._acknowledgedAt;
  set acknowledgedAt(DateTime? acknowledgedAt) =>
      _$this._acknowledgedAt = acknowledgedAt;

  DateTime? _resolvedAt;
  DateTime? get resolvedAt => _$this._resolvedAt;
  set resolvedAt(DateTime? resolvedAt) => _$this._resolvedAt = resolvedAt;

  String? _acknowledgedBy;
  String? get acknowledgedBy => _$this._acknowledgedBy;
  set acknowledgedBy(String? acknowledgedBy) =>
      _$this._acknowledgedBy = acknowledgedBy;

  String? _resolvedBy;
  String? get resolvedBy => _$this._resolvedBy;
  set resolvedBy(String? resolvedBy) => _$this._resolvedBy = resolvedBy;

  SOSAlertBuilder() {
    SOSAlert._defaults(this);
  }

  SOSAlertBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alertId = $v.alertId;
      _kioskId = $v.kioskId;
      _busLicensePlate = $v.busLicensePlate;
      _busNumber = $v.busNumber;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _status = $v.status;
      _message = $v.message;
      _metadata = $v.metadata;
      _createdAt = $v.createdAt;
      _acknowledgedAt = $v.acknowledgedAt;
      _resolvedAt = $v.resolvedAt;
      _acknowledgedBy = $v.acknowledgedBy;
      _resolvedBy = $v.resolvedBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SOSAlert other) {
    _$v = other as _$SOSAlert;
  }

  @override
  void update(void Function(SOSAlertBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SOSAlert build() => _build();

  _$SOSAlert _build() {
    final _$result = _$v ??
        _$SOSAlert._(
          alertId: BuiltValueNullFieldError.checkNotNull(
              alertId, r'SOSAlert', 'alertId'),
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'SOSAlert', 'kioskId'),
          busLicensePlate: busLicensePlate,
          busNumber: busNumber,
          latitude: latitude,
          longitude: longitude,
          status: status,
          message: message,
          metadata: metadata,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'SOSAlert', 'createdAt'),
          acknowledgedAt: acknowledgedAt,
          resolvedAt: resolvedAt,
          acknowledgedBy: acknowledgedBy,
          resolvedBy: resolvedBy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
