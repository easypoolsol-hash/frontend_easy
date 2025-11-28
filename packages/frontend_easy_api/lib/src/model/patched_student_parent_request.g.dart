// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student_parent_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchedStudentParentRequestRelationshipEnum
    _$patchedStudentParentRequestRelationshipEnum_mother =
    const PatchedStudentParentRequestRelationshipEnum._('mother');
const PatchedStudentParentRequestRelationshipEnum
    _$patchedStudentParentRequestRelationshipEnum_father =
    const PatchedStudentParentRequestRelationshipEnum._('father');
const PatchedStudentParentRequestRelationshipEnum
    _$patchedStudentParentRequestRelationshipEnum_guardian =
    const PatchedStudentParentRequestRelationshipEnum._('guardian');
const PatchedStudentParentRequestRelationshipEnum
    _$patchedStudentParentRequestRelationshipEnum_grandparent =
    const PatchedStudentParentRequestRelationshipEnum._('grandparent');
const PatchedStudentParentRequestRelationshipEnum
    _$patchedStudentParentRequestRelationshipEnum_other =
    const PatchedStudentParentRequestRelationshipEnum._('other');

PatchedStudentParentRequestRelationshipEnum
    _$patchedStudentParentRequestRelationshipEnumValueOf(String name) {
  switch (name) {
    case 'mother':
      return _$patchedStudentParentRequestRelationshipEnum_mother;
    case 'father':
      return _$patchedStudentParentRequestRelationshipEnum_father;
    case 'guardian':
      return _$patchedStudentParentRequestRelationshipEnum_guardian;
    case 'grandparent':
      return _$patchedStudentParentRequestRelationshipEnum_grandparent;
    case 'other':
      return _$patchedStudentParentRequestRelationshipEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchedStudentParentRequestRelationshipEnum>
    _$patchedStudentParentRequestRelationshipEnumValues = BuiltSet<
        PatchedStudentParentRequestRelationshipEnum>(const <PatchedStudentParentRequestRelationshipEnum>[
  _$patchedStudentParentRequestRelationshipEnum_mother,
  _$patchedStudentParentRequestRelationshipEnum_father,
  _$patchedStudentParentRequestRelationshipEnum_guardian,
  _$patchedStudentParentRequestRelationshipEnum_grandparent,
  _$patchedStudentParentRequestRelationshipEnum_other,
]);

Serializer<PatchedStudentParentRequestRelationshipEnum>
    _$patchedStudentParentRequestRelationshipEnumSerializer =
    _$PatchedStudentParentRequestRelationshipEnumSerializer();

class _$PatchedStudentParentRequestRelationshipEnumSerializer
    implements
        PrimitiveSerializer<PatchedStudentParentRequestRelationshipEnum> {
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
    PatchedStudentParentRequestRelationshipEnum
  ];
  @override
  final String wireName = 'PatchedStudentParentRequestRelationshipEnum';

  @override
  Object serialize(Serializers serializers,
          PatchedStudentParentRequestRelationshipEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchedStudentParentRequestRelationshipEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatchedStudentParentRequestRelationshipEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatchedStudentParentRequest extends PatchedStudentParentRequest {
  @override
  final String? student;
  @override
  final String? parent;
  @override
  final PatchedStudentParentRequestRelationshipEnum? relationship;
  @override
  final bool? isPrimary;

  factory _$PatchedStudentParentRequest(
          [void Function(PatchedStudentParentRequestBuilder)? updates]) =>
      (PatchedStudentParentRequestBuilder()..update(updates))._build();

  _$PatchedStudentParentRequest._(
      {this.student, this.parent, this.relationship, this.isPrimary})
      : super._();
  @override
  PatchedStudentParentRequest rebuild(
          void Function(PatchedStudentParentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedStudentParentRequestBuilder toBuilder() =>
      PatchedStudentParentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedStudentParentRequest &&
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
    return (newBuiltValueToStringHelper(r'PatchedStudentParentRequest')
          ..add('student', student)
          ..add('parent', parent)
          ..add('relationship', relationship)
          ..add('isPrimary', isPrimary))
        .toString();
  }
}

class PatchedStudentParentRequestBuilder
    implements
        Builder<PatchedStudentParentRequest,
            PatchedStudentParentRequestBuilder> {
  _$PatchedStudentParentRequest? _$v;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _parent;
  String? get parent => _$this._parent;
  set parent(String? parent) => _$this._parent = parent;

  PatchedStudentParentRequestRelationshipEnum? _relationship;
  PatchedStudentParentRequestRelationshipEnum? get relationship =>
      _$this._relationship;
  set relationship(PatchedStudentParentRequestRelationshipEnum? relationship) =>
      _$this._relationship = relationship;

  bool? _isPrimary;
  bool? get isPrimary => _$this._isPrimary;
  set isPrimary(bool? isPrimary) => _$this._isPrimary = isPrimary;

  PatchedStudentParentRequestBuilder() {
    PatchedStudentParentRequest._defaults(this);
  }

  PatchedStudentParentRequestBuilder get _$this {
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
  void replace(PatchedStudentParentRequest other) {
    _$v = other as _$PatchedStudentParentRequest;
  }

  @override
  void update(void Function(PatchedStudentParentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedStudentParentRequest build() => _build();

  _$PatchedStudentParentRequest _build() {
    final _$result = _$v ??
        _$PatchedStudentParentRequest._(
          student: student,
          parent: parent,
          relationship: relationship,
          isPrimary: isPrimary,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
