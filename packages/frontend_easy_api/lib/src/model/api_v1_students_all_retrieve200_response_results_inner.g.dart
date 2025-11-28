// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_students_all_retrieve200_response_results_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1StudentsAllRetrieve200ResponseResultsInner
    extends ApiV1StudentsAllRetrieve200ResponseResultsInner {
  @override
  final String? schoolStudentId;
  @override
  final String? studentName;
  @override
  final String? grade;
  @override
  final String? busNumber;
  @override
  final String? routeName;
  @override
  final String? status;

  factory _$ApiV1StudentsAllRetrieve200ResponseResultsInner(
          [void Function(
                  ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder)?
              updates]) =>
      (ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder()
            ..update(updates))
          ._build();

  _$ApiV1StudentsAllRetrieve200ResponseResultsInner._(
      {this.schoolStudentId,
      this.studentName,
      this.grade,
      this.busNumber,
      this.routeName,
      this.status})
      : super._();
  @override
  ApiV1StudentsAllRetrieve200ResponseResultsInner rebuild(
          void Function(ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder toBuilder() =>
      ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1StudentsAllRetrieve200ResponseResultsInner &&
        schoolStudentId == other.schoolStudentId &&
        studentName == other.studentName &&
        grade == other.grade &&
        busNumber == other.busNumber &&
        routeName == other.routeName &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, schoolStudentId.hashCode);
    _$hash = $jc(_$hash, studentName.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, busNumber.hashCode);
    _$hash = $jc(_$hash, routeName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1StudentsAllRetrieve200ResponseResultsInner')
          ..add('schoolStudentId', schoolStudentId)
          ..add('studentName', studentName)
          ..add('grade', grade)
          ..add('busNumber', busNumber)
          ..add('routeName', routeName)
          ..add('status', status))
        .toString();
  }
}

class ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder
    implements
        Builder<ApiV1StudentsAllRetrieve200ResponseResultsInner,
            ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder> {
  _$ApiV1StudentsAllRetrieve200ResponseResultsInner? _$v;

  String? _schoolStudentId;
  String? get schoolStudentId => _$this._schoolStudentId;
  set schoolStudentId(String? schoolStudentId) =>
      _$this._schoolStudentId = schoolStudentId;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder() {
    ApiV1StudentsAllRetrieve200ResponseResultsInner._defaults(this);
  }

  ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _schoolStudentId = $v.schoolStudentId;
      _studentName = $v.studentName;
      _grade = $v.grade;
      _busNumber = $v.busNumber;
      _routeName = $v.routeName;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1StudentsAllRetrieve200ResponseResultsInner other) {
    _$v = other as _$ApiV1StudentsAllRetrieve200ResponseResultsInner;
  }

  @override
  void update(
      void Function(ApiV1StudentsAllRetrieve200ResponseResultsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1StudentsAllRetrieve200ResponseResultsInner build() => _build();

  _$ApiV1StudentsAllRetrieve200ResponseResultsInner _build() {
    final _$result = _$v ??
        _$ApiV1StudentsAllRetrieve200ResponseResultsInner._(
          schoolStudentId: schoolStudentId,
          studentName: studentName,
          grade: grade,
          busNumber: busNumber,
          routeName: routeName,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
