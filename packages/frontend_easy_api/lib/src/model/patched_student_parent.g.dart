// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student_parent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchedStudentParentRelationshipEnum
    _$patchedStudentParentRelationshipEnum_mother =
    const PatchedStudentParentRelationshipEnum._('mother');
const PatchedStudentParentRelationshipEnum
    _$patchedStudentParentRelationshipEnum_father =
    const PatchedStudentParentRelationshipEnum._('father');
const PatchedStudentParentRelationshipEnum
    _$patchedStudentParentRelationshipEnum_guardian =
    const PatchedStudentParentRelationshipEnum._('guardian');
const PatchedStudentParentRelationshipEnum
    _$patchedStudentParentRelationshipEnum_grandparent =
    const PatchedStudentParentRelationshipEnum._('grandparent');
const PatchedStudentParentRelationshipEnum
    _$patchedStudentParentRelationshipEnum_other =
    const PatchedStudentParentRelationshipEnum._('other');

PatchedStudentParentRelationshipEnum
    _$patchedStudentParentRelationshipEnumValueOf(String name) {
  switch (name) {
    case 'mother':
      return _$patchedStudentParentRelationshipEnum_mother;
    case 'father':
      return _$patchedStudentParentRelationshipEnum_father;
    case 'guardian':
      return _$patchedStudentParentRelationshipEnum_guardian;
    case 'grandparent':
      return _$patchedStudentParentRelationshipEnum_grandparent;
    case 'other':
      return _$patchedStudentParentRelationshipEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchedStudentParentRelationshipEnum>
    _$patchedStudentParentRelationshipEnumValues = BuiltSet<
        PatchedStudentParentRelationshipEnum>(const <PatchedStudentParentRelationshipEnum>[
  _$patchedStudentParentRelationshipEnum_mother,
  _$patchedStudentParentRelationshipEnum_father,
  _$patchedStudentParentRelationshipEnum_guardian,
  _$patchedStudentParentRelationshipEnum_grandparent,
  _$patchedStudentParentRelationshipEnum_other,
]);

Serializer<PatchedStudentParentRelationshipEnum>
    _$patchedStudentParentRelationshipEnumSerializer =
    _$PatchedStudentParentRelationshipEnumSerializer();

class _$PatchedStudentParentRelationshipEnumSerializer
    implements PrimitiveSerializer<PatchedStudentParentRelationshipEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mother': 'mother',
    'father': 'father',
    'guardian': 'guardian',
    'grandparent': 'grandparent',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mother': 'mother',
    'father': 'father',
    'guardian': 'guardian',
    'grandparent': 'grandparent',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PatchedStudentParentRelationshipEnum
  ];
  @override
  final String wireName = 'PatchedStudentParentRelationshipEnum';

  @override
  Object serialize(
          Serializers serializers, PatchedStudentParentRelationshipEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchedStudentParentRelationshipEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatchedStudentParentRelationshipEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatchedStudentParent extends PatchedStudentParent {
  @override
  final String? student;
  @override
  final String? parent;
  @override
  final PatchedStudentParentRelationshipEnum? relationship;
  @override
  final bool? isPrimary;
  @override
  final Parent? parentDetails;
  @override
  final String? studentDetails;

  factory _$PatchedStudentParent(
          [void Function(PatchedStudentParentBuilder)? updates]) =>
      (PatchedStudentParentBuilder()..update(updates))._build();

  _$PatchedStudentParent._(
      {this.student,
      this.parent,
      this.relationship,
      this.isPrimary,
      this.parentDetails,
      this.studentDetails})
      : super._();
  @override
  PatchedStudentParent rebuild(
          void Function(PatchedStudentParentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedStudentParentBuilder toBuilder() =>
      PatchedStudentParentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedStudentParent &&
        student == other.student &&
        parent == other.parent &&
        relationship == other.relationship &&
        isPrimary == other.isPrimary &&
        parentDetails == other.parentDetails &&
        studentDetails == other.studentDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, student.hashCode);
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jc(_$hash, relationship.hashCode);
    _$hash = $jc(_$hash, isPrimary.hashCode);
    _$hash = $jc(_$hash, parentDetails.hashCode);
    _$hash = $jc(_$hash, studentDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedStudentParent')
          ..add('student', student)
          ..add('parent', parent)
          ..add('relationship', relationship)
          ..add('isPrimary', isPrimary)
          ..add('parentDetails', parentDetails)
          ..add('studentDetails', studentDetails))
        .toString();
  }
}

class PatchedStudentParentBuilder
    implements Builder<PatchedStudentParent, PatchedStudentParentBuilder> {
  _$PatchedStudentParent? _$v;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _parent;
  String? get parent => _$this._parent;
  set parent(String? parent) => _$this._parent = parent;

  PatchedStudentParentRelationshipEnum? _relationship;
  PatchedStudentParentRelationshipEnum? get relationship =>
      _$this._relationship;
  set relationship(PatchedStudentParentRelationshipEnum? relationship) =>
      _$this._relationship = relationship;

  bool? _isPrimary;
  bool? get isPrimary => _$this._isPrimary;
  set isPrimary(bool? isPrimary) => _$this._isPrimary = isPrimary;

  ParentBuilder? _parentDetails;
  ParentBuilder get parentDetails => _$this._parentDetails ??= ParentBuilder();
  set parentDetails(ParentBuilder? parentDetails) =>
      _$this._parentDetails = parentDetails;

  String? _studentDetails;
  String? get studentDetails => _$this._studentDetails;
  set studentDetails(String? studentDetails) =>
      _$this._studentDetails = studentDetails;

  PatchedStudentParentBuilder() {
    PatchedStudentParent._defaults(this);
  }

  PatchedStudentParentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _parent = $v.parent;
      _relationship = $v.relationship;
      _isPrimary = $v.isPrimary;
      _parentDetails = $v.parentDetails?.toBuilder();
      _studentDetails = $v.studentDetails;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedStudentParent other) {
    _$v = other as _$PatchedStudentParent;
  }

  @override
  void update(void Function(PatchedStudentParentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedStudentParent build() => _build();

  _$PatchedStudentParent _build() {
    _$PatchedStudentParent _$result;
    try {
      _$result = _$v ??
          _$PatchedStudentParent._(
            student: student,
            parent: parent,
            relationship: relationship,
            isPrimary: isPrimary,
            parentDetails: _parentDetails?.build(),
            studentDetails: studentDetails,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parentDetails';
        _parentDetails?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchedStudentParent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
