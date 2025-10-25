// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiosk_activation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KioskActivation extends KioskActivation {
  @override
  final String kioskId;
  @override
  final String activationToken;

  factory _$KioskActivation([void Function(KioskActivationBuilder)? updates]) =>
      (KioskActivationBuilder()..update(updates))._build();

  _$KioskActivation._({required this.kioskId, required this.activationToken})
      : super._();
  @override
  KioskActivation rebuild(void Function(KioskActivationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KioskActivationBuilder toBuilder() => KioskActivationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KioskActivation &&
        kioskId == other.kioskId &&
        activationToken == other.activationToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, activationToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KioskActivation')
          ..add('kioskId', kioskId)
          ..add('activationToken', activationToken))
        .toString();
  }
}

class KioskActivationBuilder
    implements Builder<KioskActivation, KioskActivationBuilder> {
  _$KioskActivation? _$v;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  String? _activationToken;
  String? get activationToken => _$this._activationToken;
  set activationToken(String? activationToken) =>
      _$this._activationToken = activationToken;

  KioskActivationBuilder() {
    KioskActivation._defaults(this);
  }

  KioskActivationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kioskId = $v.kioskId;
      _activationToken = $v.activationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KioskActivation other) {
    _$v = other as _$KioskActivation;
  }

  @override
  void update(void Function(KioskActivationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KioskActivation build() => _build();

  _$KioskActivation _build() {
    final _$result = _$v ??
        _$KioskActivation._(
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'KioskActivation', 'kioskId'),
          activationToken: BuiltValueNullFieldError.checkNotNull(
              activationToken, r'KioskActivation', 'activationToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
