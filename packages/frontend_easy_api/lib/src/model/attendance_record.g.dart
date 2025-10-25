// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AttendanceRecordStatusEnum _$attendanceRecordStatusEnum_present =
    const AttendanceRecordStatusEnum._('present');
const AttendanceRecordStatusEnum _$attendanceRecordStatusEnum_absent =
    const AttendanceRecordStatusEnum._('absent');
const AttendanceRecordStatusEnum _$attendanceRecordStatusEnum_partial =
    const AttendanceRecordStatusEnum._('partial');

AttendanceRecordStatusEnum _$attendanceRecordStatusEnumValueOf(String name) {
  switch (name) {
    case 'present':
      return _$attendanceRecordStatusEnum_present;
    case 'absent':
      return _$attendanceRecordStatusEnum_absent;
    case 'partial':
      return _$attendanceRecordStatusEnum_partial;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AttendanceRecordStatusEnum> _$attendanceRecordStatusEnumValues =
    BuiltSet<AttendanceRecordStatusEnum>(const <AttendanceRecordStatusEnum>[
  _$attendanceRecordStatusEnum_present,
  _$attendanceRecordStatusEnum_absent,
  _$attendanceRecordStatusEnum_partial,
]);

Serializer<AttendanceRecordStatusEnum> _$attendanceRecordStatusEnumSerializer =
    _$AttendanceRecordStatusEnumSerializer();

class _$AttendanceRecordStatusEnumSerializer
    implements PrimitiveSerializer<AttendanceRecordStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'present': 'present',
    'absent': 'absent',
    'partial': 'partial',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'present': 'present',
    'absent': 'absent',
    'partial': 'partial',
  };

  @override
  final Iterable<Type> types = const <Type>[AttendanceRecordStatusEnum];
  @override
  final String wireName = 'AttendanceRecordStatusEnum';

  @override
  Object serialize(Serializers serializers, AttendanceRecordStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AttendanceRecordStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AttendanceRecordStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AttendanceRecord extends AttendanceRecord {
  @override
  final String recordId;
  @override
  final String student;
  @override
  final String studentName;
  @override
  final String studentGrade;
  @override
  final Date date;
  @override
  final bool? morningBoarded;
  @override
  final DateTime? morningTime;
  @override
  final bool? afternoonBoarded;
  @override
  final DateTime? afternoonTime;
  @override
  final AttendanceRecordStatusEnum status;
  @override
  final DateTime createdAt;

  factory _$AttendanceRecord(
          [void Function(AttendanceRecordBuilder)? updates]) =>
      (AttendanceRecordBuilder()..update(updates))._build();

  _$AttendanceRecord._(
      {required this.recordId,
      required this.student,
      required this.studentName,
      required this.studentGrade,
      required this.date,
      this.morningBoarded,
      this.morningTime,
      this.afternoonBoarded,
      this.afternoonTime,
      required this.status,
      required this.createdAt})
      : super._();
  @override
  AttendanceRecord rebuild(void Function(AttendanceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendanceRecordBuilder toBuilder() =>
      AttendanceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttendanceRecord &&
        recordId == other.recordId &&
        student == other.student &&
        studentName == other.studentName &&
        studentGrade == other.studentGrade &&
        date == other.date &&
        morningBoarded == other.morningBoarded &&
        morningTime == other.morningTime &&
        afternoonBoarded == other.afternoonBoarded &&
        afternoonTime == other.afternoonTime &&
        status == other.status &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recordId.hashCode);
    _$hash = $jc(_$hash, student.hashCode);
    _$hash = $jc(_$hash, studentName.hashCode);
    _$hash = $jc(_$hash, studentGrade.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, morningBoarded.hashCode);
    _$hash = $jc(_$hash, morningTime.hashCode);
    _$hash = $jc(_$hash, afternoonBoarded.hashCode);
    _$hash = $jc(_$hash, afternoonTime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttendanceRecord')
          ..add('recordId', recordId)
          ..add('student', student)
          ..add('studentName', studentName)
          ..add('studentGrade', studentGrade)
          ..add('date', date)
          ..add('morningBoarded', morningBoarded)
          ..add('morningTime', morningTime)
          ..add('afternoonBoarded', afternoonBoarded)
          ..add('afternoonTime', afternoonTime)
          ..add('status', status)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class AttendanceRecordBuilder
    implements Builder<AttendanceRecord, AttendanceRecordBuilder> {
  _$AttendanceRecord? _$v;

  String? _recordId;
  String? get recordId => _$this._recordId;
  set recordId(String? recordId) => _$this._recordId = recordId;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _studentName;
  String? get studentName => _$this._studentName;
  set studentName(String? studentName) => _$this._studentName = studentName;

  String? _studentGrade;
  String? get studentGrade => _$this._studentGrade;
  set studentGrade(String? studentGrade) => _$this._studentGrade = studentGrade;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  bool? _morningBoarded;
  bool? get morningBoarded => _$this._morningBoarded;
  set morningBoarded(bool? morningBoarded) =>
      _$this._morningBoarded = morningBoarded;

  DateTime? _morningTime;
  DateTime? get morningTime => _$this._morningTime;
  set morningTime(DateTime? morningTime) => _$this._morningTime = morningTime;

  bool? _afternoonBoarded;
  bool? get afternoonBoarded => _$this._afternoonBoarded;
  set afternoonBoarded(bool? afternoonBoarded) =>
      _$this._afternoonBoarded = afternoonBoarded;

  DateTime? _afternoonTime;
  DateTime? get afternoonTime => _$this._afternoonTime;
  set afternoonTime(DateTime? afternoonTime) =>
      _$this._afternoonTime = afternoonTime;

  AttendanceRecordStatusEnum? _status;
  AttendanceRecordStatusEnum? get status => _$this._status;
  set status(AttendanceRecordStatusEnum? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  AttendanceRecordBuilder() {
    AttendanceRecord._defaults(this);
  }

  AttendanceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recordId = $v.recordId;
      _student = $v.student;
      _studentName = $v.studentName;
      _studentGrade = $v.studentGrade;
      _date = $v.date;
      _morningBoarded = $v.morningBoarded;
      _morningTime = $v.morningTime;
      _afternoonBoarded = $v.afternoonBoarded;
      _afternoonTime = $v.afternoonTime;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttendanceRecord other) {
    _$v = other as _$AttendanceRecord;
  }

  @override
  void update(void Function(AttendanceRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttendanceRecord build() => _build();

  _$AttendanceRecord _build() {
    final _$result = _$v ??
        _$AttendanceRecord._(
          recordId: BuiltValueNullFieldError.checkNotNull(
              recordId, r'AttendanceRecord', 'recordId'),
          student: BuiltValueNullFieldError.checkNotNull(
              student, r'AttendanceRecord', 'student'),
          studentName: BuiltValueNullFieldError.checkNotNull(
              studentName, r'AttendanceRecord', 'studentName'),
          studentGrade: BuiltValueNullFieldError.checkNotNull(
              studentGrade, r'AttendanceRecord', 'studentGrade'),
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'AttendanceRecord', 'date'),
          morningBoarded: morningBoarded,
          morningTime: morningTime,
          afternoonBoarded: afternoonBoarded,
          afternoonTime: afternoonTime,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'AttendanceRecord', 'status'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'AttendanceRecord', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
