// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIKeyCreate extends APIKeyCreate {
  @override
  final String kioskId;
  @override
  final String? name;
  @override
  final JsonObject? permissions;
  @override
  final DateTime? expiresAt;
  @override
  final String rawKey;

  factory _$APIKeyCreate([void Function(APIKeyCreateBuilder)? updates]) =>
      (APIKeyCreateBuilder()..update(updates))._build();

  _$APIKeyCreate._(
      {required this.kioskId,
      this.name,
      this.permissions,
      this.expiresAt,
      required this.rawKey})
      : super._();
  @override
  APIKeyCreate rebuild(void Function(APIKeyCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIKeyCreateBuilder toBuilder() => APIKeyCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIKeyCreate &&
        kioskId == other.kioskId &&
        name == other.name &&
        permissions == other.permissions &&
        expiresAt == other.expiresAt &&
        rawKey == other.rawKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, rawKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIKeyCreate')
          ..add('kioskId', kioskId)
          ..add('name', name)
          ..add('permissions', permissions)
          ..add('expiresAt', expiresAt)
          ..add('rawKey', rawKey))
        .toString();
  }
}

class APIKeyCreateBuilder
    implements Builder<APIKeyCreate, APIKeyCreateBuilder> {
  _$APIKeyCreate? _$v;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonObject? _permissions;
  JsonObject? get permissions => _$this._permissions;
  set permissions(JsonObject? permissions) => _$this._permissions = permissions;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  String? _rawKey;
  String? get rawKey => _$this._rawKey;
  set rawKey(String? rawKey) => _$this._rawKey = rawKey;

  APIKeyCreateBuilder() {
    APIKeyCreate._defaults(this);
  }

  APIKeyCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kioskId = $v.kioskId;
      _name = $v.name;
      _permissions = $v.permissions;
      _expiresAt = $v.expiresAt;
      _rawKey = $v.rawKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIKeyCreate other) {
    _$v = other as _$APIKeyCreate;
  }

  @override
  void update(void Function(APIKeyCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIKeyCreate build() => _build();

  _$APIKeyCreate _build() {
    final _$result = _$v ??
        _$APIKeyCreate._(
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'APIKeyCreate', 'kioskId'),
          name: name,
          permissions: permissions,
          expiresAt: expiresAt,
          rawKey: BuiltValueNullFieldError.checkNotNull(
              rawKey, r'APIKeyCreate', 'rawKey'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
