// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Parent extends Parent {
  @override
  final String parentId;
  @override
  final String decryptedName;
  @override
  final String decryptedPhone;
  @override
  final String decryptedEmail;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String email;
  @override
  final DateTime createdAt;

  factory _$Parent([void Function(ParentBuilder)? updates]) =>
      (ParentBuilder()..update(updates))._build();

  _$Parent._(
      {required this.parentId,
      required this.decryptedName,
      required this.decryptedPhone,
      required this.decryptedEmail,
      required this.name,
      required this.phone,
      required this.email,
      required this.createdAt})
      : super._();
  @override
  Parent rebuild(void Function(ParentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParentBuilder toBuilder() => ParentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Parent &&
        parentId == other.parentId &&
        decryptedName == other.decryptedName &&
        decryptedPhone == other.decryptedPhone &&
        decryptedEmail == other.decryptedEmail &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, decryptedName.hashCode);
    _$hash = $jc(_$hash, decryptedPhone.hashCode);
    _$hash = $jc(_$hash, decryptedEmail.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Parent')
          ..add('parentId', parentId)
          ..add('decryptedName', decryptedName)
          ..add('decryptedPhone', decryptedPhone)
          ..add('decryptedEmail', decryptedEmail)
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ParentBuilder implements Builder<Parent, ParentBuilder> {
  _$Parent? _$v;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  String? _decryptedName;
  String? get decryptedName => _$this._decryptedName;
  set decryptedName(String? decryptedName) =>
      _$this._decryptedName = decryptedName;

  String? _decryptedPhone;
  String? get decryptedPhone => _$this._decryptedPhone;
  set decryptedPhone(String? decryptedPhone) =>
      _$this._decryptedPhone = decryptedPhone;

  String? _decryptedEmail;
  String? get decryptedEmail => _$this._decryptedEmail;
  set decryptedEmail(String? decryptedEmail) =>
      _$this._decryptedEmail = decryptedEmail;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ParentBuilder() {
    Parent._defaults(this);
  }

  ParentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parentId = $v.parentId;
      _decryptedName = $v.decryptedName;
      _decryptedPhone = $v.decryptedPhone;
      _decryptedEmail = $v.decryptedEmail;
      _name = $v.name;
      _phone = $v.phone;
      _email = $v.email;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Parent other) {
    _$v = other as _$Parent;
  }

  @override
  void update(void Function(ParentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Parent build() => _build();

  _$Parent _build() {
    final _$result = _$v ??
        _$Parent._(
          parentId: BuiltValueNullFieldError.checkNotNull(
              parentId, r'Parent', 'parentId'),
          decryptedName: BuiltValueNullFieldError.checkNotNull(
              decryptedName, r'Parent', 'decryptedName'),
          decryptedPhone: BuiltValueNullFieldError.checkNotNull(
              decryptedPhone, r'Parent', 'decryptedPhone'),
          decryptedEmail: BuiltValueNullFieldError.checkNotNull(
              decryptedEmail, r'Parent', 'decryptedEmail'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'Parent', 'name'),
          phone:
              BuiltValueNullFieldError.checkNotNull(phone, r'Parent', 'phone'),
          email:
              BuiltValueNullFieldError.checkNotNull(email, r'Parent', 'email'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Parent', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
