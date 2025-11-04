// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthData extends HealthData {
  @override
  final int? batteryLevel;
  @override
  final bool? isCharging;
  @override
  final int? storageAvailableMb;
  @override
  final bool? cameraActive;
  @override
  final String? networkType;
  @override
  final String? appVersion;
  @override
  final int? lastFaceDetectedAgoMin;
  @override
  final int? facesDetectedToday;
  @override
  final int? studentsIdentifiedToday;

  factory _$HealthData([void Function(HealthDataBuilder)? updates]) =>
      (HealthDataBuilder()..update(updates))._build();

  _$HealthData._(
      {this.batteryLevel,
      this.isCharging,
      this.storageAvailableMb,
      this.cameraActive,
      this.networkType,
      this.appVersion,
      this.lastFaceDetectedAgoMin,
      this.facesDetectedToday,
      this.studentsIdentifiedToday})
      : super._();
  @override
  HealthData rebuild(void Function(HealthDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthDataBuilder toBuilder() => HealthDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthData &&
        batteryLevel == other.batteryLevel &&
        isCharging == other.isCharging &&
        storageAvailableMb == other.storageAvailableMb &&
        cameraActive == other.cameraActive &&
        networkType == other.networkType &&
        appVersion == other.appVersion &&
        lastFaceDetectedAgoMin == other.lastFaceDetectedAgoMin &&
        facesDetectedToday == other.facesDetectedToday &&
        studentsIdentifiedToday == other.studentsIdentifiedToday;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, batteryLevel.hashCode);
    _$hash = $jc(_$hash, isCharging.hashCode);
    _$hash = $jc(_$hash, storageAvailableMb.hashCode);
    _$hash = $jc(_$hash, cameraActive.hashCode);
    _$hash = $jc(_$hash, networkType.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, lastFaceDetectedAgoMin.hashCode);
    _$hash = $jc(_$hash, facesDetectedToday.hashCode);
    _$hash = $jc(_$hash, studentsIdentifiedToday.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthData')
          ..add('batteryLevel', batteryLevel)
          ..add('isCharging', isCharging)
          ..add('storageAvailableMb', storageAvailableMb)
          ..add('cameraActive', cameraActive)
          ..add('networkType', networkType)
          ..add('appVersion', appVersion)
          ..add('lastFaceDetectedAgoMin', lastFaceDetectedAgoMin)
          ..add('facesDetectedToday', facesDetectedToday)
          ..add('studentsIdentifiedToday', studentsIdentifiedToday))
        .toString();
  }
}

class HealthDataBuilder implements Builder<HealthData, HealthDataBuilder> {
  _$HealthData? _$v;

  int? _batteryLevel;
  int? get batteryLevel => _$this._batteryLevel;
  set batteryLevel(int? batteryLevel) => _$this._batteryLevel = batteryLevel;

  bool? _isCharging;
  bool? get isCharging => _$this._isCharging;
  set isCharging(bool? isCharging) => _$this._isCharging = isCharging;

  int? _storageAvailableMb;
  int? get storageAvailableMb => _$this._storageAvailableMb;
  set storageAvailableMb(int? storageAvailableMb) =>
      _$this._storageAvailableMb = storageAvailableMb;

  bool? _cameraActive;
  bool? get cameraActive => _$this._cameraActive;
  set cameraActive(bool? cameraActive) => _$this._cameraActive = cameraActive;

  String? _networkType;
  String? get networkType => _$this._networkType;
  set networkType(String? networkType) => _$this._networkType = networkType;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  int? _lastFaceDetectedAgoMin;
  int? get lastFaceDetectedAgoMin => _$this._lastFaceDetectedAgoMin;
  set lastFaceDetectedAgoMin(int? lastFaceDetectedAgoMin) =>
      _$this._lastFaceDetectedAgoMin = lastFaceDetectedAgoMin;

  int? _facesDetectedToday;
  int? get facesDetectedToday => _$this._facesDetectedToday;
  set facesDetectedToday(int? facesDetectedToday) =>
      _$this._facesDetectedToday = facesDetectedToday;

  int? _studentsIdentifiedToday;
  int? get studentsIdentifiedToday => _$this._studentsIdentifiedToday;
  set studentsIdentifiedToday(int? studentsIdentifiedToday) =>
      _$this._studentsIdentifiedToday = studentsIdentifiedToday;

  HealthDataBuilder() {
    HealthData._defaults(this);
  }

  HealthDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _batteryLevel = $v.batteryLevel;
      _isCharging = $v.isCharging;
      _storageAvailableMb = $v.storageAvailableMb;
      _cameraActive = $v.cameraActive;
      _networkType = $v.networkType;
      _appVersion = $v.appVersion;
      _lastFaceDetectedAgoMin = $v.lastFaceDetectedAgoMin;
      _facesDetectedToday = $v.facesDetectedToday;
      _studentsIdentifiedToday = $v.studentsIdentifiedToday;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthData other) {
    _$v = other as _$HealthData;
  }

  @override
  void update(void Function(HealthDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthData build() => _build();

  _$HealthData _build() {
    final _$result = _$v ??
        _$HealthData._(
          batteryLevel: batteryLevel,
          isCharging: isCharging,
          storageAvailableMb: storageAvailableMb,
          cameraActive: cameraActive,
          networkType: networkType,
          appVersion: appVersion,
          lastFaceDetectedAgoMin: lastFaceDetectedAgoMin,
          facesDetectedToday: facesDetectedToday,
          studentsIdentifiedToday: studentsIdentifiedToday,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
