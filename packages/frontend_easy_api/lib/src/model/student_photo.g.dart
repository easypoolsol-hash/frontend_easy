// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_photo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StudentPhoto extends StudentPhoto {
  @override
  final String photoId;
  @override
  final String student;
  @override
  final String photoUrl;
  @override
  final String? photoContentType;
  @override
  final bool? isPrimary;
  @override
  final DateTime? capturedAt;
  @override
  final String studentDetails;
  @override
  final DateTime createdAt;

  factory _$StudentPhoto([void Function(StudentPhotoBuilder)? updates]) =>
      (StudentPhotoBuilder()..update(updates))._build();

  _$StudentPhoto._(
      {required this.photoId,
      required this.student,
      required this.photoUrl,
      this.photoContentType,
      this.isPrimary,
      this.capturedAt,
      required this.studentDetails,
      required this.createdAt})
      : super._();
  @override
  StudentPhoto rebuild(void Function(StudentPhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentPhotoBuilder toBuilder() => StudentPhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentPhoto &&
        photoId == other.photoId &&
        student == other.student &&
        photoUrl == other.photoUrl &&
        photoContentType == other.photoContentType &&
        isPrimary == other.isPrimary &&
        capturedAt == other.capturedAt &&
        studentDetails == other.studentDetails &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, photoId.hashCode);
    _$hash = $jc(_$hash, student.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, photoContentType.hashCode);
    _$hash = $jc(_$hash, isPrimary.hashCode);
    _$hash = $jc(_$hash, capturedAt.hashCode);
    _$hash = $jc(_$hash, studentDetails.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentPhoto')
          ..add('photoId', photoId)
          ..add('student', student)
          ..add('photoUrl', photoUrl)
          ..add('photoContentType', photoContentType)
          ..add('isPrimary', isPrimary)
          ..add('capturedAt', capturedAt)
          ..add('studentDetails', studentDetails)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class StudentPhotoBuilder
    implements Builder<StudentPhoto, StudentPhotoBuilder> {
  _$StudentPhoto? _$v;

  String? _photoId;
  String? get photoId => _$this._photoId;
  set photoId(String? photoId) => _$this._photoId = photoId;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

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

  String? _studentDetails;
  String? get studentDetails => _$this._studentDetails;
  set studentDetails(String? studentDetails) =>
      _$this._studentDetails = studentDetails;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  StudentPhotoBuilder() {
    StudentPhoto._defaults(this);
  }

  StudentPhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photoId = $v.photoId;
      _student = $v.student;
      _photoUrl = $v.photoUrl;
      _photoContentType = $v.photoContentType;
      _isPrimary = $v.isPrimary;
      _capturedAt = $v.capturedAt;
      _studentDetails = $v.studentDetails;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentPhoto other) {
    _$v = other as _$StudentPhoto;
  }

  @override
  void update(void Function(StudentPhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentPhoto build() => _build();

  _$StudentPhoto _build() {
    final _$result = _$v ??
        _$StudentPhoto._(
          photoId: BuiltValueNullFieldError.checkNotNull(
              photoId, r'StudentPhoto', 'photoId'),
          student: BuiltValueNullFieldError.checkNotNull(
              student, r'StudentPhoto', 'student'),
          photoUrl: BuiltValueNullFieldError.checkNotNull(
              photoUrl, r'StudentPhoto', 'photoUrl'),
          photoContentType: photoContentType,
          isPrimary: isPrimary,
          capturedAt: capturedAt,
          studentDetails: BuiltValueNullFieldError.checkNotNull(
              studentDetails, r'StudentPhoto', 'studentDetails'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'StudentPhoto', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
