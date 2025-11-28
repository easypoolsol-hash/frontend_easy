// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_parent_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StudentParentRequestRelationshipEnum
    _$studentParentRequestRelationshipEnum_mother =
    const StudentParentRequestRelationshipEnum._('mother');
const StudentParentRequestRelationshipEnum
    _$studentParentRequestRelationshipEnum_father =
    const StudentParentRequestRelationshipEnum._('father');
const StudentParentRequestRelationshipEnum
    _$studentParentRequestRelationshipEnum_guardian =
    const StudentParentRequestRelationshipEnum._('guardian');
const StudentParentRequestRelationshipEnum
    _$studentParentRequestRelationshipEnum_grandparent =
    const StudentParentRequestRelationshipEnum._('grandparent');
const StudentParentRequestRelationshipEnum
    _$studentParentRequestRelationshipEnum_other =
    const StudentParentRequestRelationshipEnum._('other');

StudentParentRequestRelationshipEnum
    _$studentParentRequestRelationshipEnumValueOf(String name) {
  switch (name) {
    case 'mother':
      return _$studentParentRequestRelationshipEnum_mother;
    case 'father':
      return _$studentParentRequestRelationshipEnum_father;
    case 'guardian':
      return _$studentParentRequestRelationshipEnum_guardian;
    case 'grandparent':
      return _$studentParentRequestRelationshipEnum_grandparent;
    case 'other':
      return _$studentParentRequestRelationshipEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StudentParentRequestRelationshipEnum>
    _$studentParentRequestRelationshipEnumValues = BuiltSet<
        StudentParentRequestRelationshipEnum>(const <StudentParentRequestRelationshipEnum>[
  _$studentParentRequestRelationshipEnum_mother,
  _$studentParentRequestRelationshipEnum_father,
  _$studentParentRequestRelationshipEnum_guardian,
  _$studentParentRequestRelationshipEnum_grandparent,
  _$studentParentRequestRelationshipEnum_other,
]);

Serializer<StudentParentRequestRelationshipEnum>
    _$studentParentRequestRelationshipEnumSerializer =
    _$StudentParentRequestRelationshipEnumSerializer();

class _$StudentParentRequestRelationshipEnumSerializer
    implements PrimitiveSerializer<StudentParentRequestRelationshipEnum> {
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
    StudentParentRequestRelationshipEnum
  ];
  @override
  final String wireName = 'StudentParentRequestRelationshipEnum';

  @override
  Object serialize(
          Serializers serializers, StudentParentRequestRelationshipEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StudentParentRequestRelationshipEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StudentParentRequestRelationshipEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StudentParentRequest extends StudentParentRequest {
  @override
  final String student;
  @override
  final String parent;
  @override
  final StudentParentRequestRelationshipEnum relationship;
  @override
  final bool? isPrimary;

  factory _$StudentParentRequest(
          [void Function(StudentParentRequestBuilder)? updates]) =>
      (StudentParentRequestBuilder()..update(updates))._build();

  _$StudentParentRequest._(
      {required this.student,
      required this.parent,
      required this.relationship,
      this.isPrimary})
      : super._();
  @override
  StudentParentRequest rebuild(
          void Function(StudentParentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentParentRequestBuilder toBuilder() =>
      StudentParentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentParentRequest &&
        student == other.student &&
        parent == other.parent &&
        relationship == other.relationship &&
        isPrimary == other.isPrimary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, student.hashCode);
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jc(_$hash, relationship.hashCode);
    _$hash = $jc(_$hash, isPrimary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentParentRequest')
          ..add('student', student)
          ..add('parent', parent)
          ..add('relationship', relationship)
          ..add('isPrimary', isPrimary))
        .toString();
  }
}

class StudentParentRequestBuilder
    implements Builder<StudentParentRequest, StudentParentRequestBuilder> {
  _$StudentParentRequest? _$v;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _parent;
  String? get parent => _$this._parent;
  set parent(String? parent) => _$this._parent = parent;

  StudentParentRequestRelationshipEnum? _relationship;
  StudentParentRequestRelationshipEnum? get relationship =>
      _$this._relationship;
  set relationship(StudentParentRequestRelationshipEnum? relationship) =>
      _$this._relationship = relationship;

  bool? _isPrimary;
  bool? get isPrimary => _$this._isPrimary;
  set isPrimary(bool? isPrimary) => _$this._isPrimary = isPrimary;

  StudentParentRequestBuilder() {
    StudentParentRequest._defaults(this);
  }

  StudentParentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _parent = $v.parent;
      _relationship = $v.relationship;
      _isPrimary = $v.isPrimary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentParentRequest other) {
    _$v = other as _$StudentParentRequest;
  }

  @override
  void update(void Function(StudentParentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentParentRequest build() => _build();

  _$StudentParentRequest _build() {
    final _$result = _$v ??
        _$StudentParentRequest._(
          student: BuiltValueNullFieldError.checkNotNull(
              student, r'StudentParentRequest', 'student'),
          parent: BuiltValueNullFieldError.checkNotNull(
              parent, r'StudentParentRequest', 'parent'),
          relationship: BuiltValueNullFieldError.checkNotNull(
              relationship, r'StudentParentRequest', 'relationship'),
          isPrimary: isPrimary,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
