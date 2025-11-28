// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_boarding_event_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedBoardingEventRequest extends PatchedBoardingEventRequest {
  @override
  final String? student;
  @override
  final String? kioskId;
  @override
  final double? confidenceScore;
  @override
  final DateTime? timestamp;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? busRoute;
  @override
  final String? faceImageUrl;
  @override
  final String? modelVersion;
  @override
  final JsonObject? metadata;

  factory _$PatchedBoardingEventRequest(
          [void Function(PatchedBoardingEventRequestBuilder)? updates]) =>
      (PatchedBoardingEventRequestBuilder()..update(updates))._build();

  _$PatchedBoardingEventRequest._(
      {this.student,
      this.kioskId,
      this.confidenceScore,
      this.timestamp,
      this.latitude,
      this.longitude,
      this.busRoute,
      this.faceImageUrl,
      this.modelVersion,
      this.metadata})
      : super._();
  @override
  PatchedBoardingEventRequest rebuild(
          void Function(PatchedBoardingEventRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedBoardingEventRequestBuilder toBuilder() =>
      PatchedBoardingEventRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedBoardingEventRequest &&
        student == other.student &&
        kioskId == other.kioskId &&
        confidenceScore == other.confidenceScore &&
        timestamp == other.timestamp &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        busRoute == other.busRoute &&
        faceImageUrl == other.faceImageUrl &&
        modelVersion == other.modelVersion &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, student.hashCode);
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, confidenceScore.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, busRoute.hashCode);
    _$hash = $jc(_$hash, faceImageUrl.hashCode);
    _$hash = $jc(_$hash, modelVersion.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedBoardingEventRequest')
          ..add('student', student)
          ..add('kioskId', kioskId)
          ..add('confidenceScore', confidenceScore)
          ..add('timestamp', timestamp)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('busRoute', busRoute)
          ..add('faceImageUrl', faceImageUrl)
          ..add('modelVersion', modelVersion)
          ..add('metadata', metadata))
        .toString();
  }
}

class PatchedBoardingEventRequestBuilder
    implements
        Builder<PatchedBoardingEventRequest,
            PatchedBoardingEventRequestBuilder> {
  _$PatchedBoardingEventRequest? _$v;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  double? _confidenceScore;
  double? get confidenceScore => _$this._confidenceScore;
  set confidenceScore(double? confidenceScore) =>
      _$this._confidenceScore = confidenceScore;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _busRoute;
  String? get busRoute => _$this._busRoute;
  set busRoute(String? busRoute) => _$this._busRoute = busRoute;

  String? _faceImageUrl;
  String? get faceImageUrl => _$this._faceImageUrl;
  set faceImageUrl(String? faceImageUrl) => _$this._faceImageUrl = faceImageUrl;

  String? _modelVersion;
  String? get modelVersion => _$this._modelVersion;
  set modelVersion(String? modelVersion) => _$this._modelVersion = modelVersion;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  PatchedBoardingEventRequestBuilder() {
    PatchedBoardingEventRequest._defaults(this);
  }

  PatchedBoardingEventRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _kioskId = $v.kioskId;
      _confidenceScore = $v.confidenceScore;
      _timestamp = $v.timestamp;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _busRoute = $v.busRoute;
      _faceImageUrl = $v.faceImageUrl;
      _modelVersion = $v.modelVersion;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedBoardingEventRequest other) {
    _$v = other as _$PatchedBoardingEventRequest;
  }

  @override
  void update(void Function(PatchedBoardingEventRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedBoardingEventRequest build() => _build();

  _$PatchedBoardingEventRequest _build() {
    final _$result = _$v ??
        _$PatchedBoardingEventRequest._(
          student: student,
          kioskId: kioskId,
          confidenceScore: confidenceScore,
          timestamp: timestamp,
          latitude: latitude,
          longitude: longitude,
          busRoute: busRoute,
          faceImageUrl: faceImageUrl,
          modelVersion: modelVersion,
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
