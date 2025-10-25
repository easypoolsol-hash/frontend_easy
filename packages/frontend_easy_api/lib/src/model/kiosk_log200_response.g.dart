// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk_log200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KioskLog200Response extends KioskLog200Response {
  @override
  final String? status;

  factory _$KioskLog200Response(
          [void Function(KioskLog200ResponseBuilder)? updates]) =>
      (KioskLog200ResponseBuilder()..update(updates))._build();

  _$KioskLog200Response._({this.status}) : super._();
  @override
  KioskLog200Response rebuild(
          void Function(KioskLog200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KioskLog200ResponseBuilder toBuilder() =>
      KioskLog200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KioskLog200Response && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KioskLog200Response')
          ..add('status', status))
        .toString();
  }
}

class KioskLog200ResponseBuilder
    implements Builder<KioskLog200Response, KioskLog200ResponseBuilder> {
  _$KioskLog200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  KioskLog200ResponseBuilder() {
    KioskLog200Response._defaults(this);
  }

  KioskLog200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KioskLog200Response other) {
    _$v = other as _$KioskLog200Response;
  }

  @override
  void update(void Function(KioskLog200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KioskLog200Response build() => _build();

  _$KioskLog200Response _build() {
    final _$result = _$v ??
        _$KioskLog200Response._(
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
