// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenRefreshResponse extends TokenRefreshResponse {
  @override
  final String access;
  @override
  final String refresh;

  factory _$TokenRefreshResponse(
          [void Function(TokenRefreshResponseBuilder)? updates]) =>
      (TokenRefreshResponseBuilder()..update(updates))._build();

  _$TokenRefreshResponse._({required this.access, required this.refresh})
      : super._();
  @override
  TokenRefreshResponse rebuild(
          void Function(TokenRefreshResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenRefreshResponseBuilder toBuilder() =>
      TokenRefreshResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenRefreshResponse &&
        access == other.access &&
        refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenRefreshResponse')
          ..add('access', access)
          ..add('refresh', refresh))
        .toString();
  }
}

class TokenRefreshResponseBuilder
    implements Builder<TokenRefreshResponse, TokenRefreshResponseBuilder> {
  _$TokenRefreshResponse? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  TokenRefreshResponseBuilder() {
    TokenRefreshResponse._defaults(this);
  }

  TokenRefreshResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenRefreshResponse other) {
    _$v = other as _$TokenRefreshResponse;
  }

  @override
  void update(void Function(TokenRefreshResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenRefreshResponse build() => _build();

  _$TokenRefreshResponse _build() {
    final _$result = _$v ??
        _$TokenRefreshResponse._(
          access: BuiltValueNullFieldError.checkNotNull(
              access, r'TokenRefreshResponse', 'access'),
          refresh: BuiltValueNullFieldError.checkNotNull(
              refresh, r'TokenRefreshResponse', 'refresh'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
