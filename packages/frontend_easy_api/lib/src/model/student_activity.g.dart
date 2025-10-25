// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StudentActivity extends StudentActivity {
  @override
  final String studentId;
  @override
  final String studentName;
  @override
  final String grade;
  @override
  final String? busNumber;
  @override
  final String? routeName;
  @override
  final BuiltList<BoardingEventNested> events;
  @override
  final int eventCount;

  factory _$StudentActivity([void Function(StudentActivityBuilder)? updates]) =>
      (StudentActivityBuilder()..update(updates))._build();

  _$StudentActivity._(
      {required this.studentId,
      required this.studentName,
      required this.grade,
      this.busNumber,
      this.routeName,
      required this.events,
      required this.eventCount})
      : super._();
  @override
  StudentActivity rebuild(void Function(StudentActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentActivityBuilder toBuilder() => StudentActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentActivity &&
        studentId == other.studentId &&
        studentName == other.studentName &&
        grade == other.grade &&
        busNumber == other.busNumber &&
        routeName == other.routeName &&
        events == other.events &&
        eventCount == other.eventCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, studentId.hashCode);
    _$hash = $jc(_$hash, studentName.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, busNumber.hashCode);
    _$hash = $jc(_$hash, routeName.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, eventCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentActivity')
          ..add('studentId', studentId)
          ..add('studentName', studentName)
          ..add('grade', grade)
          ..add('busNumber', busNumber)
          ..add('routeName', routeName)
          ..add('events', events)
          ..add('eventCount', eventCount))
        .toString();
  }
}

class StudentActivityBuilder
    implements Builder<StudentActivity, StudentActivityBuilder> {
  _$StudentActivity? _$v;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  String? _studentName;
  String? get studentName => _$this._studentName;
  set studentName(String? studentName) => _$this._studentName = studentName;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _busNumber;
  String? get busNumber => _$this._busNumber;
  set busNumber(String? busNumber) => _$this._busNumber = busNumber;

  String? _routeName;
  String? get routeName => _$this._routeName;
  set routeName(String? routeName) => _$this._routeName = routeName;

  ListBuilder<BoardingEventNested>? _events;
  ListBuilder<BoardingEventNested> get events =>
      _$this._events ??= ListBuilder<BoardingEventNested>();
  set events(ListBuilder<BoardingEventNested>? events) =>
      _$this._events = events;

  int? _eventCount;
  int? get eventCount => _$this._eventCount;
  set eventCount(int? eventCount) => _$this._eventCount = eventCount;

  StudentActivityBuilder() {
    StudentActivity._defaults(this);
  }

  StudentActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _studentId = $v.studentId;
      _studentName = $v.studentName;
      _grade = $v.grade;
      _busNumber = $v.busNumber;
      _routeName = $v.routeName;
      _events = $v.events.toBuilder();
      _eventCount = $v.eventCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentActivity other) {
    _$v = other as _$StudentActivity;
  }

  @override
  void update(void Function(StudentActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentActivity build() => _build();

  _$StudentActivity _build() {
    _$StudentActivity _$result;
    try {
      _$result = _$v ??
          _$StudentActivity._(
            studentId: BuiltValueNullFieldError.checkNotNull(
                studentId, r'StudentActivity', 'studentId'),
            studentName: BuiltValueNullFieldError.checkNotNull(
                studentName, r'StudentActivity', 'studentName'),
            grade: BuiltValueNullFieldError.checkNotNull(
                grade, r'StudentActivity', 'grade'),
            busNumber: busNumber,
            routeName: routeName,
            events: events.build(),
            eventCount: BuiltValueNullFieldError.checkNotNull(
                eventCount, r'StudentActivity', 'eventCount'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        events.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StudentActivity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
