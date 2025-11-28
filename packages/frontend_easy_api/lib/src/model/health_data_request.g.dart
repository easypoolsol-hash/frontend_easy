// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_data_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthDataRequest extends HealthDataRequest {
  @override
  final int? batteryLevel;
  @override
  final int? deviceTemperature;
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

  factory _$HealthDataRequest(
          [void Function(HealthDataRequestBuilder)? updates]) =>
      (HealthDataRequestBuilder()..update(updates))._build();

  _$HealthDataRequest._(
      {this.batteryLevel,
      this.deviceTemperature,
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
  HealthDataRequest rebuild(void Function(HealthDataRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthDataRequestBuilder toBuilder() =>
      HealthDataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthDataRequest &&
        batteryLevel == other.batteryLevel &&
        deviceTemperature == other.deviceTemperature &&
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
    _$hash = $jc(_$hash, deviceTemperature.hashCode);
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
    return (newBuiltValueToStringHelper(r'HealthDataRequest')
          ..add('batteryLevel', batteryLevel)
          ..add('deviceTemperature', deviceTemperature)
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

class HealthDataRequestBuilder
    implements Builder<HealthDataRequest, HealthDataRequestBuilder> {
  _$HealthDataRequest? _$v;

  int? _batteryLevel;
  int? get batteryLevel => _$this._batteryLevel;
  set batteryLevel(int? batteryLevel) => _$this._batteryLevel = batteryLevel;

  int? _deviceTemperature;
  int? get deviceTemperature => _$this._deviceTemperature;
  set deviceTemperature(int? deviceTemperature) =>
      _$this._deviceTemperature = deviceTemperature;

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

  HealthDataRequestBuilder() {
    HealthDataRequest._defaults(this);
  }

  HealthDataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _batteryLevel = $v.batteryLevel;
      _deviceTemperature = $v.deviceTemperature;
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
  void replace(HealthDataRequest other) {
    _$v = other as _$HealthDataRequest;
  }

  @override
  void update(void Function(HealthDataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthDataRequest build() => _build();

  _$HealthDataRequest _build() {
    final _$result = _$v ??
        _$HealthDataRequest._(
          batteryLevel: batteryLevel,
          deviceTemperature: deviceTemperature,
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
