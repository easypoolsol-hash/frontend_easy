// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student_photo_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedStudentPhotoRequest extends PatchedStudentPhotoRequest {
  @override
  final String? student;
  @override
  final String? photoContentType;
  @override
  final bool? isPrimary;
  @override
  final DateTime? capturedAt;

  factory _$PatchedStudentPhotoRequest(
          [void Function(PatchedStudentPhotoRequestBuilder)? updates]) =>
      (PatchedStudentPhotoRequestBuilder()..update(updates))._build();

  _$PatchedStudentPhotoRequest._(
      {this.student, this.photoContentType, this.isPrimary, this.capturedAt})
      : super._();
  @override
  PatchedStudentPhotoRequest rebuild(
          void Function(PatchedStudentPhotoRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedStudentPhotoRequestBuilder toBuilder() =>
      PatchedStudentPhotoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedStudentPhotoRequest &&
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
    return (newBuiltValueToStringHelper(r'PatchedStudentPhotoRequest')
          ..add('student', student)
          ..add('photoContentType', photoContentType)
          ..add('isPrimary', isPrimary)
          ..add('capturedAt', capturedAt))
        .toString();
  }
}

class PatchedStudentPhotoRequestBuilder
    implements
        Builder<PatchedStudentPhotoRequest, PatchedStudentPhotoRequestBuilder> {
  _$PatchedStudentPhotoRequest? _$v;

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

  PatchedStudentPhotoRequestBuilder() {
    PatchedStudentPhotoRequest._defaults(this);
  }

  PatchedStudentPhotoRequestBuilder get _$this {
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
  void replace(PatchedStudentPhotoRequest other) {
    _$v = other as _$PatchedStudentPhotoRequest;
  }

  @override
  void update(void Function(PatchedStudentPhotoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedStudentPhotoRequest build() => _build();

  _$PatchedStudentPhotoRequest _build() {
    final _$result = _$v ??
        _$PatchedStudentPhotoRequest._(
          student: student,
          photoContentType: photoContentType,
          isPrimary: isPrimary,
          capturedAt: capturedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
