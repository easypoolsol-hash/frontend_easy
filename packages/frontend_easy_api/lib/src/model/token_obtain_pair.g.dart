// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_obtain_pair.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenObtainPair extends TokenObtainPair {
  @override
  final String username;
  @override
  final String password;
  @override
  final String access;
  @override
  final String refresh;

  factory _$TokenObtainPair([void Function(TokenObtainPairBuilder)? updates]) =>
      (TokenObtainPairBuilder()..update(updates))._build();

  _$TokenObtainPair._(
      {required this.username,
      required this.password,
      required this.access,
      required this.refresh})
      : super._();
  @override
  TokenObtainPair rebuild(void Function(TokenObtainPairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenObtainPairBuilder toBuilder() => TokenObtainPairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenObtainPair &&
        username == other.username &&
        password == other.password &&
        access == other.access &&
        refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenObtainPair')
          ..add('username', username)
          ..add('password', password)
          ..add('access', access)
          ..add('refresh', refresh))
        .toString();
  }
}

class TokenObtainPairBuilder
    implements Builder<TokenObtainPair, TokenObtainPairBuilder> {
  _$TokenObtainPair? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  TokenObtainPairBuilder() {
    TokenObtainPair._defaults(this);
  }

  TokenObtainPairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _access = $v.access;
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenObtainPair other) {
    _$v = other as _$TokenObtainPair;
  }

  @override
  void update(void Function(TokenObtainPairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenObtainPair build() => _build();

  _$TokenObtainPair _build() {
    final _$result = _$v ??
        _$TokenObtainPair._(
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'TokenObtainPair', 'username'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'TokenObtainPair', 'password'),
          access: BuiltValueNullFieldError.checkNotNull(
              access, r'TokenObtainPair', 'access'),
          refresh: BuiltValueNullFieldError.checkNotNull(
              refresh, r'TokenObtainPair', 'refresh'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
