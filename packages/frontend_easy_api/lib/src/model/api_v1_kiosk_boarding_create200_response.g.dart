// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_kiosk_boarding_create200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1KioskBoardingCreate200Response
    extends ApiV1KioskBoardingCreate200Response {
  @override
  final String? status;
  @override
  final String? message;

  factory _$ApiV1KioskBoardingCreate200Response(
          [void Function(ApiV1KioskBoardingCreate200ResponseBuilder)?
              updates]) =>
      (ApiV1KioskBoardingCreate200ResponseBuilder()..update(updates))._build();

  _$ApiV1KioskBoardingCreate200Response._({this.status, this.message})
      : super._();
  @override
  ApiV1KioskBoardingCreate200Response rebuild(
          void Function(ApiV1KioskBoardingCreate200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1KioskBoardingCreate200ResponseBuilder toBuilder() =>
      ApiV1KioskBoardingCreate200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1KioskBoardingCreate200Response &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1KioskBoardingCreate200Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class ApiV1KioskBoardingCreate200ResponseBuilder
    implements
        Builder<ApiV1KioskBoardingCreate200Response,
            ApiV1KioskBoardingCreate200ResponseBuilder> {
  _$ApiV1KioskBoardingCreate200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ApiV1KioskBoardingCreate200ResponseBuilder() {
    ApiV1KioskBoardingCreate200Response._defaults(this);
  }

  ApiV1KioskBoardingCreate200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1KioskBoardingCreate200Response other) {
    _$v = other as _$ApiV1KioskBoardingCreate200Response;
  }

  @override
  void update(
      void Function(ApiV1KioskBoardingCreate200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1KioskBoardingCreate200Response build() => _build();

  _$ApiV1KioskBoardingCreate200Response _build() {
    final _$result = _$v ??
        _$ApiV1KioskBoardingCreate200Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
