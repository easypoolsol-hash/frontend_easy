// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCreate extends UserCreate {
  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordConfirm;
  @override
  final String role;

  factory _$UserCreate([void Function(UserCreateBuilder)? updates]) =>
      (UserCreateBuilder()..update(updates))._build();

  _$UserCreate._(
      {required this.username,
      required this.email,
      required this.password,
      required this.passwordConfirm,
      required this.role})
      : super._();
  @override
  UserCreate rebuild(void Function(UserCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCreateBuilder toBuilder() => UserCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCreate &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        passwordConfirm == other.passwordConfirm &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, passwordConfirm.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCreate')
          ..add('username', username)
          ..add('email', email)
          ..add('password', password)
          ..add('passwordConfirm', passwordConfirm)
          ..add('role', role))
        .toString();
  }
}

class UserCreateBuilder implements Builder<UserCreate, UserCreateBuilder> {
  _$UserCreate? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _passwordConfirm;
  String? get passwordConfirm => _$this._passwordConfirm;
  set passwordConfirm(String? passwordConfirm) =>
      _$this._passwordConfirm = passwordConfirm;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  UserCreateBuilder() {
    UserCreate._defaults(this);
  }

  UserCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _passwordConfirm = $v.passwordConfirm;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCreate other) {
    _$v = other as _$UserCreate;
  }

  @override
  void update(void Function(UserCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCreate build() => _build();

  _$UserCreate _build() {
    final _$result = _$v ??
        _$UserCreate._(
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'UserCreate', 'username'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UserCreate', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UserCreate', 'password'),
          passwordConfirm: BuiltValueNullFieldError.checkNotNull(
              passwordConfirm, r'UserCreate', 'passwordConfirm'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'UserCreate', 'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
