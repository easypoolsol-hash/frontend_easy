// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_location_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BusLocationRequest extends BusLocationRequest {
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double? accuracy;
  @override
  final double? speed;
  @override
  final double? heading;
  @override
  final DateTime timestamp;

  factory _$BusLocationRequest(
          [void Function(BusLocationRequestBuilder)? updates]) =>
      (BusLocationRequestBuilder()..update(updates))._build();

  _$BusLocationRequest._(
      {required this.latitude,
      required this.longitude,
      this.accuracy,
      this.speed,
      this.heading,
      required this.timestamp})
      : super._();
  @override
  BusLocationRequest rebuild(
          void Function(BusLocationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BusLocationRequestBuilder toBuilder() =>
      BusLocationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BusLocationRequest &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        accuracy == other.accuracy &&
        speed == other.speed &&
        heading == other.heading &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, accuracy.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, heading.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BusLocationRequest')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('accuracy', accuracy)
          ..add('speed', speed)
          ..add('heading', heading)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class BusLocationRequestBuilder
    implements Builder<BusLocationRequest, BusLocationRequestBuilder> {
  _$BusLocationRequest? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _accuracy;
  double? get accuracy => _$this._accuracy;
  set accuracy(double? accuracy) => _$this._accuracy = accuracy;

  double? _speed;
  double? get speed => _$this._speed;
  set speed(double? speed) => _$this._speed = speed;

  double? _heading;
  double? get heading => _$this._heading;
  set heading(double? heading) => _$this._heading = heading;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  BusLocationRequestBuilder() {
    BusLocationRequest._defaults(this);
  }

  BusLocationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _accuracy = $v.accuracy;
      _speed = $v.speed;
      _heading = $v.heading;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BusLocationRequest other) {
    _$v = other as _$BusLocationRequest;
  }

  @override
  void update(void Function(BusLocationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BusLocationRequest build() => _build();

  _$BusLocationRequest _build() {
    final _$result = _$v ??
        _$BusLocationRequest._(
          latitude: BuiltValueNullFieldError.checkNotNull(
              latitude, r'BusLocationRequest', 'latitude'),
          longitude: BuiltValueNullFieldError.checkNotNull(
              longitude, r'BusLocationRequest', 'longitude'),
          accuracy: accuracy,
          speed: speed,
          heading: heading,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'BusLocationRequest', 'timestamp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
