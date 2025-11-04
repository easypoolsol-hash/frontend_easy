// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_parent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StudentParentRelationshipEnum _$studentParentRelationshipEnum_mother =
    const StudentParentRelationshipEnum._('mother');
const StudentParentRelationshipEnum _$studentParentRelationshipEnum_father =
    const StudentParentRelationshipEnum._('father');
const StudentParentRelationshipEnum _$studentParentRelationshipEnum_guardian =
    const StudentParentRelationshipEnum._('guardian');
const StudentParentRelationshipEnum
    _$studentParentRelationshipEnum_grandparent =
    const StudentParentRelationshipEnum._('grandparent');
const StudentParentRelationshipEnum _$studentParentRelationshipEnum_other =
    const StudentParentRelationshipEnum._('other');

StudentParentRelationshipEnum _$studentParentRelationshipEnumValueOf(
    String name) {
  switch (name) {
    case 'mother':
      return _$studentParentRelationshipEnum_mother;
    case 'father':
      return _$studentParentRelationshipEnum_father;
    case 'guardian':
      return _$studentParentRelationshipEnum_guardian;
    case 'grandparent':
      return _$studentParentRelationshipEnum_grandparent;
    case 'other':
      return _$studentParentRelationshipEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StudentParentRelationshipEnum>
    _$studentParentRelationshipEnumValues = BuiltSet<
        StudentParentRelationshipEnum>(const <StudentParentRelationshipEnum>[
  _$studentParentRelationshipEnum_mother,
  _$studentParentRelationshipEnum_father,
  _$studentParentRelationshipEnum_guardian,
  _$studentParentRelationshipEnum_grandparent,
  _$studentParentRelationshipEnum_other,
]);

Serializer<StudentParentRelationshipEnum>
    _$studentParentRelationshipEnumSerializer =
    _$StudentParentRelationshipEnumSerializer();

class _$StudentParentRelationshipEnumSerializer
    implements PrimitiveSerializer<StudentParentRelationshipEnum> {
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
  final Iterable<Type> types = const <Type>[StudentParentRelationshipEnum];
  @override
  final String wireName = 'StudentParentRelationshipEnum';

  @override
  Object serialize(
          Serializers serializers, StudentParentRelationshipEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StudentParentRelationshipEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StudentParentRelationshipEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StudentParent extends StudentParent {
  @override
  final String student;
  @override
  final String parent;
  @override
  final StudentParentRelationshipEnum relationship;
  @override
  final bool? isPrimary;
  @override
  final Parent parentDetails;
  @override
  final String studentDetails;

  factory _$StudentParent([void Function(StudentParentBuilder)? updates]) =>
      (StudentParentBuilder()..update(updates))._build();

  _$StudentParent._(
      {required this.student,
      required this.parent,
      required this.relationship,
      this.isPrimary,
      required this.parentDetails,
      required this.studentDetails})
      : super._();
  @override
  StudentParent rebuild(void Function(StudentParentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentParentBuilder toBuilder() => StudentParentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentParent &&
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
    return (newBuiltValueToStringHelper(r'StudentParent')
          ..add('student', student)
          ..add('parent', parent)
          ..add('relationship', relationship)
          ..add('isPrimary', isPrimary)
          ..add('parentDetails', parentDetails)
          ..add('studentDetails', studentDetails))
        .toString();
  }
}

class StudentParentBuilder
    implements Builder<StudentParent, StudentParentBuilder> {
  _$StudentParent? _$v;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _parent;
  String? get parent => _$this._parent;
  set parent(String? parent) => _$this._parent = parent;

  StudentParentRelationshipEnum? _relationship;
  StudentParentRelationshipEnum? get relationship => _$this._relationship;
  set relationship(StudentParentRelationshipEnum? relationship) =>
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

  StudentParentBuilder() {
    StudentParent._defaults(this);
  }

  StudentParentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _parent = $v.parent;
      _relationship = $v.relationship;
      _isPrimary = $v.isPrimary;
      _parentDetails = $v.parentDetails.toBuilder();
      _studentDetails = $v.studentDetails;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentParent other) {
    _$v = other as _$StudentParent;
  }

  @override
  void update(void Function(StudentParentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentParent build() => _build();

  _$StudentParent _build() {
    _$StudentParent _$result;
    try {
      _$result = _$v ??
          _$StudentParent._(
            student: BuiltValueNullFieldError.checkNotNull(
                student, r'StudentParent', 'student'),
            parent: BuiltValueNullFieldError.checkNotNull(
                parent, r'StudentParent', 'parent'),
            relationship: BuiltValueNullFieldError.checkNotNull(
                relationship, r'StudentParent', 'relationship'),
            isPrimary: isPrimary,
            parentDetails: parentDetails.build(),
            studentDetails: BuiltValueNullFieldError.checkNotNull(
                studentDetails, r'StudentParent', 'studentDetails'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parentDetails';
        parentDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StudentParent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
