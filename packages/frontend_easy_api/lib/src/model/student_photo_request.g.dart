// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_photo_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StudentPhotoRequest extends StudentPhotoRequest {
  @override
  final String student;
  @override
  final String? photoContentType;
  @override
  final bool? isPrimary;
  @override
  final DateTime? capturedAt;

  factory _$StudentPhotoRequest(
          [void Function(StudentPhotoRequestBuilder)? updates]) =>
      (StudentPhotoRequestBuilder()..update(updates))._build();

  _$StudentPhotoRequest._(
      {required this.student,
      this.photoContentType,
      this.isPrimary,
      this.capturedAt})
      : super._();
  @override
  StudentPhotoRequest rebuild(
          void Function(StudentPhotoRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentPhotoRequestBuilder toBuilder() =>
      StudentPhotoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentPhotoRequest &&
        student == other.student &&
        photoContentType == other.photoContentType &&
        isPrimary == other.isPrimary &&
        capturedAt == other.capturedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, student.hashCode);
    _$hash = $jc(_$hash, photoContentType.hashCode);
    _$hash = $jc(_$hash, isPrimary.hashCode);
    _$hash = $jc(_$hash, capturedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentPhotoRequest')
          ..add('student', student)
          ..add('photoContentType', photoContentType)
          ..add('isPrimary', isPrimary)
          ..add('capturedAt', capturedAt))
        .toString();
  }
}

class StudentPhotoRequestBuilder
    implements Builder<StudentPhotoRequest, StudentPhotoRequestBuilder> {
  _$StudentPhotoRequest? _$v;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _photoContentType;
  String? get photoContentType => _$this._photoContentType;
  set photoContentType(String? photoContentType) =>
      _$this._photoContentType = photoContentType;

  bool? _isPrimary;
  bool? get isPrimary => _$this._isPrimary;
  set isPrimary(bool? isPrimary) => _$this._isPrimary = isPrimary;

  DateTime? _capturedAt;
  DateTime? get capturedAt => _$this._capturedAt;
  set capturedAt(DateTime? capturedAt) => _$this._capturedAt = capturedAt;

  StudentPhotoRequestBuilder() {
    StudentPhotoRequest._defaults(this);
  }

  StudentPhotoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _photoContentType = $v.photoContentType;
      _isPrimary = $v.isPrimary;
      _capturedAt = $v.capturedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentPhotoRequest other) {
    _$v = other as _$StudentPhotoRequest;
  }

  @override
  void update(void Function(StudentPhotoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentPhotoRequest build() => _build();

  _$StudentPhotoRequest _build() {
    final _$result = _$v ??
        _$StudentPhotoRequest._(
          student: BuiltValueNullFieldError.checkNotNull(
              student, r'StudentPhotoRequest', 'student'),
          photoContentType: photoContentType,
          isPrimary: isPrimary,
          capturedAt: capturedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
