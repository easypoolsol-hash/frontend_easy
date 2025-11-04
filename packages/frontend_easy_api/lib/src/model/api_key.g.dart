// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIKey extends APIKey {
  @override
  final String keyId;
  @override
  final String kioskId;
  @override
  final String? name;
  @override
  final JsonObject? permissions;
  @override
  final bool? isActive;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? lastUsed;
  @override
  final DateTime createdAt;

  factory _$APIKey([void Function(APIKeyBuilder)? updates]) =>
      (APIKeyBuilder()..update(updates))._build();

  _$APIKey._(
      {required this.keyId,
      required this.kioskId,
      this.name,
      this.permissions,
      this.isActive,
      this.expiresAt,
      this.lastUsed,
      required this.createdAt})
      : super._();
  @override
  APIKey rebuild(void Function(APIKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIKeyBuilder toBuilder() => APIKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIKey &&
        keyId == other.keyId &&
        kioskId == other.kioskId &&
        name == other.name &&
        permissions == other.permissions &&
        isActive == other.isActive &&
        expiresAt == other.expiresAt &&
        lastUsed == other.lastUsed &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, lastUsed.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIKey')
          ..add('keyId', keyId)
          ..add('kioskId', kioskId)
          ..add('name', name)
          ..add('permissions', permissions)
          ..add('isActive', isActive)
          ..add('expiresAt', expiresAt)
          ..add('lastUsed', lastUsed)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class APIKeyBuilder implements Builder<APIKey, APIKeyBuilder> {
  _$APIKey? _$v;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  JsonObject? _permissions;
  JsonObject? get permissions => _$this._permissions;
  set permissions(JsonObject? permissions) => _$this._permissions = permissions;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _lastUsed;
  DateTime? get lastUsed => _$this._lastUsed;
  set lastUsed(DateTime? lastUsed) => _$this._lastUsed = lastUsed;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  APIKeyBuilder() {
    APIKey._defaults(this);
  }

  APIKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyId = $v.keyId;
      _kioskId = $v.kioskId;
      _name = $v.name;
      _permissions = $v.permissions;
      _isActive = $v.isActive;
      _expiresAt = $v.expiresAt;
      _lastUsed = $v.lastUsed;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIKey other) {
    _$v = other as _$APIKey;
  }

  @override
  void update(void Function(APIKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIKey build() => _build();

  _$APIKey _build() {
    final _$result = _$v ??
        _$APIKey._(
          keyId:
              BuiltValueNullFieldError.checkNotNull(keyId, r'APIKey', 'keyId'),
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'APIKey', 'kioskId'),
          name: name,
          permissions: permissions,
          isActive: isActive,
          expiresAt: expiresAt,
          lastUsed: lastUsed,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'APIKey', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
