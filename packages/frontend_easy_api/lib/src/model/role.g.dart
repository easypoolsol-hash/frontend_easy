// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RoleNameEnum _$roleNameEnum_superAdmin =
    const RoleNameEnum._('superAdmin');
const RoleNameEnum _$roleNameEnum_backendEngineer =
    const RoleNameEnum._('backendEngineer');
const RoleNameEnum _$roleNameEnum_schoolAdmin =
    const RoleNameEnum._('schoolAdmin');
const RoleNameEnum _$roleNameEnum_parent = const RoleNameEnum._('parent');

RoleNameEnum _$roleNameEnumValueOf(String name) {
  switch (name) {
    case 'superAdmin':
      return _$roleNameEnum_superAdmin;
    case 'backendEngineer':
      return _$roleNameEnum_backendEngineer;
    case 'schoolAdmin':
      return _$roleNameEnum_schoolAdmin;
    case 'parent':
      return _$roleNameEnum_parent;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RoleNameEnum> _$roleNameEnumValues =
    BuiltSet<RoleNameEnum>(const <RoleNameEnum>[
  _$roleNameEnum_superAdmin,
  _$roleNameEnum_backendEngineer,
  _$roleNameEnum_schoolAdmin,
  _$roleNameEnum_parent,
]);

Serializer<RoleNameEnum> _$roleNameEnumSerializer = _$RoleNameEnumSerializer();

class _$RoleNameEnumSerializer implements PrimitiveSerializer<RoleNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'superAdmin': 'super_admin',
    'backendEngineer': 'backend_engineer',
    'schoolAdmin': 'school_admin',
    'parent': 'parent',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'super_admin': 'superAdmin',
    'backend_engineer': 'backendEngineer',
    'school_admin': 'schoolAdmin',
    'parent': 'parent',
  };

  @override
  final Iterable<Type> types = const <Type>[RoleNameEnum];
  @override
  final String wireName = 'RoleNameEnum';

  @override
  Object serialize(Serializers serializers, RoleNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RoleNameEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RoleNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Role extends Role {
  @override
  final String roleId;
  @override
  final RoleNameEnum name;
  @override
  final String? description;
  @override
  final JsonObject? permissions;
  @override
  final bool? isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Role([void Function(RoleBuilder)? updates]) =>
      (RoleBuilder()..update(updates))._build();

  _$Role._(
      {required this.roleId,
      required this.name,
      this.description,
      this.permissions,
      this.isActive,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  Role rebuild(void Function(RoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleBuilder toBuilder() => RoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Role &&
        roleId == other.roleId &&
        name == other.name &&
        description == other.description &&
        permissions == other.permissions &&
        isActive == other.isActive &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Role')
          ..add('roleId', roleId)
          ..add('name', name)
          ..add('description', description)
          ..add('permissions', permissions)
          ..add('isActive', isActive)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class RoleBuilder implements Builder<Role, RoleBuilder> {
  _$Role? _$v;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  RoleNameEnum? _name;
  RoleNameEnum? get name => _$this._name;
  set name(RoleNameEnum? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  JsonObject? _permissions;
  JsonObject? get permissions => _$this._permissions;
  set permissions(JsonObject? permissions) => _$this._permissions = permissions;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  RoleBuilder() {
    Role._defaults(this);
  }

  RoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleId = $v.roleId;
      _name = $v.name;
      _description = $v.description;
      _permissions = $v.permissions;
      _isActive = $v.isActive;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Role other) {
    _$v = other as _$Role;
  }

  @override
  void update(void Function(RoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Role build() => _build();

  _$Role _build() {
    final _$result = _$v ??
        _$Role._(
          roleId:
              BuiltValueNullFieldError.checkNotNull(roleId, r'Role', 'roleId'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'Role', 'name'),
          description: description,
          permissions: permissions,
          isActive: isActive,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Role', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'Role', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
