// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_enrollment_submission_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FaceEnrollmentSubmissionRequest
    extends FaceEnrollmentSubmissionRequest {
  @override
  final BuiltList<String> photos;
  @override
  final JsonObject? deviceInfo;

  factory _$FaceEnrollmentSubmissionRequest(
          [void Function(FaceEnrollmentSubmissionRequestBuilder)? updates]) =>
      (FaceEnrollmentSubmissionRequestBuilder()..update(updates))._build();

  _$FaceEnrollmentSubmissionRequest._({required this.photos, this.deviceInfo})
      : super._();
  @override
  FaceEnrollmentSubmissionRequest rebuild(
          void Function(FaceEnrollmentSubmissionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FaceEnrollmentSubmissionRequestBuilder toBuilder() =>
      FaceEnrollmentSubmissionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FaceEnrollmentSubmissionRequest &&
        photos == other.photos &&
        deviceInfo == other.deviceInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, photos.hashCode);
    _$hash = $jc(_$hash, deviceInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FaceEnrollmentSubmissionRequest')
          ..add('photos', photos)
          ..add('deviceInfo', deviceInfo))
        .toString();
  }
}

class FaceEnrollmentSubmissionRequestBuilder
    implements
        Builder<FaceEnrollmentSubmissionRequest,
            FaceEnrollmentSubmissionRequestBuilder> {
  _$FaceEnrollmentSubmissionRequest? _$v;

  ListBuilder<String>? _photos;
  ListBuilder<String> get photos => _$this._photos ??= ListBuilder<String>();
  set photos(ListBuilder<String>? photos) => _$this._photos = photos;

  JsonObject? _deviceInfo;
  JsonObject? get deviceInfo => _$this._deviceInfo;
  set deviceInfo(JsonObject? deviceInfo) => _$this._deviceInfo = deviceInfo;

  FaceEnrollmentSubmissionRequestBuilder() {
    FaceEnrollmentSubmissionRequest._defaults(this);
  }

  FaceEnrollmentSubmissionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photos = $v.photos.toBuilder();
      _deviceInfo = $v.deviceInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FaceEnrollmentSubmissionRequest other) {
    _$v = other as _$FaceEnrollmentSubmissionRequest;
  }

  @override
  void update(void Function(FaceEnrollmentSubmissionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FaceEnrollmentSubmissionRequest build() => _build();

  _$FaceEnrollmentSubmissionRequest _build() {
    _$FaceEnrollmentSubmissionRequest _$result;
    try {
      _$result = _$v ??
          _$FaceEnrollmentSubmissionRequest._(
            photos: photos.build(),
            deviceInfo: deviceInfo,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'photos';
        photos.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FaceEnrollmentSubmissionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
