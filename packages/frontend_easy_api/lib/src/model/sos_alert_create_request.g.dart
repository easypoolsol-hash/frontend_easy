// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sos_alert_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SOSAlertCreateRequest extends SOSAlertCreateRequest {
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? message;
  @override
  final JsonObject? metadata;

  factory _$SOSAlertCreateRequest(
          [void Function(SOSAlertCreateRequestBuilder)? updates]) =>
      (SOSAlertCreateRequestBuilder()..update(updates))._build();

  _$SOSAlertCreateRequest._(
      {this.latitude, this.longitude, this.message, this.metadata})
      : super._();
  @override
  SOSAlertCreateRequest rebuild(
          void Function(SOSAlertCreateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SOSAlertCreateRequestBuilder toBuilder() =>
      SOSAlertCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SOSAlertCreateRequest &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        message == other.message &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SOSAlertCreateRequest')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('message', message)
          ..add('metadata', metadata))
        .toString();
  }
}

class SOSAlertCreateRequestBuilder
    implements Builder<SOSAlertCreateRequest, SOSAlertCreateRequestBuilder> {
  _$SOSAlertCreateRequest? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  SOSAlertCreateRequestBuilder() {
    SOSAlertCreateRequest._defaults(this);
  }

  SOSAlertCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _message = $v.message;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SOSAlertCreateRequest other) {
    _$v = other as _$SOSAlertCreateRequest;
  }

  @override
  void update(void Function(SOSAlertCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SOSAlertCreateRequest build() => _build();

  _$SOSAlertCreateRequest _build() {
    final _$result = _$v ??
        _$SOSAlertCreateRequest._(
          latitude: latitude,
          longitude: longitude,
          message: message,
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
