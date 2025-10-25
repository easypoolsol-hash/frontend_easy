// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StudentStatusEnum _$studentStatusEnum_active =
    const StudentStatusEnum._('active');
const StudentStatusEnum _$studentStatusEnum_inactive =
    const StudentStatusEnum._('inactive');
const StudentStatusEnum _$studentStatusEnum_suspended =
    const StudentStatusEnum._('suspended');

StudentStatusEnum _$studentStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$studentStatusEnum_active;
    case 'inactive':
      return _$studentStatusEnum_inactive;
    case 'suspended':
      return _$studentStatusEnum_suspended;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StudentStatusEnum> _$studentStatusEnumValues =
    BuiltSet<StudentStatusEnum>(const <StudentStatusEnum>[
  _$studentStatusEnum_active,
  _$studentStatusEnum_inactive,
  _$studentStatusEnum_suspended,
]);

Serializer<StudentStatusEnum> _$studentStatusEnumSerializer =
    _$StudentStatusEnumSerializer();

class _$StudentStatusEnumSerializer
    implements PrimitiveSerializer<StudentStatusEnum> {
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
  final Iterable<Type> types = const <Type>[StudentStatusEnum];
  @override
  final String wireName = 'StudentStatusEnum';

  @override
  Object serialize(Serializers serializers, StudentStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StudentStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StudentStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Student extends Student {
  @override
  final String studentId;
  @override
  final String school;
  @override
  final String decryptedName;
  @override
  final String name;
  @override
  final String grade;
  @override
  final String? section;
  @override
  final String? assignedBus;
  @override
  final StudentStatusEnum? status;
  @override
  final Date enrollmentDate;
  @override
  final School schoolDetails;
  @override
  final BusBasic busDetails;
  @override
  final BuiltList<StudentParent> parents;
  @override
  final BuiltList<StudentPhoto> photos;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Student([void Function(StudentBuilder)? updates]) =>
      (StudentBuilder()..update(updates))._build();

  _$Student._(
      {required this.studentId,
      required this.school,
      required this.decryptedName,
      required this.name,
      required this.grade,
      this.section,
      this.assignedBus,
      this.status,
      required this.enrollmentDate,
      required this.schoolDetails,
      required this.busDetails,
      required this.parents,
      required this.photos,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  Student rebuild(void Function(StudentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentBuilder toBuilder() => StudentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Student &&
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
    return (newBuiltValueToStringHelper(r'Student')
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

class StudentBuilder implements Builder<Student, StudentBuilder> {
  _$Student? _$v;

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

  StudentStatusEnum? _status;
  StudentStatusEnum? get status => _$this._status;
  set status(StudentStatusEnum? status) => _$this._status = status;

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

  StudentBuilder() {
    Student._defaults(this);
  }

  StudentBuilder get _$this {
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
      _schoolDetails = $v.schoolDetails.toBuilder();
      _busDetails = $v.busDetails.toBuilder();
      _parents = $v.parents.toBuilder();
      _photos = $v.photos.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Student other) {
    _$v = other as _$Student;
  }

  @override
  void update(void Function(StudentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Student build() => _build();

  _$Student _build() {
    _$Student _$result;
    try {
      _$result = _$v ??
          _$Student._(
            studentId: BuiltValueNullFieldError.checkNotNull(
                studentId, r'Student', 'studentId'),
            school: BuiltValueNullFieldError.checkNotNull(
                school, r'Student', 'school'),
            decryptedName: BuiltValueNullFieldError.checkNotNull(
                decryptedName, r'Student', 'decryptedName'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Student', 'name'),
            grade: BuiltValueNullFieldError.checkNotNull(
                grade, r'Student', 'grade'),
            section: section,
            assignedBus: assignedBus,
            status: status,
            enrollmentDate: BuiltValueNullFieldError.checkNotNull(
                enrollmentDate, r'Student', 'enrollmentDate'),
            schoolDetails: schoolDetails.build(),
            busDetails: busDetails.build(),
            parents: parents.build(),
            photos: photos.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Student', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'Student', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schoolDetails';
        schoolDetails.build();
        _$failedField = 'busDetails';
        busDetails.build();
        _$failedField = 'parents';
        parents.build();
        _$failedField = 'photos';
        photos.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Student', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
