// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_parents_me_buses_retrieve200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1ParentsMeBusesRetrieve200Response
    extends ApiV1ParentsMeBusesRetrieve200Response {
  @override
  final BuiltList<JsonObject>? buses;

  factory _$ApiV1ParentsMeBusesRetrieve200Response(
          [void Function(ApiV1ParentsMeBusesRetrieve200ResponseBuilder)?
              updates]) =>
      (ApiV1ParentsMeBusesRetrieve200ResponseBuilder()..update(updates))
          ._build();

  _$ApiV1ParentsMeBusesRetrieve200Response._({this.buses}) : super._();
  @override
  ApiV1ParentsMeBusesRetrieve200Response rebuild(
          void Function(ApiV1ParentsMeBusesRetrieve200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1ParentsMeBusesRetrieve200ResponseBuilder toBuilder() =>
      ApiV1ParentsMeBusesRetrieve200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1ParentsMeBusesRetrieve200Response &&
        buses == other.buses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1ParentsMeBusesRetrieve200Response')
          ..add('buses', buses))
        .toString();
  }
}

class ApiV1ParentsMeBusesRetrieve200ResponseBuilder
    implements
        Builder<ApiV1ParentsMeBusesRetrieve200Response,
            ApiV1ParentsMeBusesRetrieve200ResponseBuilder> {
  _$ApiV1ParentsMeBusesRetrieve200Response? _$v;

  ListBuilder<JsonObject>? _buses;
  ListBuilder<JsonObject> get buses =>
      _$this._buses ??= ListBuilder<JsonObject>();
  set buses(ListBuilder<JsonObject>? buses) => _$this._buses = buses;

  ApiV1ParentsMeBusesRetrieve200ResponseBuilder() {
    ApiV1ParentsMeBusesRetrieve200Response._defaults(this);
  }

  ApiV1ParentsMeBusesRetrieve200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buses = $v.buses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1ParentsMeBusesRetrieve200Response other) {
    _$v = other as _$ApiV1ParentsMeBusesRetrieve200Response;
  }

  @override
  void update(
      void Function(ApiV1ParentsMeBusesRetrieve200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1ParentsMeBusesRetrieve200Response build() => _build();

  _$ApiV1ParentsMeBusesRetrieve200Response _build() {
    _$ApiV1ParentsMeBusesRetrieve200Response _$result;
    try {
      _$result = _$v ??
          _$ApiV1ParentsMeBusesRetrieve200Response._(
            buses: _buses?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'buses';
        _buses?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1ParentsMeBusesRetrieve200Response',
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
