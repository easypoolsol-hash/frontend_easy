// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_parents_me_buses_location_retrieve200_response_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation
    extends ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation {
  @override
  final num? latitude;
  @override
  final num? longitude;
  @override
  final String? lastUpdated;

  factory _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation(
          [void Function(
                  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder)?
              updates]) =>
      (ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder()
            ..update(updates))
          ._build();

  _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation._(
      {this.latitude, this.longitude, this.lastUpdated})
      : super._();
  @override
  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation rebuild(
          void Function(
                  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder toBuilder() =>
      ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        lastUpdated == other.lastUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('lastUpdated', lastUpdated))
        .toString();
  }
}

class ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder
    implements
        Builder<ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation,
            ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder> {
  _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation? _$v;

  num? _latitude;
  num? get latitude => _$this._latitude;
  set latitude(num? latitude) => _$this._latitude = latitude;

  num? _longitude;
  num? get longitude => _$this._longitude;
  set longitude(num? longitude) => _$this._longitude = longitude;

  String? _lastUpdated;
  String? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(String? lastUpdated) => _$this._lastUpdated = lastUpdated;

  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder() {
    ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation._defaults(this);
  }

  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _lastUpdated = $v.lastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation other) {
    _$v = other as _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation;
  }

  @override
  void update(
      void Function(
              ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation build() => _build();

  _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation _build() {
    final _$result = _$v ??
        _$ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation._(
          latitude: latitude,
          longitude: longitude,
          lastUpdated: lastUpdated,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
