// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIKeyCreateRequest extends APIKeyCreateRequest {
  @override
  final String kioskId;
  @override
  final String? name;
  @override
  final JsonObject? permissions;
  @override
  final DateTime? expiresAt;

  factory _$APIKeyCreateRequest(
          [void Function(APIKeyCreateRequestBuilder)? updates]) =>
      (APIKeyCreateRequestBuilder()..update(updates))._build();

  _$APIKeyCreateRequest._(
      {required this.kioskId, this.name, this.permissions, this.expiresAt})
      : super._();
  @override
  APIKeyCreateRequest rebuild(
          void Function(APIKeyCreateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APIKeyCreateRequestBuilder toBuilder() =>
      APIKeyCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIKeyCreateRequest &&
        kioskId == other.kioskId &&
        name == other.name &&
        permissions == other.permissions &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIKeyCreateRequest')
          ..add('kioskId', kioskId)
          ..add('name', name)
          ..add('permissions', permissions)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class APIKeyCreateRequestBuilder
    implements Builder<APIKeyCreateRequest, APIKeyCreateRequestBuilder> {
  _$APIKeyCreateRequest? _$v;

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

  APIKeyCreateRequestBuilder() {
    APIKeyCreateRequest._defaults(this);
  }

  APIKeyCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kioskId = $v.kioskId;
      _name = $v.name;
      _permissions = $v.permissions;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIKeyCreateRequest other) {
    _$v = other as _$APIKeyCreateRequest;
  }

  @override
  void update(void Function(APIKeyCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIKeyCreateRequest build() => _build();

  _$APIKeyCreateRequest _build() {
    final _$result = _$v ??
        _$APIKeyCreateRequest._(
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'APIKeyCreateRequest', 'kioskId'),
          name: name,
          permissions: permissions,
          expiresAt: expiresAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
