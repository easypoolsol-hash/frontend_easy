// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchedStudentStatusEnum _$patchedStudentStatusEnum_active =
    const PatchedStudentStatusEnum._('active');
const PatchedStudentStatusEnum _$patchedStudentStatusEnum_inactive =
    const PatchedStudentStatusEnum._('inactive');
const PatchedStudentStatusEnum _$patchedStudentStatusEnum_suspended =
    const PatchedStudentStatusEnum._('suspended');

PatchedStudentStatusEnum _$patchedStudentStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$patchedStudentStatusEnum_active;
    case 'inactive':
      return _$patchedStudentStatusEnum_inactive;
    case 'suspended':
      return _$patchedStudentStatusEnum_suspended;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchedStudentStatusEnum> _$patchedStudentStatusEnumValues =
    BuiltSet<PatchedStudentStatusEnum>(const <PatchedStudentStatusEnum>[
  _$patchedStudentStatusEnum_active,
  _$patchedStudentStatusEnum_inactive,
  _$patchedStudentStatusEnum_suspended,
]);

Serializer<PatchedStudentStatusEnum> _$patchedStudentStatusEnumSerializer =
    _$PatchedStudentStatusEnumSerializer();

class _$PatchedStudentStatusEnumSerializer
    implements PrimitiveSerializer<PatchedStudentStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'inactive': 'inactive',
    'suspended': 'suspended',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'inactive': 'inactive',
    'suspended': 'suspended',
  };

  @override
  final Iterable<Type> types = const <Type>[PatchedStudentStatusEnum];
  @override
  final String wireName = 'PatchedStudentStatusEnum';

  @override
  Object serialize(Serializers serializers, PatchedStudentStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchedStudentStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatchedStudentStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatchedStudent extends PatchedStudent {
  @override
  final String? studentId;
  @override
  final String? school;
  @override
  final String? decryptedName;
  @override
  final String? name;
  @override
  final String? grade;
  @override
  final String? section;
  @override
  final String? assignedBus;
  @override
  final PatchedStudentStatusEnum? status;
  @override
  final Date? enrollmentDate;
  @override
  final School? schoolDetails;
  @override
  final BusBasic? busDetails;
  @override
  final BuiltList<StudentParent>? parents;
  @override
  final BuiltList<StudentPhoto>? photos;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PatchedStudent([void Function(PatchedStudentBuilder)? updates]) =>
      (PatchedStudentBuilder()..update(updates))._build();

  _$PatchedStudent._(
      {this.studentId,
      this.school,
      this.decryptedName,
      this.name,
      this.grade,
      this.section,
      this.assignedBus,
      this.status,
      this.enrollmentDate,
      this.schoolDetails,
      this.busDetails,
      this.parents,
      this.photos,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  PatchedStudent rebuild(void Function(PatchedStudentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedStudentBuilder toBuilder() => PatchedStudentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedStudent &&
        studentId == other.studentId &&
        school == other.school &&
        decryptedName == other.decryptedName &&
        name == other.name &&
        grade == other.grade &&
        section == other.section &&
        assignedBus == other.assignedBus &&
        status == other.status &&
        enrollmentDate == other.enrollmentDate &&
        schoolDetails == other.schoolDetails &&
        busDetails == other.busDetails &&
        parents == other.parents &&
        photos == other.photos &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, studentId.hashCode);
    _$hash = $jc(_$hash, school.hashCode);
    _$hash = $jc(_$hash, decryptedName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, section.hashCode);
    _$hash = $jc(_$hash, assignedBus.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, enrollmentDate.hashCode);
    _$hash = $jc(_$hash, schoolDetails.hashCode);
    _$hash = $jc(_$hash, busDetails.hashCode);
    _$hash = $jc(_$hash, parents.hashCode);
    _$hash = $jc(_$hash, photos.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedStudent')
          ..add('studentId', studentId)
          ..add('school', school)
          ..add('decryptedName', decryptedName)
          ..add('name', name)
          ..add('grade', grade)
          ..add('section', section)
          ..add('assignedBus', assignedBus)
          ..add('status', status)
          ..add('enrollmentDate', enrollmentDate)
          ..add('schoolDetails', schoolDetails)
          ..add('busDetails', busDetails)
          ..add('parents', parents)
          ..add('photos', photos)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PatchedStudentBuilder
    implements Builder<PatchedStudent, PatchedStudentBuilder> {
  _$PatchedStudent? _$v;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  String? _school;
  String? get school => _$this._school;
  set school(String? school) => _$this._school = school;

  String? _decryptedName;
  String? get decryptedName => _$this._decryptedName;
  set decryptedName(String? decryptedName) =>
      _$this._decryptedName = decryptedName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _section;
  String? get section => _$this._section;
  set section(String? section) => _$this._section = section;

  String? _assignedBus;
  String? get assignedBus => _$this._assignedBus;
  set assignedBus(String? assignedBus) => _$this._assignedBus = assignedBus;

  PatchedStudentStatusEnum? _status;
  PatchedStudentStatusEnum? get status => _$this._status;
  set status(PatchedStudentStatusEnum? status) => _$this._status = status;

  Date? _enrollmentDate;
  Date? get enrollmentDate => _$this._enrollmentDate;
  set enrollmentDate(Date? enrollmentDate) =>
      _$this._enrollmentDate = enrollmentDate;

  SchoolBuilder? _schoolDetails;
  SchoolBuilder get schoolDetails => _$this._schoolDetails ??= SchoolBuilder();
  set schoolDetails(SchoolBuilder? schoolDetails) =>
      _$this._schoolDetails = schoolDetails;

  BusBasicBuilder? _busDetails;
  BusBasicBuilder get busDetails => _$this._busDetails ??= BusBasicBuilder();
  set busDetails(BusBasicBuilder? busDetails) =>
      _$this._busDetails = busDetails;

  ListBuilder<StudentParent>? _parents;
  ListBuilder<StudentParent> get parents =>
      _$this._parents ??= ListBuilder<StudentParent>();
  set parents(ListBuilder<StudentParent>? parents) => _$this._parents = parents;

  ListBuilder<StudentPhoto>? _photos;
  ListBuilder<StudentPhoto> get photos =>
      _$this._photos ??= ListBuilder<StudentPhoto>();
  set photos(ListBuilder<StudentPhoto>? photos) => _$this._photos = photos;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PatchedStudentBuilder() {
    PatchedStudent._defaults(this);
  }

  PatchedStudentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studentId = $v.studentId;
      _school = $v.school;
      _decryptedName = $v.decryptedName;
      _name = $v.name;
      _grade = $v.grade;
      _section = $v.section;
      _assignedBus = $v.assignedBus;
      _status = $v.status;
      _enrollmentDate = $v.enrollmentDate;
      _schoolDetails = $v.schoolDetails?.toBuilder();
      _busDetails = $v.busDetails?.toBuilder();
      _parents = $v.parents?.toBuilder();
      _photos = $v.photos?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedStudent other) {
    _$v = other as _$PatchedStudent;
  }

  @override
  void update(void Function(PatchedStudentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedStudent build() => _build();

  _$PatchedStudent _build() {
    _$PatchedStudent _$result;
    try {
      _$result = _$v ??
          _$PatchedStudent._(
            studentId: studentId,
            school: school,
            decryptedName: decryptedName,
            name: name,
            grade: grade,
            section: section,
            assignedBus: assignedBus,
            status: status,
            enrollmentDate: enrollmentDate,
            schoolDetails: _schoolDetails?.build(),
            busDetails: _busDetails?.build(),
            parents: _parents?.build(),
            photos: _photos?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schoolDetails';
        _schoolDetails?.build();
        _$failedField = 'busDetails';
        _busDetails?.build();
        _$failedField = 'parents';
        _parents?.build();
        _$failedField = 'photos';
        _photos?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchedStudent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
