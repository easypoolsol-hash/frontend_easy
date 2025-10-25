// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String userId;
  @override
  final String username;
  @override
  final String email;
  @override
  final String role;
  @override
  final String roleName;
  @override
  final bool? isActive;
  @override
  final DateTime? lastLogin;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (UserBuilder()..update(updates))._build();

  _$User._(
      {required this.userId,
      required this.username,
      required this.email,
      required this.role,
      required this.roleName,
      this.isActive,
      this.lastLogin,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        userId == other.userId &&
        username == other.username &&
        email == other.email &&
        role == other.role &&
        roleName == other.roleName &&
        isActive == other.isActive &&
        lastLogin == other.lastLogin &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, lastLogin.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('userId', userId)
          ..add('username', username)
          ..add('email', email)
          ..add('role', role)
          ..add('roleName', roleName)
          ..add('isActive', isActive)
          ..add('lastLogin', lastLogin)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _lastLogin;
  DateTime? get lastLogin => _$this._lastLogin;
  set lastLogin(DateTime? lastLogin) => _$this._lastLogin = lastLogin;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _username = $v.username;
      _email = $v.email;
      _role = $v.role;
      _roleName = $v.roleName;
      _isActive = $v.isActive;
      _lastLogin = $v.lastLogin;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    final _$result = _$v ??
        _$User._(
          userId:
              BuiltValueNullFieldError.checkNotNull(userId, r'User', 'userId'),
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'User', 'username'),
          email: BuiltValueNullFieldError.checkNotNull(email, r'User', 'email'),
          role: BuiltValueNullFieldError.checkNotNull(role, r'User', 'role'),
          roleName: BuiltValueNullFieldError.checkNotNull(
              roleName, r'User', 'roleName'),
          isActive: isActive,
          lastLogin: lastLogin,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'User', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'User', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
