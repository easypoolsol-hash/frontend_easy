// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk_activation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KioskActivationResponse extends KioskActivationResponse {
  @override
  final String message;
  @override
  final String access;
  @override
  final String refresh;
  @override
  final String kioskId;
  @override
  final String? busId;
  @override
  final bool activationTokenDestroyed;

  factory _$KioskActivationResponse(
          [void Function(KioskActivationResponseBuilder)? updates]) =>
      (KioskActivationResponseBuilder()..update(updates))._build();

  _$KioskActivationResponse._(
      {required this.message,
      required this.access,
      required this.refresh,
      required this.kioskId,
      this.busId,
      required this.activationTokenDestroyed})
      : super._();
  @override
  KioskActivationResponse rebuild(
          void Function(KioskActivationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KioskActivationResponseBuilder toBuilder() =>
      KioskActivationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KioskActivationResponse &&
        message == other.message &&
        access == other.access &&
        refresh == other.refresh &&
        kioskId == other.kioskId &&
        busId == other.busId &&
        activationTokenDestroyed == other.activationTokenDestroyed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, busId.hashCode);
    _$hash = $jc(_$hash, activationTokenDestroyed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KioskActivationResponse')
          ..add('message', message)
          ..add('access', access)
          ..add('refresh', refresh)
          ..add('kioskId', kioskId)
          ..add('busId', busId)
          ..add('activationTokenDestroyed', activationTokenDestroyed))
        .toString();
  }
}

class KioskActivationResponseBuilder
    implements
        Builder<KioskActivationResponse, KioskActivationResponseBuilder> {
  _$KioskActivationResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  String? _busId;
  String? get busId => _$this._busId;
  set busId(String? busId) => _$this._busId = busId;

  bool? _activationTokenDestroyed;
  bool? get activationTokenDestroyed => _$this._activationTokenDestroyed;
  set activationTokenDestroyed(bool? activationTokenDestroyed) =>
      _$this._activationTokenDestroyed = activationTokenDestroyed;

  KioskActivationResponseBuilder() {
    KioskActivationResponse._defaults(this);
  }

  KioskActivationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _access = $v.access;
      _refresh = $v.refresh;
      _kioskId = $v.kioskId;
      _busId = $v.busId;
      _activationTokenDestroyed = $v.activationTokenDestroyed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KioskActivationResponse other) {
    _$v = other as _$KioskActivationResponse;
  }

  @override
  void update(void Function(KioskActivationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KioskActivationResponse build() => _build();

  _$KioskActivationResponse _build() {
    final _$result = _$v ??
        _$KioskActivationResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'KioskActivationResponse', 'message'),
          access: BuiltValueNullFieldError.checkNotNull(
              access, r'KioskActivationResponse', 'access'),
          refresh: BuiltValueNullFieldError.checkNotNull(
              refresh, r'KioskActivationResponse', 'refresh'),
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'KioskActivationResponse', 'kioskId'),
          busId: busId,
          activationTokenDestroyed: BuiltValueNullFieldError.checkNotNull(
              activationTokenDestroyed,
              r'KioskActivationResponse',
              'activationTokenDestroyed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
