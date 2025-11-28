// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParentRequest extends ParentRequest {
  @override
  final String name;
  @override
  final String? phone;
  @override
  final String? email;

  factory _$ParentRequest([void Function(ParentRequestBuilder)? updates]) =>
      (ParentRequestBuilder()..update(updates))._build();

  _$ParentRequest._({required this.name, this.phone, this.email}) : super._();
  @override
  ParentRequest rebuild(void Function(ParentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParentRequestBuilder toBuilder() => ParentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParentRequest &&
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
    return (newBuiltValueToStringHelper(r'ParentRequest')
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email))
        .toString();
  }
}

class ParentRequestBuilder
    implements Builder<ParentRequest, ParentRequestBuilder> {
  _$ParentRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ParentRequestBuilder() {
    ParentRequest._defaults(this);
  }

  ParentRequestBuilder get _$this {
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
  void replace(ParentRequest other) {
    _$v = other as _$ParentRequest;
  }

  @override
  void update(void Function(ParentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParentRequest build() => _build();

  _$ParentRequest _build() {
    final _$result = _$v ??
        _$ParentRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ParentRequest', 'name'),
          phone: phone,
          email: email,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
