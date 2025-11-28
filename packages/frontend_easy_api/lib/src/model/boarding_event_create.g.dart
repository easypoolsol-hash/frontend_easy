// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_event_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BoardingEventCreate extends BoardingEventCreate {
  @override
  final String eventId;
  @override
  final String? student;
  @override
  final String kioskId;
  @override
  final double confidenceScore;
  @override
  final DateTime timestamp;
  @override
  final String? busRoute;
  @override
  final String? faceImageUrl;
  @override
  final String modelVersion;
  @override
  final JsonObject? metadata;

  factory _$BoardingEventCreate(
          [void Function(BoardingEventCreateBuilder)? updates]) =>
      (BoardingEventCreateBuilder()..update(updates))._build();

  _$BoardingEventCreate._(
      {required this.eventId,
      this.student,
      required this.kioskId,
      required this.confidenceScore,
      required this.timestamp,
      this.busRoute,
      this.faceImageUrl,
      required this.modelVersion,
      this.metadata})
      : super._();
  @override
  BoardingEventCreate rebuild(
          void Function(BoardingEventCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoardingEventCreateBuilder toBuilder() =>
      BoardingEventCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoardingEventCreate &&
        eventId == other.eventId &&
        student == other.student &&
        kioskId == other.kioskId &&
        confidenceScore == other.confidenceScore &&
        timestamp == other.timestamp &&
        busRoute == other.busRoute &&
        faceImageUrl == other.faceImageUrl &&
        modelVersion == other.modelVersion &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, student.hashCode);
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, confidenceScore.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, busRoute.hashCode);
    _$hash = $jc(_$hash, faceImageUrl.hashCode);
    _$hash = $jc(_$hash, modelVersion.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BoardingEventCreate')
          ..add('eventId', eventId)
          ..add('student', student)
          ..add('kioskId', kioskId)
          ..add('confidenceScore', confidenceScore)
          ..add('timestamp', timestamp)
          ..add('busRoute', busRoute)
          ..add('faceImageUrl', faceImageUrl)
          ..add('modelVersion', modelVersion)
          ..add('metadata', metadata))
        .toString();
  }
}

class BoardingEventCreateBuilder
    implements Builder<BoardingEventCreate, BoardingEventCreateBuilder> {
  _$BoardingEventCreate? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

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

  BoardingEventCreateBuilder() {
    BoardingEventCreate._defaults(this);
  }

  BoardingEventCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _student = $v.student;
      _kioskId = $v.kioskId;
      _confidenceScore = $v.confidenceScore;
      _timestamp = $v.timestamp;
      _busRoute = $v.busRoute;
      _faceImageUrl = $v.faceImageUrl;
      _modelVersion = $v.modelVersion;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoardingEventCreate other) {
    _$v = other as _$BoardingEventCreate;
  }

  @override
  void update(void Function(BoardingEventCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoardingEventCreate build() => _build();

  _$BoardingEventCreate _build() {
    final _$result = _$v ??
        _$BoardingEventCreate._(
          eventId: BuiltValueNullFieldError.checkNotNull(
              eventId, r'BoardingEventCreate', 'eventId'),
          student: student,
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'BoardingEventCreate', 'kioskId'),
          confidenceScore: BuiltValueNullFieldError.checkNotNull(
              confidenceScore, r'BoardingEventCreate', 'confidenceScore'),
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'BoardingEventCreate', 'timestamp'),
          busRoute: busRoute,
          faceImageUrl: faceImageUrl,
          modelVersion: BuiltValueNullFieldError.checkNotNull(
              modelVersion, r'BoardingEventCreate', 'modelVersion'),
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
