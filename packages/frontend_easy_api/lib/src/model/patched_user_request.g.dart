// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedUserRequest extends PatchedUserRequest {
  @override
  final String? username;
  @override
  final String? email;
  @override
  final bool? isActive;

  factory _$PatchedUserRequest(
          [void Function(PatchedUserRequestBuilder)? updates]) =>
      (PatchedUserRequestBuilder()..update(updates))._build();

  _$PatchedUserRequest._({this.username, this.email, this.isActive})
      : super._();
  @override
  PatchedUserRequest rebuild(
          void Function(PatchedUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedUserRequestBuilder toBuilder() =>
      PatchedUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedUserRequest &&
        username == other.username &&
        email == other.email &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedUserRequest')
          ..add('username', username)
          ..add('email', email)
          ..add('isActive', isActive))
        .toString();
  }
}

class PatchedUserRequestBuilder
    implements Builder<PatchedUserRequest, PatchedUserRequestBuilder> {
  _$PatchedUserRequest? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  PatchedUserRequestBuilder() {
    PatchedUserRequest._defaults(this);
  }

  PatchedUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedUserRequest other) {
    _$v = other as _$PatchedUserRequest;
  }

  @override
  void update(void Function(PatchedUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedUserRequest build() => _build();

  _$PatchedUserRequest _build() {
    final _$result = _$v ??
        _$PatchedUserRequest._(
          username: username,
          email: email,
          isActive: isActive,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
