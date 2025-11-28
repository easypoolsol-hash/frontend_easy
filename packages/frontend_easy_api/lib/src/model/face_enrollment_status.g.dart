// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_enrollment_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FaceEnrollmentStatusStatusEnum
    _$faceEnrollmentStatusStatusEnum_pendingApproval =
    const FaceEnrollmentStatusStatusEnum._('pendingApproval');
const FaceEnrollmentStatusStatusEnum _$faceEnrollmentStatusStatusEnum_approved =
    const FaceEnrollmentStatusStatusEnum._('approved');
const FaceEnrollmentStatusStatusEnum _$faceEnrollmentStatusStatusEnum_rejected =
    const FaceEnrollmentStatusStatusEnum._('rejected');

FaceEnrollmentStatusStatusEnum _$faceEnrollmentStatusStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'pendingApproval':
      return _$faceEnrollmentStatusStatusEnum_pendingApproval;
    case 'approved':
      return _$faceEnrollmentStatusStatusEnum_approved;
    case 'rejected':
      return _$faceEnrollmentStatusStatusEnum_rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FaceEnrollmentStatusStatusEnum>
    _$faceEnrollmentStatusStatusEnumValues = BuiltSet<
        FaceEnrollmentStatusStatusEnum>(const <FaceEnrollmentStatusStatusEnum>[
  _$faceEnrollmentStatusStatusEnum_pendingApproval,
  _$faceEnrollmentStatusStatusEnum_approved,
  _$faceEnrollmentStatusStatusEnum_rejected,
]);

Serializer<FaceEnrollmentStatusStatusEnum>
    _$faceEnrollmentStatusStatusEnumSerializer =
    _$FaceEnrollmentStatusStatusEnumSerializer();

class _$FaceEnrollmentStatusStatusEnumSerializer
    implements PrimitiveSerializer<FaceEnrollmentStatusStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pendingApproval': 'pending_approval',
    'approved': 'approved',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending_approval': 'pendingApproval',
    'approved': 'approved',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[FaceEnrollmentStatusStatusEnum];
  @override
  final String wireName = 'FaceEnrollmentStatusStatusEnum';

  @override
  Object serialize(
          Serializers serializers, FaceEnrollmentStatusStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FaceEnrollmentStatusStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FaceEnrollmentStatusStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FaceEnrollmentStatus extends FaceEnrollmentStatus {
  @override
  final String enrollmentId;
  @override
  final FaceEnrollmentStatusStatusEnum status;
  @override
  final int photoCount;
  @override
  final DateTime submittedAt;
  @override
  final DateTime? reviewedAt;

  factory _$FaceEnrollmentStatus(
          [void Function(FaceEnrollmentStatusBuilder)? updates]) =>
      (FaceEnrollmentStatusBuilder()..update(updates))._build();

  _$FaceEnrollmentStatus._(
      {required this.enrollmentId,
      required this.status,
      required this.photoCount,
      required this.submittedAt,
      this.reviewedAt})
      : super._();
  @override
  FaceEnrollmentStatus rebuild(
          void Function(FaceEnrollmentStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FaceEnrollmentStatusBuilder toBuilder() =>
      FaceEnrollmentStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FaceEnrollmentStatus &&
        enrollmentId == other.enrollmentId &&
        status == other.status &&
        photoCount == other.photoCount &&
        submittedAt == other.submittedAt &&
        reviewedAt == other.reviewedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enrollmentId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, photoCount.hashCode);
    _$hash = $jc(_$hash, submittedAt.hashCode);
    _$hash = $jc(_$hash, reviewedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FaceEnrollmentStatus')
          ..add('enrollmentId', enrollmentId)
          ..add('status', status)
          ..add('photoCount', photoCount)
          ..add('submittedAt', submittedAt)
          ..add('reviewedAt', reviewedAt))
        .toString();
  }
}

class FaceEnrollmentStatusBuilder
    implements Builder<FaceEnrollmentStatus, FaceEnrollmentStatusBuilder> {
  _$FaceEnrollmentStatus? _$v;

  String? _enrollmentId;
  String? get enrollmentId => _$this._enrollmentId;
  set enrollmentId(String? enrollmentId) => _$this._enrollmentId = enrollmentId;

  FaceEnrollmentStatusStatusEnum? _status;
  FaceEnrollmentStatusStatusEnum? get status => _$this._status;
  set status(FaceEnrollmentStatusStatusEnum? status) => _$this._status = status;

  int? _photoCount;
  int? get photoCount => _$this._photoCount;
  set photoCount(int? photoCount) => _$this._photoCount = photoCount;

  DateTime? _submittedAt;
  DateTime? get submittedAt => _$this._submittedAt;
  set submittedAt(DateTime? submittedAt) => _$this._submittedAt = submittedAt;

  DateTime? _reviewedAt;
  DateTime? get reviewedAt => _$this._reviewedAt;
  set reviewedAt(DateTime? reviewedAt) => _$this._reviewedAt = reviewedAt;

  FaceEnrollmentStatusBuilder() {
    FaceEnrollmentStatus._defaults(this);
  }

  FaceEnrollmentStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enrollmentId = $v.enrollmentId;
      _status = $v.status;
      _photoCount = $v.photoCount;
      _submittedAt = $v.submittedAt;
      _reviewedAt = $v.reviewedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FaceEnrollmentStatus other) {
    _$v = other as _$FaceEnrollmentStatus;
  }

  @override
  void update(void Function(FaceEnrollmentStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FaceEnrollmentStatus build() => _build();

  _$FaceEnrollmentStatus _build() {
    final _$result = _$v ??
        _$FaceEnrollmentStatus._(
          enrollmentId: BuiltValueNullFieldError.checkNotNull(
              enrollmentId, r'FaceEnrollmentStatus', 'enrollmentId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'FaceEnrollmentStatus', 'status'),
          photoCount: BuiltValueNullFieldError.checkNotNull(
              photoCount, r'FaceEnrollmentStatus', 'photoCount'),
          submittedAt: BuiltValueNullFieldError.checkNotNull(
              submittedAt, r'FaceEnrollmentStatus', 'submittedAt'),
          reviewedAt: reviewedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
