// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_parent_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedParentRequest extends PatchedParentRequest {
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;

  factory _$PatchedParentRequest(
          [void Function(PatchedParentRequestBuilder)? updates]) =>
      (PatchedParentRequestBuilder()..update(updates))._build();

  _$PatchedParentRequest._({this.name, this.phone, this.email}) : super._();
  @override
  PatchedParentRequest rebuild(
          void Function(PatchedParentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedParentRequestBuilder toBuilder() =>
      PatchedParentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedParentRequest &&
        name == other.name &&
        phone == other.phone &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedParentRequest')
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email))
        .toString();
  }
}

class PatchedParentRequestBuilder
    implements Builder<PatchedParentRequest, PatchedParentRequestBuilder> {
  _$PatchedParentRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  PatchedParentRequestBuilder() {
    PatchedParentRequest._defaults(this);
  }

  PatchedParentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phone = $v.phone;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedParentRequest other) {
    _$v = other as _$PatchedParentRequest;
  }

  @override
  void update(void Function(PatchedParentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedParentRequest build() => _build();

  _$PatchedParentRequest _build() {
    final _$result = _$v ??
        _$PatchedParentRequest._(
          name: name,
          phone: phone,
          email: email,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
