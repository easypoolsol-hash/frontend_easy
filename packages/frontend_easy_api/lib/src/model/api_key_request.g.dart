// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIKeyRequest extends APIKeyRequest {
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

  factory _$APIKeyRequest([void Function(APIKeyRequestBuilder)? updates]) =>
      (APIKeyRequestBuilder()..update(updates))._build();

  _$APIKeyRequest._(
      {required this.kioskId,
      this.name,
      this.permissions,
      this.isActive,
      this.expiresAt})
      : super._();
  @override
  APIKeyRequest rebuild(void Function(APIKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIKeyRequestBuilder toBuilder() => APIKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIKeyRequest &&
        kioskId == other.kioskId &&
        name == other.name &&
        permissions == other.permissions &&
        isActive == other.isActive &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIKeyRequest')
          ..add('kioskId', kioskId)
          ..add('name', name)
          ..add('permissions', permissions)
          ..add('isActive', isActive)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class APIKeyRequestBuilder
    implements Builder<APIKeyRequest, APIKeyRequestBuilder> {
  _$APIKeyRequest? _$v;

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

  APIKeyRequestBuilder() {
    APIKeyRequest._defaults(this);
  }

  APIKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kioskId = $v.kioskId;
      _name = $v.name;
      _permissions = $v.permissions;
      _isActive = $v.isActive;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIKeyRequest other) {
    _$v = other as _$APIKeyRequest;
  }

  @override
  void update(void Function(APIKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIKeyRequest build() => _build();

  _$APIKeyRequest _build() {
    final _$result = _$v ??
        _$APIKeyRequest._(
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'APIKeyRequest', 'kioskId'),
          name: name,
          permissions: permissions,
          isActive: isActive,
          expiresAt: expiresAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
