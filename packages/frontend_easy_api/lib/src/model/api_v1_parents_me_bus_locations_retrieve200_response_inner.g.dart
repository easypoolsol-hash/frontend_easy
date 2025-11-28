// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_parents_me_bus_locations_retrieve200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner
    extends ApiV1ParentsMeBusLocationsRetrieve200ResponseInner {
  @override
  final String? busId;
  @override
  final String? busNumber;
  @override
  final num? latitude;
  @override
  final num? longitude;
  @override
  final num? speed;
  @override
  final num? heading;
  @override
  final String? lastUpdated;

  factory _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner(
          [void Function(
                  ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder)?
              updates]) =>
      (ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder()
            ..update(updates))
          ._build();

  _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner._(
      {this.busId,
      this.busNumber,
      this.latitude,
      this.longitude,
      this.speed,
      this.heading,
      this.lastUpdated})
      : super._();
  @override
  ApiV1ParentsMeBusLocationsRetrieve200ResponseInner rebuild(
          void Function(
                  ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder toBuilder() =>
      ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1ParentsMeBusLocationsRetrieve200ResponseInner &&
        busId == other.busId &&
        busNumber == other.busNumber &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        speed == other.speed &&
        heading == other.heading &&
        lastUpdated == other.lastUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, busId.hashCode);
    _$hash = $jc(_$hash, busNumber.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, heading.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1ParentsMeBusLocationsRetrieve200ResponseInner')
          ..add('busId', busId)
          ..add('busNumber', busNumber)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('speed', speed)
          ..add('heading', heading)
          ..add('lastUpdated', lastUpdated))
        .toString();
  }
}

class ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder
    implements
        Builder<ApiV1ParentsMeBusLocationsRetrieve200ResponseInner,
            ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder> {
  _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner? _$v;

  String? _busId;
  String? get busId => _$this._busId;
  set busId(String? busId) => _$this._busId = busId;

  String? _busNumber;
  String? get busNumber => _$this._busNumber;
  set busNumber(String? busNumber) => _$this._busNumber = busNumber;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  num? _speed;
  num? get speed => _$this._speed;
  set speed(num? speed) => _$this._speed = speed;

  num? _heading;
  num? get heading => _$this._heading;
  set heading(num? heading) => _$this._heading = heading;

  String? _lastUpdated;
  String? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(String? lastUpdated) => _$this._lastUpdated = lastUpdated;

  ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder() {
    ApiV1ParentsMeBusLocationsRetrieve200ResponseInner._defaults(this);
  }

  ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _busId = $v.busId;
      _busNumber = $v.busNumber;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _speed = $v.speed;
      _heading = $v.heading;
      _lastUpdated = $v.lastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1ParentsMeBusLocationsRetrieve200ResponseInner other) {
    _$v = other as _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner;
  }

  @override
  void update(
      void Function(ApiV1ParentsMeBusLocationsRetrieve200ResponseInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1ParentsMeBusLocationsRetrieve200ResponseInner build() => _build();

  _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner _build() {
    final _$result = _$v ??
        _$ApiV1ParentsMeBusLocationsRetrieve200ResponseInner._(
          busId: busId,
          busNumber: busNumber,
          latitude: latitude,
          longitude: longitude,
          speed: speed,
          heading: heading,
          lastUpdated: lastUpdated,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
