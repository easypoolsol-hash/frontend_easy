// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KioskRequest extends KioskRequest {
  @override
  final String? firmwareVersion;
  @override
  final String? gitCommitSha;
  @override
  final DateTime? lastHeartbeat;
  @override
  final bool? isActive;
  @override
  final double? batteryLevel;
  @override
  final int? storageUsedMb;

  factory _$KioskRequest([void Function(KioskRequestBuilder)? updates]) =>
      (KioskRequestBuilder()..update(updates))._build();

  _$KioskRequest._(
      {this.firmwareVersion,
      this.gitCommitSha,
      this.lastHeartbeat,
      this.isActive,
      this.batteryLevel,
      this.storageUsedMb})
      : super._();
  @override
  KioskRequest rebuild(void Function(KioskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KioskRequestBuilder toBuilder() => KioskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KioskRequest &&
        firmwareVersion == other.firmwareVersion &&
        gitCommitSha == other.gitCommitSha &&
        lastHeartbeat == other.lastHeartbeat &&
        isActive == other.isActive &&
        batteryLevel == other.batteryLevel &&
        storageUsedMb == other.storageUsedMb;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firmwareVersion.hashCode);
    _$hash = $jc(_$hash, gitCommitSha.hashCode);
    _$hash = $jc(_$hash, lastHeartbeat.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, batteryLevel.hashCode);
    _$hash = $jc(_$hash, storageUsedMb.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KioskRequest')
          ..add('firmwareVersion', firmwareVersion)
          ..add('gitCommitSha', gitCommitSha)
          ..add('lastHeartbeat', lastHeartbeat)
          ..add('isActive', isActive)
          ..add('batteryLevel', batteryLevel)
          ..add('storageUsedMb', storageUsedMb))
        .toString();
  }
}

class KioskRequestBuilder
    implements Builder<KioskRequest, KioskRequestBuilder> {
  _$KioskRequest? _$v;

  String? _firmwareVersion;
  String? get firmwareVersion => _$this._firmwareVersion;
  set firmwareVersion(String? firmwareVersion) =>
      _$this._firmwareVersion = firmwareVersion;

  String? _gitCommitSha;
  String? get gitCommitSha => _$this._gitCommitSha;
  set gitCommitSha(String? gitCommitSha) => _$this._gitCommitSha = gitCommitSha;

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

  KioskRequestBuilder() {
    KioskRequest._defaults(this);
  }

  KioskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firmwareVersion = $v.firmwareVersion;
      _gitCommitSha = $v.gitCommitSha;
      _lastHeartbeat = $v.lastHeartbeat;
      _isActive = $v.isActive;
      _batteryLevel = $v.batteryLevel;
      _storageUsedMb = $v.storageUsedMb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KioskRequest other) {
    _$v = other as _$KioskRequest;
  }

  @override
  void update(void Function(KioskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KioskRequest build() => _build();

  _$KioskRequest _build() {
    final _$result = _$v ??
        _$KioskRequest._(
          firmwareVersion: firmwareVersion,
          gitCommitSha: gitCommitSha,
          lastHeartbeat: lastHeartbeat,
          isActive: isActive,
          batteryLevel: batteryLevel,
          storageUsedMb: storageUsedMb,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
