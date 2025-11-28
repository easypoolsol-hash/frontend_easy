// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_stop_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RouteStopRequest extends RouteStopRequest {
  @override
  final String busStop;
  @override
  final int sequence;
  @override
  final JsonObject? waypoints;

  factory _$RouteStopRequest(
          [void Function(RouteStopRequestBuilder)? updates]) =>
      (RouteStopRequestBuilder()..update(updates))._build();

  _$RouteStopRequest._(
      {required this.busStop, required this.sequence, this.waypoints})
      : super._();
  @override
  RouteStopRequest rebuild(void Function(RouteStopRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteStopRequestBuilder toBuilder() =>
      RouteStopRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RouteStopRequest &&
        busStop == other.busStop &&
        sequence == other.sequence &&
        waypoints == other.waypoints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, busStop.hashCode);
    _$hash = $jc(_$hash, sequence.hashCode);
    _$hash = $jc(_$hash, waypoints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RouteStopRequest')
          ..add('busStop', busStop)
          ..add('sequence', sequence)
          ..add('waypoints', waypoints))
        .toString();
  }
}

class RouteStopRequestBuilder
    implements Builder<RouteStopRequest, RouteStopRequestBuilder> {
  _$RouteStopRequest? _$v;

  String? _busStop;
  String? get busStop => _$this._busStop;
  set busStop(String? busStop) => _$this._busStop = busStop;

  int? _sequence;
  int? get sequence => _$this._sequence;
  set sequence(int? sequence) => _$this._sequence = sequence;

  JsonObject? _waypoints;
  JsonObject? get waypoints => _$this._waypoints;
  set waypoints(JsonObject? waypoints) => _$this._waypoints = waypoints;

  RouteStopRequestBuilder() {
    RouteStopRequest._defaults(this);
  }

  RouteStopRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _busStop = $v.busStop;
      _sequence = $v.sequence;
      _waypoints = $v.waypoints;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RouteStopRequest other) {
    _$v = other as _$RouteStopRequest;
  }

  @override
  void update(void Function(RouteStopRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RouteStopRequest build() => _build();

  _$RouteStopRequest _build() {
    final _$result = _$v ??
        _$RouteStopRequest._(
          busStop: BuiltValueNullFieldError.checkNotNull(
              busStop, r'RouteStopRequest', 'busStop'),
          sequence: BuiltValueNullFieldError.checkNotNull(
              sequence, r'RouteStopRequest', 'sequence'),
          waypoints: waypoints,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
