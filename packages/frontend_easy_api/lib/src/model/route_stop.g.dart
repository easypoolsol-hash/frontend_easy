// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_stop.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RouteStop extends RouteStop {
  @override
  final String busStop;
  @override
  final String busStopName;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int sequence;
  @override
  final JsonObject? waypoints;

  factory _$RouteStop([void Function(RouteStopBuilder)? updates]) =>
      (RouteStopBuilder()..update(updates))._build();

  _$RouteStop._(
      {required this.busStop,
      required this.busStopName,
      required this.latitude,
      required this.longitude,
      required this.sequence,
      this.waypoints})
      : super._();
  @override
  RouteStop rebuild(void Function(RouteStopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteStopBuilder toBuilder() => RouteStopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RouteStop &&
        busStop == other.busStop &&
        busStopName == other.busStopName &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        sequence == other.sequence &&
        waypoints == other.waypoints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, busStop.hashCode);
    _$hash = $jc(_$hash, busStopName.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, sequence.hashCode);
    _$hash = $jc(_$hash, waypoints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RouteStop')
          ..add('busStop', busStop)
          ..add('busStopName', busStopName)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('sequence', sequence)
          ..add('waypoints', waypoints))
        .toString();
  }
}

class RouteStopBuilder implements Builder<RouteStop, RouteStopBuilder> {
  _$RouteStop? _$v;

  String? _busStop;
  String? get busStop => _$this._busStop;
  set busStop(String? busStop) => _$this._busStop = busStop;

  String? _busStopName;
  String? get busStopName => _$this._busStopName;
  set busStopName(String? busStopName) => _$this._busStopName = busStopName;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  int? _sequence;
  int? get sequence => _$this._sequence;
  set sequence(int? sequence) => _$this._sequence = sequence;

  JsonObject? _waypoints;
  JsonObject? get waypoints => _$this._waypoints;
  set waypoints(JsonObject? waypoints) => _$this._waypoints = waypoints;

  RouteStopBuilder() {
    RouteStop._defaults(this);
  }

  RouteStopBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _busStop = $v.busStop;
      _busStopName = $v.busStopName;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _sequence = $v.sequence;
      _waypoints = $v.waypoints;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RouteStop other) {
    _$v = other as _$RouteStop;
  }

  @override
  void update(void Function(RouteStopBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RouteStop build() => _build();

  _$RouteStop _build() {
    final _$result = _$v ??
        _$RouteStop._(
          busStop: BuiltValueNullFieldError.checkNotNull(
              busStop, r'RouteStop', 'busStop'),
          busStopName: BuiltValueNullFieldError.checkNotNull(
              busStopName, r'RouteStop', 'busStopName'),
          latitude: BuiltValueNullFieldError.checkNotNull(
              latitude, r'RouteStop', 'latitude'),
          longitude: BuiltValueNullFieldError.checkNotNull(
              longitude, r'RouteStop', 'longitude'),
          sequence: BuiltValueNullFieldError.checkNotNull(
              sequence, r'RouteStop', 'sequence'),
          waypoints: waypoints,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
