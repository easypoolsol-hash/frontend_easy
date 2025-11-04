// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Kiosk extends Kiosk {
  @override
  final String kioskId;
  @override
  final String bus;
  @override
  final String busLicensePlate;
  @override
  final String? firmwareVersion;
  @override
  final DateTime? lastHeartbeat;
  @override
  final bool? isActive;
  @override
  final double? batteryLevel;
  @override
  final int? storageUsedMb;
  @override
  final String statusDisplay;
  @override
  final String isOnline;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Kiosk([void Function(KioskBuilder)? updates]) =>
      (KioskBuilder()..update(updates))._build();

  _$Kiosk._(
      {required this.kioskId,
      required this.bus,
      required this.busLicensePlate,
      this.firmwareVersion,
      this.lastHeartbeat,
      this.isActive,
      this.batteryLevel,
      this.storageUsedMb,
      required this.statusDisplay,
      required this.isOnline,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  Kiosk rebuild(void Function(KioskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KioskBuilder toBuilder() => KioskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Kiosk &&
        kioskId == other.kioskId &&
        bus == other.bus &&
        busLicensePlate == other.busLicensePlate &&
        firmwareVersion == other.firmwareVersion &&
        lastHeartbeat == other.lastHeartbeat &&
        isActive == other.isActive &&
        batteryLevel == other.batteryLevel &&
        storageUsedMb == other.storageUsedMb &&
        statusDisplay == other.statusDisplay &&
        isOnline == other.isOnline &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, bus.hashCode);
    _$hash = $jc(_$hash, busLicensePlate.hashCode);
    _$hash = $jc(_$hash, firmwareVersion.hashCode);
    _$hash = $jc(_$hash, lastHeartbeat.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, batteryLevel.hashCode);
    _$hash = $jc(_$hash, storageUsedMb.hashCode);
    _$hash = $jc(_$hash, statusDisplay.hashCode);
    _$hash = $jc(_$hash, isOnline.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Kiosk')
          ..add('kioskId', kioskId)
          ..add('bus', bus)
          ..add('busLicensePlate', busLicensePlate)
          ..add('firmwareVersion', firmwareVersion)
          ..add('lastHeartbeat', lastHeartbeat)
          ..add('isActive', isActive)
          ..add('batteryLevel', batteryLevel)
          ..add('storageUsedMb', storageUsedMb)
          ..add('statusDisplay', statusDisplay)
          ..add('isOnline', isOnline)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class KioskBuilder implements Builder<Kiosk, KioskBuilder> {
  _$Kiosk? _$v;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  String? _bus;
  String? get bus => _$this._bus;
  set bus(String? bus) => _$this._bus = bus;

  String? _busLicensePlate;
  String? get busLicensePlate => _$this._busLicensePlate;
  set busLicensePlate(String? busLicensePlate) =>
      _$this._busLicensePlate = busLicensePlate;

  String? _firmwareVersion;
  String? get firmwareVersion => _$this._firmwareVersion;
  set firmwareVersion(String? firmwareVersion) =>
      _$this._firmwareVersion = firmwareVersion;

  DateTime? _lastHeartbeat;
  DateTime? get lastHeartbeat => _$this._lastHeartbeat;
  set lastHeartbeat(DateTime? lastHeartbeat) =>
      _$this._lastHeartbeat = lastHeartbeat;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  double? _batteryLevel;
  double? get batteryLevel => _$this._batteryLevel;
  set batteryLevel(double? batteryLevel) => _$this._batteryLevel = batteryLevel;

  int? _storageUsedMb;
  int? get storageUsedMb => _$this._storageUsedMb;
  set storageUsedMb(int? storageUsedMb) =>
      _$this._storageUsedMb = storageUsedMb;

  String? _statusDisplay;
  String? get statusDisplay => _$this._statusDisplay;
  set statusDisplay(String? statusDisplay) =>
      _$this._statusDisplay = statusDisplay;

  String? _isOnline;
  String? get isOnline => _$this._isOnline;
  set isOnline(String? isOnline) => _$this._isOnline = isOnline;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  KioskBuilder() {
    Kiosk._defaults(this);
  }

  KioskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kioskId = $v.kioskId;
      _bus = $v.bus;
      _busLicensePlate = $v.busLicensePlate;
      _firmwareVersion = $v.firmwareVersion;
      _lastHeartbeat = $v.lastHeartbeat;
      _isActive = $v.isActive;
      _batteryLevel = $v.batteryLevel;
      _storageUsedMb = $v.storageUsedMb;
      _statusDisplay = $v.statusDisplay;
      _isOnline = $v.isOnline;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Kiosk other) {
    _$v = other as _$Kiosk;
  }

  @override
  void update(void Function(KioskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Kiosk build() => _build();

  _$Kiosk _build() {
    final _$result = _$v ??
        _$Kiosk._(
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'Kiosk', 'kioskId'),
          bus: BuiltValueNullFieldError.checkNotNull(bus, r'Kiosk', 'bus'),
          busLicensePlate: BuiltValueNullFieldError.checkNotNull(
              busLicensePlate, r'Kiosk', 'busLicensePlate'),
          firmwareVersion: firmwareVersion,
          lastHeartbeat: lastHeartbeat,
          isActive: isActive,
          batteryLevel: batteryLevel,
          storageUsedMb: storageUsedMb,
          statusDisplay: BuiltValueNullFieldError.checkNotNull(
              statusDisplay, r'Kiosk', 'statusDisplay'),
          isOnline: BuiltValueNullFieldError.checkNotNull(
              isOnline, r'Kiosk', 'isOnline'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Kiosk', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'Kiosk', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
