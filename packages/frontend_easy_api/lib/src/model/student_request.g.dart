// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StudentRequestStatusEnum _$studentRequestStatusEnum_active =
    const StudentRequestStatusEnum._('active');
const StudentRequestStatusEnum _$studentRequestStatusEnum_inactive =
    const StudentRequestStatusEnum._('inactive');
const StudentRequestStatusEnum _$studentRequestStatusEnum_suspended =
    const StudentRequestStatusEnum._('suspended');

StudentRequestStatusEnum _$studentRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$studentRequestStatusEnum_active;
    case 'inactive':
      return _$studentRequestStatusEnum_inactive;
    case 'suspended':
      return _$studentRequestStatusEnum_suspended;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StudentRequestStatusEnum> _$studentRequestStatusEnumValues =
    BuiltSet<StudentRequestStatusEnum>(const <StudentRequestStatusEnum>[
  _$studentRequestStatusEnum_active,
  _$studentRequestStatusEnum_inactive,
  _$studentRequestStatusEnum_suspended,
]);

Serializer<StudentRequestStatusEnum> _$studentRequestStatusEnumSerializer =
    _$StudentRequestStatusEnumSerializer();

class _$StudentRequestStatusEnumSerializer
    implements PrimitiveSerializer<StudentRequestStatusEnum> {
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
  final Iterable<Type> types = const <Type>[StudentRequestStatusEnum];
  @override
  final String wireName = 'StudentRequestStatusEnum';

  @override
  Object serialize(Serializers serializers, StudentRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StudentRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StudentRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StudentRequest extends StudentRequest {
  @override
  final String school;
  @override
  final String schoolStudentId;
  @override
  final String grade;
  @override
  final String? section;
  @override
  final double? addressLatitude;
  @override
  final double? addressLongitude;
  @override
  final String? assignedBus;
  @override
  final StudentRequestStatusEnum? status;
  @override
  final Date? enrollmentDate;

  factory _$StudentRequest([void Function(StudentRequestBuilder)? updates]) =>
      (StudentRequestBuilder()..update(updates))._build();

  _$StudentRequest._(
      {required this.school,
      required this.schoolStudentId,
      required this.grade,
      this.section,
      this.addressLatitude,
      this.addressLongitude,
      this.assignedBus,
      this.status,
      this.enrollmentDate})
      : super._();
  @override
  StudentRequest rebuild(void Function(StudentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentRequestBuilder toBuilder() => StudentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentRequest &&
        school == other.school &&
        schoolStudentId == other.schoolStudentId &&
        grade == other.grade &&
        section == other.section &&
        addressLatitude == other.addressLatitude &&
        addressLongitude == other.addressLongitude &&
        assignedBus == other.assignedBus &&
        status == other.status &&
        enrollmentDate == other.enrollmentDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, school.hashCode);
    _$hash = $jc(_$hash, schoolStudentId.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, section.hashCode);
    _$hash = $jc(_$hash, addressLatitude.hashCode);
    _$hash = $jc(_$hash, addressLongitude.hashCode);
    _$hash = $jc(_$hash, assignedBus.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, enrollmentDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentRequest')
          ..add('school', school)
          ..add('schoolStudentId', schoolStudentId)
          ..add('grade', grade)
          ..add('section', section)
          ..add('addressLatitude', addressLatitude)
          ..add('addressLongitude', addressLongitude)
          ..add('assignedBus', assignedBus)
          ..add('status', status)
          ..add('enrollmentDate', enrollmentDate))
        .toString();
  }
}

class StudentRequestBuilder
    implements Builder<StudentRequest, StudentRequestBuilder> {
  _$StudentRequest? _$v;

  String? _school;
  String? get school => _$this._school;
  set school(String? school) => _$this._school = school;

  String? _schoolStudentId;
  String? get schoolStudentId => _$this._schoolStudentId;
  set schoolStudentId(String? schoolStudentId) =>
      _$this._schoolStudentId = schoolStudentId;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _section;
  String? get section => _$this._section;
  set section(String? section) => _$this._section = section;

  double? _addressLatitude;
  double? get addressLatitude => _$this._addressLatitude;
  set addressLatitude(double? addressLatitude) =>
      _$this._addressLatitude = addressLatitude;

  double? _addressLongitude;
  double? get addressLongitude => _$this._addressLongitude;
  set addressLongitude(double? addressLongitude) =>
      _$this._addressLongitude = addressLongitude;

  String? _assignedBus;
  String? get assignedBus => _$this._assignedBus;
  set assignedBus(String? assignedBus) => _$this._assignedBus = assignedBus;

  StudentRequestStatusEnum? _status;
  StudentRequestStatusEnum? get status => _$this._status;
  set status(StudentRequestStatusEnum? status) => _$this._status = status;

  Date? _enrollmentDate;
  Date? get enrollmentDate => _$this._enrollmentDate;
  set enrollmentDate(Date? enrollmentDate) =>
      _$this._enrollmentDate = enrollmentDate;

  StudentRequestBuilder() {
    StudentRequest._defaults(this);
  }

  StudentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _school = $v.school;
      _schoolStudentId = $v.schoolStudentId;
      _grade = $v.grade;
      _section = $v.section;
      _addressLatitude = $v.addressLatitude;
      _addressLongitude = $v.addressLongitude;
      _assignedBus = $v.assignedBus;
      _status = $v.status;
      _enrollmentDate = $v.enrollmentDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentRequest other) {
    _$v = other as _$StudentRequest;
  }

  @override
  void update(void Function(StudentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentRequest build() => _build();

  _$StudentRequest _build() {
    final _$result = _$v ??
        _$StudentRequest._(
          school: BuiltValueNullFieldError.checkNotNull(
              school, r'StudentRequest', 'school'),
          schoolStudentId: BuiltValueNullFieldError.checkNotNull(
              schoolStudentId, r'StudentRequest', 'schoolStudentId'),
          grade: BuiltValueNullFieldError.checkNotNull(
              grade, r'StudentRequest', 'grade'),
          section: section,
          addressLatitude: addressLatitude,
          addressLongitude: addressLongitude,
          assignedBus: assignedBus,
          status: status,
          enrollmentDate: enrollmentDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
