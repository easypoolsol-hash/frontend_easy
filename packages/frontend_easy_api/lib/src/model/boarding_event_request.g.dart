// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_event_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BoardingEventRequest extends BoardingEventRequest {
  @override
  final String? student;
  @override
  final String kioskId;
  @override
  final double confidenceScore;
  @override
  final DateTime timestamp;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? busRoute;
  @override
  final String? faceImageUrl;
  @override
  final String modelVersion;
  @override
  final JsonObject? metadata;

  factory _$BoardingEventRequest(
          [void Function(BoardingEventRequestBuilder)? updates]) =>
      (BoardingEventRequestBuilder()..update(updates))._build();

  _$BoardingEventRequest._(
      {this.student,
      required this.kioskId,
      required this.confidenceScore,
      required this.timestamp,
      this.latitude,
      this.longitude,
      this.busRoute,
      this.faceImageUrl,
      required this.modelVersion,
      this.metadata})
      : super._();
  @override
  BoardingEventRequest rebuild(
          void Function(BoardingEventRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoardingEventRequestBuilder toBuilder() =>
      BoardingEventRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoardingEventRequest &&
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
    return (newBuiltValueToStringHelper(r'BoardingEventRequest')
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

class BoardingEventRequestBuilder
    implements Builder<BoardingEventRequest, BoardingEventRequestBuilder> {
  _$BoardingEventRequest? _$v;

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

  BoardingEventRequestBuilder() {
    BoardingEventRequest._defaults(this);
  }

  BoardingEventRequestBuilder get _$this {
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
  void replace(BoardingEventRequest other) {
    _$v = other as _$BoardingEventRequest;
  }

  @override
  void update(void Function(BoardingEventRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoardingEventRequest build() => _build();

  _$BoardingEventRequest _build() {
    final _$result = _$v ??
        _$BoardingEventRequest._(
          student: student,
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'BoardingEventRequest', 'kioskId'),
          confidenceScore: BuiltValueNullFieldError.checkNotNull(
              confidenceScore, r'BoardingEventRequest', 'confidenceScore'),
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'BoardingEventRequest', 'timestamp'),
          latitude: latitude,
          longitude: longitude,
          busRoute: busRoute,
          faceImageUrl: faceImageUrl,
          modelVersion: BuiltValueNullFieldError.checkNotNull(
              modelVersion, r'BoardingEventRequest', 'modelVersion'),
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
