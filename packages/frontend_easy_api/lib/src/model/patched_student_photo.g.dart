// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student_photo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedStudentPhoto extends PatchedStudentPhoto {
  @override
  final String? photoId;
  @override
  final String? student;
  @override
  final String? photo;
  @override
  final bool? isPrimary;
  @override
  final DateTime? capturedAt;
  @override
  final String? studentDetails;
  @override
  final DateTime? createdAt;

  factory _$PatchedStudentPhoto(
          [void Function(PatchedStudentPhotoBuilder)? updates]) =>
      (PatchedStudentPhotoBuilder()..update(updates))._build();

  _$PatchedStudentPhoto._(
      {this.photoId,
      this.student,
      this.photo,
      this.isPrimary,
      this.capturedAt,
      this.studentDetails,
      this.createdAt})
      : super._();
  @override
  PatchedStudentPhoto rebuild(
          void Function(PatchedStudentPhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedStudentPhotoBuilder toBuilder() =>
      PatchedStudentPhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedStudentPhoto &&
        photoId == other.photoId &&
        student == other.student &&
        photo == other.photo &&
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
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, isPrimary.hashCode);
    _$hash = $jc(_$hash, capturedAt.hashCode);
    _$hash = $jc(_$hash, studentDetails.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedStudentPhoto')
          ..add('photoId', photoId)
          ..add('student', student)
          ..add('photo', photo)
          ..add('isPrimary', isPrimary)
          ..add('capturedAt', capturedAt)
          ..add('studentDetails', studentDetails)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class PatchedStudentPhotoBuilder
    implements Builder<PatchedStudentPhoto, PatchedStudentPhotoBuilder> {
  _$PatchedStudentPhoto? _$v;

  String? _photoId;
  String? get photoId => _$this._photoId;
  set photoId(String? photoId) => _$this._photoId = photoId;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

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

  PatchedStudentPhotoBuilder() {
    PatchedStudentPhoto._defaults(this);
  }

  PatchedStudentPhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photoId = $v.photoId;
      _student = $v.student;
      _photo = $v.photo;
      _isPrimary = $v.isPrimary;
      _capturedAt = $v.capturedAt;
      _studentDetails = $v.studentDetails;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedStudentPhoto other) {
    _$v = other as _$PatchedStudentPhoto;
  }

  @override
  void update(void Function(PatchedStudentPhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedStudentPhoto build() => _build();

  _$PatchedStudentPhoto _build() {
    final _$result = _$v ??
        _$PatchedStudentPhoto._(
          photoId: photoId,
          student: student,
          photo: photo,
          isPrimary: isPrimary,
          capturedAt: capturedAt,
          studentDetails: studentDetails,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
