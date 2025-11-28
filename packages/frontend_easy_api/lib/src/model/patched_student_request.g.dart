// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_student_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchedStudentRequestStatusEnum _$patchedStudentRequestStatusEnum_active =
    const PatchedStudentRequestStatusEnum._('active');
const PatchedStudentRequestStatusEnum
    _$patchedStudentRequestStatusEnum_inactive =
    const PatchedStudentRequestStatusEnum._('inactive');
const PatchedStudentRequestStatusEnum
    _$patchedStudentRequestStatusEnum_suspended =
    const PatchedStudentRequestStatusEnum._('suspended');

PatchedStudentRequestStatusEnum _$patchedStudentRequestStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'active':
      return _$patchedStudentRequestStatusEnum_active;
    case 'inactive':
      return _$patchedStudentRequestStatusEnum_inactive;
    case 'suspended':
      return _$patchedStudentRequestStatusEnum_suspended;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchedStudentRequestStatusEnum>
    _$patchedStudentRequestStatusEnumValues = BuiltSet<
        PatchedStudentRequestStatusEnum>(const <PatchedStudentRequestStatusEnum>[
  _$patchedStudentRequestStatusEnum_active,
  _$patchedStudentRequestStatusEnum_inactive,
  _$patchedStudentRequestStatusEnum_suspended,
]);

Serializer<PatchedStudentRequestStatusEnum>
    _$patchedStudentRequestStatusEnumSerializer =
    _$PatchedStudentRequestStatusEnumSerializer();

class _$PatchedStudentRequestStatusEnumSerializer
    implements PrimitiveSerializer<PatchedStudentRequestStatusEnum> {
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
  final Iterable<Type> types = const <Type>[PatchedStudentRequestStatusEnum];
  @override
  final String wireName = 'PatchedStudentRequestStatusEnum';

  @override
  Object serialize(
          Serializers serializers, PatchedStudentRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchedStudentRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatchedStudentRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatchedStudentRequest extends PatchedStudentRequest {
  @override
  final String? school;
  @override
  final String? schoolStudentId;
  @override
  final String? grade;
  @override
  final String? section;
  @override
  final double? addressLatitude;
  @override
  final double? addressLongitude;
  @override
  final String? assignedBus;
  @override
  final PatchedStudentRequestStatusEnum? status;
  @override
  final Date? enrollmentDate;

  factory _$PatchedStudentRequest(
          [void Function(PatchedStudentRequestBuilder)? updates]) =>
      (PatchedStudentRequestBuilder()..update(updates))._build();

  _$PatchedStudentRequest._(
      {this.school,
      this.schoolStudentId,
      this.grade,
      this.section,
      this.addressLatitude,
      this.addressLongitude,
      this.assignedBus,
      this.status,
      this.enrollmentDate})
      : super._();
  @override
  PatchedStudentRequest rebuild(
          void Function(PatchedStudentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedStudentRequestBuilder toBuilder() =>
      PatchedStudentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedStudentRequest &&
        school == other.school &&
        schoolStudentId == other.schoolStudentId &&
        grade == other.grade &&
        section == other.section &&
        addressLatitude == other.addressLatitude &&
        addressLongitude == other.addressLongitude &&
        assignedBus == other.assignedBus &&
        status == other.status &&
        enrollmentDate == other.enrollmentDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, school.hashCode);
    _$hash = $jc(_$hash, schoolStudentId.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, section.hashCode);
    _$hash = $jc(_$hash, addressLatitude.hashCode);
    _$hash = $jc(_$hash, addressLongitude.hashCode);
    _$hash = $jc(_$hash, assignedBus.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, enrollmentDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedStudentRequest')
          ..add('school', school)
          ..add('schoolStudentId', schoolStudentId)
          ..add('grade', grade)
          ..add('section', section)
          ..add('addressLatitude', addressLatitude)
          ..add('addressLongitude', addressLongitude)
          ..add('assignedBus', assignedBus)
          ..add('status', status)
          ..add('enrollmentDate', enrollmentDate))
        .toString();
  }
}

class PatchedStudentRequestBuilder
    implements Builder<PatchedStudentRequest, PatchedStudentRequestBuilder> {
  _$PatchedStudentRequest? _$v;

  String? _school;
  String? get school => _$this._school;
  set school(String? school) => _$this._school = school;

  String? _schoolStudentId;
  String? get schoolStudentId => _$this._schoolStudentId;
  set schoolStudentId(String? schoolStudentId) =>
      _$this._schoolStudentId = schoolStudentId;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _section;
  String? get section => _$this._section;
  set section(String? section) => _$this._section = section;

  double? _addressLatitude;
  double? get addressLatitude => _$this._addressLatitude;
  set addressLatitude(double? addressLatitude) =>
      _$this._addressLatitude = addressLatitude;

  double? _addressLongitude;
  double? get addressLongitude => _$this._addressLongitude;
  set addressLongitude(double? addressLongitude) =>
      _$this._addressLongitude = addressLongitude;

  String? _assignedBus;
  String? get assignedBus => _$this._assignedBus;
  set assignedBus(String? assignedBus) => _$this._assignedBus = assignedBus;

  PatchedStudentRequestStatusEnum? _status;
  PatchedStudentRequestStatusEnum? get status => _$this._status;
  set status(PatchedStudentRequestStatusEnum? status) =>
      _$this._status = status;

  Date? _enrollmentDate;
  Date? get enrollmentDate => _$this._enrollmentDate;
  set enrollmentDate(Date? enrollmentDate) =>
      _$this._enrollmentDate = enrollmentDate;

  PatchedStudentRequestBuilder() {
    PatchedStudentRequest._defaults(this);
  }

  PatchedStudentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _school = $v.school;
      _schoolStudentId = $v.schoolStudentId;
      _grade = $v.grade;
      _section = $v.section;
      _addressLatitude = $v.addressLatitude;
      _addressLongitude = $v.addressLongitude;
      _assignedBus = $v.assignedBus;
      _status = $v.status;
      _enrollmentDate = $v.enrollmentDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedStudentRequest other) {
    _$v = other as _$PatchedStudentRequest;
  }

  @override
  void update(void Function(PatchedStudentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedStudentRequest build() => _build();

  _$PatchedStudentRequest _build() {
    final _$result = _$v ??
        _$PatchedStudentRequest._(
          school: school,
          schoolStudentId: schoolStudentId,
          grade: grade,
          section: section,
          addressLatitude: addressLatitude,
          addressLongitude: addressLongitude,
          assignedBus: assignedBus,
          status: status,
          enrollmentDate: enrollmentDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
