// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_parents_me_buses_location_retrieve200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1ParentsMeBusesLocationRetrieve200Response
    extends ApiV1ParentsMeBusesLocationRetrieve200Response {
  @override
  final String? busId;
  @override
  final String? licensePlate;
  @override
  final ApiV1ParentsMeBusesLocationRetrieve200ResponseLocation? location;

  factory _$ApiV1ParentsMeBusesLocationRetrieve200Response(
          [void Function(ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder)?
              updates]) =>
      (ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder()..update(updates))
          ._build();

  _$ApiV1ParentsMeBusesLocationRetrieve200Response._(
      {this.busId, this.licensePlate, this.location})
      : super._();
  @override
  ApiV1ParentsMeBusesLocationRetrieve200Response rebuild(
          void Function(ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder toBuilder() =>
      ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1ParentsMeBusesLocationRetrieve200Response &&
        busId == other.busId &&
        licensePlate == other.licensePlate &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, busId.hashCode);
    _$hash = $jc(_$hash, licensePlate.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1ParentsMeBusesLocationRetrieve200Response')
          ..add('busId', busId)
          ..add('licensePlate', licensePlate)
          ..add('location', location))
        .toString();
  }
}

class ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder
    implements
        Builder<ApiV1ParentsMeBusesLocationRetrieve200Response,
            ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder> {
  _$ApiV1ParentsMeBusesLocationRetrieve200Response? _$v;

  String? _busId;
  String? get busId => _$this._busId;
  set busId(String? busId) => _$this._busId = busId;

  String? _licensePlate;
  String? get licensePlate => _$this._licensePlate;
  set licensePlate(String? licensePlate) => _$this._licensePlate = licensePlate;

  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder? _location;
  ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder get location =>
      _$this._location ??=
          ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder();
  set location(
          ApiV1ParentsMeBusesLocationRetrieve200ResponseLocationBuilder?
              location) =>
      _$this._location = location;

  ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder() {
    ApiV1ParentsMeBusesLocationRetrieve200Response._defaults(this);
  }

  ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _busId = $v.busId;
      _licensePlate = $v.licensePlate;
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1ParentsMeBusesLocationRetrieve200Response other) {
    _$v = other as _$ApiV1ParentsMeBusesLocationRetrieve200Response;
  }

  @override
  void update(
      void Function(ApiV1ParentsMeBusesLocationRetrieve200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1ParentsMeBusesLocationRetrieve200Response build() => _build();

  _$ApiV1ParentsMeBusesLocationRetrieve200Response _build() {
    _$ApiV1ParentsMeBusesLocationRetrieve200Response _$result;
    try {
      _$result = _$v ??
          _$ApiV1ParentsMeBusesLocationRetrieve200Response._(
            busId: busId,
            licensePlate: licensePlate,
            location: _location?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1ParentsMeBusesLocationRetrieve200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
