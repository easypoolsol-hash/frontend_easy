// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StudentListStatusEnum _$studentListStatusEnum_active =
    const StudentListStatusEnum._('active');
const StudentListStatusEnum _$studentListStatusEnum_inactive =
    const StudentListStatusEnum._('inactive');
const StudentListStatusEnum _$studentListStatusEnum_suspended =
    const StudentListStatusEnum._('suspended');

StudentListStatusEnum _$studentListStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$studentListStatusEnum_active;
    case 'inactive':
      return _$studentListStatusEnum_inactive;
    case 'suspended':
      return _$studentListStatusEnum_suspended;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StudentListStatusEnum> _$studentListStatusEnumValues =
    BuiltSet<StudentListStatusEnum>(const <StudentListStatusEnum>[
  _$studentListStatusEnum_active,
  _$studentListStatusEnum_inactive,
  _$studentListStatusEnum_suspended,
]);

Serializer<StudentListStatusEnum> _$studentListStatusEnumSerializer =
    _$StudentListStatusEnumSerializer();

class _$StudentListStatusEnumSerializer
    implements PrimitiveSerializer<StudentListStatusEnum> {
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
  final Iterable<Type> types = const <Type>[StudentListStatusEnum];
  @override
  final String wireName = 'StudentListStatusEnum';

  @override
  Object serialize(Serializers serializers, StudentListStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StudentListStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StudentListStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StudentList extends StudentList {
  @override
  final String studentId;
  @override
  final String schoolStudentId;
  @override
  final String decryptedName;
  @override
  final String grade;
  @override
  final String? section;
  @override
  final String primaryParentName;
  @override
  final String primaryParentPhone;
  @override
  final String busNumber;
  @override
  final StudentListStatusEnum? status;

  factory _$StudentList([void Function(StudentListBuilder)? updates]) =>
      (StudentListBuilder()..update(updates))._build();

  _$StudentList._(
      {required this.studentId,
      required this.schoolStudentId,
      required this.decryptedName,
      required this.grade,
      this.section,
      required this.primaryParentName,
      required this.primaryParentPhone,
      required this.busNumber,
      this.status})
      : super._();
  @override
  StudentList rebuild(void Function(StudentListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentListBuilder toBuilder() => StudentListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentList &&
        studentId == other.studentId &&
        schoolStudentId == other.schoolStudentId &&
        decryptedName == other.decryptedName &&
        grade == other.grade &&
        section == other.section &&
        primaryParentName == other.primaryParentName &&
        primaryParentPhone == other.primaryParentPhone &&
        busNumber == other.busNumber &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, studentId.hashCode);
    _$hash = $jc(_$hash, schoolStudentId.hashCode);
    _$hash = $jc(_$hash, decryptedName.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, section.hashCode);
    _$hash = $jc(_$hash, primaryParentName.hashCode);
    _$hash = $jc(_$hash, primaryParentPhone.hashCode);
    _$hash = $jc(_$hash, busNumber.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentList')
          ..add('studentId', studentId)
          ..add('schoolStudentId', schoolStudentId)
          ..add('decryptedName', decryptedName)
          ..add('grade', grade)
          ..add('section', section)
          ..add('primaryParentName', primaryParentName)
          ..add('primaryParentPhone', primaryParentPhone)
          ..add('busNumber', busNumber)
          ..add('status', status))
        .toString();
  }
}

class StudentListBuilder implements Builder<StudentList, StudentListBuilder> {
  _$StudentList? _$v;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  String? _schoolStudentId;
  String? get schoolStudentId => _$this._schoolStudentId;
  set schoolStudentId(String? schoolStudentId) =>
      _$this._schoolStudentId = schoolStudentId;

  String? _decryptedName;
  String? get decryptedName => _$this._decryptedName;
  set decryptedName(String? decryptedName) =>
      _$this._decryptedName = decryptedName;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _section;
  String? get section => _$this._section;
  set section(String? section) => _$this._section = section;

  String? _primaryParentName;
  String? get primaryParentName => _$this._primaryParentName;
  set primaryParentName(String? primaryParentName) =>
      _$this._primaryParentName = primaryParentName;

  String? _primaryParentPhone;
  String? get primaryParentPhone => _$this._primaryParentPhone;
  set primaryParentPhone(String? primaryParentPhone) =>
      _$this._primaryParentPhone = primaryParentPhone;

  String? _busNumber;
  String? get busNumber => _$this._busNumber;
  set busNumber(String? busNumber) => _$this._busNumber = busNumber;

  StudentListStatusEnum? _status;
  StudentListStatusEnum? get status => _$this._status;
  set status(StudentListStatusEnum? status) => _$this._status = status;

  StudentListBuilder() {
    StudentList._defaults(this);
  }

  StudentListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studentId = $v.studentId;
      _schoolStudentId = $v.schoolStudentId;
      _decryptedName = $v.decryptedName;
      _grade = $v.grade;
      _section = $v.section;
      _primaryParentName = $v.primaryParentName;
      _primaryParentPhone = $v.primaryParentPhone;
      _busNumber = $v.busNumber;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentList other) {
    _$v = other as _$StudentList;
  }

  @override
  void update(void Function(StudentListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentList build() => _build();

  _$StudentList _build() {
    final _$result = _$v ??
        _$StudentList._(
          studentId: BuiltValueNullFieldError.checkNotNull(
              studentId, r'StudentList', 'studentId'),
          schoolStudentId: BuiltValueNullFieldError.checkNotNull(
              schoolStudentId, r'StudentList', 'schoolStudentId'),
          decryptedName: BuiltValueNullFieldError.checkNotNull(
              decryptedName, r'StudentList', 'decryptedName'),
          grade: BuiltValueNullFieldError.checkNotNull(
              grade, r'StudentList', 'grade'),
          section: section,
          primaryParentName: BuiltValueNullFieldError.checkNotNull(
              primaryParentName, r'StudentList', 'primaryParentName'),
          primaryParentPhone: BuiltValueNullFieldError.checkNotNull(
              primaryParentPhone, r'StudentList', 'primaryParentPhone'),
          busNumber: BuiltValueNullFieldError.checkNotNull(
              busNumber, r'StudentList', 'busNumber'),
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
