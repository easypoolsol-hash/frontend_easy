// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_event_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BoardingEventCreateRequest extends BoardingEventCreateRequest {
  @override
  final String? student;
  @override
  final String kioskId;
  @override
  final double confidenceScore;
  @override
  final DateTime timestamp;
  @override
  final BuiltList<double>? gpsCoords;
  @override
  final String? busRoute;
  @override
  final String? faceImageUrl;
  @override
  final String modelVersion;
  @override
  final JsonObject? metadata;
  @override
  final BuiltList<String>? confirmationFacesBase64;

  factory _$BoardingEventCreateRequest(
          [void Function(BoardingEventCreateRequestBuilder)? updates]) =>
      (BoardingEventCreateRequestBuilder()..update(updates))._build();

  _$BoardingEventCreateRequest._(
      {this.student,
      required this.kioskId,
      required this.confidenceScore,
      required this.timestamp,
      this.gpsCoords,
      this.busRoute,
      this.faceImageUrl,
      required this.modelVersion,
      this.metadata,
      this.confirmationFacesBase64})
      : super._();
  @override
  BoardingEventCreateRequest rebuild(
          void Function(BoardingEventCreateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoardingEventCreateRequestBuilder toBuilder() =>
      BoardingEventCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoardingEventCreateRequest &&
        student == other.student &&
        kioskId == other.kioskId &&
        confidenceScore == other.confidenceScore &&
        timestamp == other.timestamp &&
        gpsCoords == other.gpsCoords &&
        busRoute == other.busRoute &&
        faceImageUrl == other.faceImageUrl &&
        modelVersion == other.modelVersion &&
        metadata == other.metadata &&
        confirmationFacesBase64 == other.confirmationFacesBase64;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, student.hashCode);
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, confidenceScore.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, gpsCoords.hashCode);
    _$hash = $jc(_$hash, busRoute.hashCode);
    _$hash = $jc(_$hash, faceImageUrl.hashCode);
    _$hash = $jc(_$hash, modelVersion.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, confirmationFacesBase64.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BoardingEventCreateRequest')
          ..add('student', student)
          ..add('kioskId', kioskId)
          ..add('confidenceScore', confidenceScore)
          ..add('timestamp', timestamp)
          ..add('gpsCoords', gpsCoords)
          ..add('busRoute', busRoute)
          ..add('faceImageUrl', faceImageUrl)
          ..add('modelVersion', modelVersion)
          ..add('metadata', metadata)
          ..add('confirmationFacesBase64', confirmationFacesBase64))
        .toString();
  }
}

class BoardingEventCreateRequestBuilder
    implements
        Builder<BoardingEventCreateRequest, BoardingEventCreateRequestBuilder> {
  _$BoardingEventCreateRequest? _$v;

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

  ListBuilder<double>? _gpsCoords;
  ListBuilder<double> get gpsCoords =>
      _$this._gpsCoords ??= ListBuilder<double>();
  set gpsCoords(ListBuilder<double>? gpsCoords) =>
      _$this._gpsCoords = gpsCoords;

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

  ListBuilder<String>? _confirmationFacesBase64;
  ListBuilder<String> get confirmationFacesBase64 =>
      _$this._confirmationFacesBase64 ??= ListBuilder<String>();
  set confirmationFacesBase64(ListBuilder<String>? confirmationFacesBase64) =>
      _$this._confirmationFacesBase64 = confirmationFacesBase64;

  BoardingEventCreateRequestBuilder() {
    BoardingEventCreateRequest._defaults(this);
  }

  BoardingEventCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _kioskId = $v.kioskId;
      _confidenceScore = $v.confidenceScore;
      _timestamp = $v.timestamp;
      _gpsCoords = $v.gpsCoords?.toBuilder();
      _busRoute = $v.busRoute;
      _faceImageUrl = $v.faceImageUrl;
      _modelVersion = $v.modelVersion;
      _metadata = $v.metadata;
      _confirmationFacesBase64 = $v.confirmationFacesBase64?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoardingEventCreateRequest other) {
    _$v = other as _$BoardingEventCreateRequest;
  }

  @override
  void update(void Function(BoardingEventCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoardingEventCreateRequest build() => _build();

  _$BoardingEventCreateRequest _build() {
    _$BoardingEventCreateRequest _$result;
    try {
      _$result = _$v ??
          _$BoardingEventCreateRequest._(
            student: student,
            kioskId: BuiltValueNullFieldError.checkNotNull(
                kioskId, r'BoardingEventCreateRequest', 'kioskId'),
            confidenceScore: BuiltValueNullFieldError.checkNotNull(
                confidenceScore,
                r'BoardingEventCreateRequest',
                'confidenceScore'),
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'BoardingEventCreateRequest', 'timestamp'),
            gpsCoords: _gpsCoords?.build(),
            busRoute: busRoute,
            faceImageUrl: faceImageUrl,
            modelVersion: BuiltValueNullFieldError.checkNotNull(
                modelVersion, r'BoardingEventCreateRequest', 'modelVersion'),
            metadata: metadata,
            confirmationFacesBase64: _confirmationFacesBase64?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gpsCoords';
        _gpsCoords?.build();

        _$failedField = 'confirmationFacesBase64';
        _confirmationFacesBase64?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BoardingEventCreateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
