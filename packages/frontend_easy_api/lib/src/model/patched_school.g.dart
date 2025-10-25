// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_school.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedSchool extends PatchedSchool {
  @override
  final String? schoolId;
  @override
  final String? name;
  @override
  final DateTime? createdAt;

  factory _$PatchedSchool([void Function(PatchedSchoolBuilder)? updates]) =>
      (PatchedSchoolBuilder()..update(updates))._build();

  _$PatchedSchool._({this.schoolId, this.name, this.createdAt}) : super._();
  @override
  PatchedSchool rebuild(void Function(PatchedSchoolBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedSchoolBuilder toBuilder() => PatchedSchoolBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedSchool &&
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
    return (newBuiltValueToStringHelper(r'PatchedSchool')
          ..add('schoolId', schoolId)
          ..add('name', name)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class PatchedSchoolBuilder
    implements Builder<PatchedSchool, PatchedSchoolBuilder> {
  _$PatchedSchool? _$v;

  String? _schoolId;
  String? get schoolId => _$this._schoolId;
  set schoolId(String? schoolId) => _$this._schoolId = schoolId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  PatchedSchoolBuilder() {
    PatchedSchool._defaults(this);
  }

  PatchedSchoolBuilder get _$this {
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
  void replace(PatchedSchool other) {
    _$v = other as _$PatchedSchool;
  }

  @override
  void update(void Function(PatchedSchoolBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedSchool build() => _build();

  _$PatchedSchool _build() {
    final _$result = _$v ??
        _$PatchedSchool._(
          schoolId: schoolId,
          name: name,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
