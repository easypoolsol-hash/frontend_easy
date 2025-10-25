// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$School extends School {
  @override
  final String schoolId;
  @override
  final String name;
  @override
  final DateTime createdAt;

  factory _$School([void Function(SchoolBuilder)? updates]) =>
      (SchoolBuilder()..update(updates))._build();

  _$School._(
      {required this.schoolId, required this.name, required this.createdAt})
      : super._();
  @override
  School rebuild(void Function(SchoolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SchoolBuilder toBuilder() => SchoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is School &&
        schoolId == other.schoolId &&
        name == other.name &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, schoolId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'School')
          ..add('schoolId', schoolId)
          ..add('name', name)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class SchoolBuilder implements Builder<School, SchoolBuilder> {
  _$School? _$v;

  String? _schoolId;
  String? get schoolId => _$this._schoolId;
  set schoolId(String? schoolId) => _$this._schoolId = schoolId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  SchoolBuilder() {
    School._defaults(this);
  }

  SchoolBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _schoolId = $v.schoolId;
      _name = $v.name;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(School other) {
    _$v = other as _$School;
  }

  @override
  void update(void Function(SchoolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  School build() => _build();

  _$School _build() {
    final _$result = _$v ??
        _$School._(
          schoolId: BuiltValueNullFieldError.checkNotNull(
              schoolId, r'School', 'schoolId'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'School', 'name'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'School', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
