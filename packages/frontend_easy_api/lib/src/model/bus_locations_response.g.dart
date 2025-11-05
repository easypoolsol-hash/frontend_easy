// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_locations_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BusLocationsResponse extends BusLocationsResponse {
  @override
  final String? type;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>> features;

  factory _$BusLocationsResponse(
          [void Function(BusLocationsResponseBuilder)? updates]) =>
      (BusLocationsResponseBuilder()..update(updates))._build();

  _$BusLocationsResponse._({this.type, required this.features}) : super._();
  @override
  BusLocationsResponse rebuild(
          void Function(BusLocationsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BusLocationsResponseBuilder toBuilder() =>
      BusLocationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BusLocationsResponse &&
        type == other.type &&
        features == other.features;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BusLocationsResponse')
          ..add('type', type)
          ..add('features', features))
        .toString();
  }
}

class BusLocationsResponseBuilder
    implements Builder<BusLocationsResponse, BusLocationsResponseBuilder> {
  _$BusLocationsResponse? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<BuiltMap<String, JsonObject?>>? _features;
  ListBuilder<BuiltMap<String, JsonObject?>> get features =>
      _$this._features ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set features(ListBuilder<BuiltMap<String, JsonObject?>>? features) =>
      _$this._features = features;

  BusLocationsResponseBuilder() {
    BusLocationsResponse._defaults(this);
  }

  BusLocationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _features = $v.features.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BusLocationsResponse other) {
    _$v = other as _$BusLocationsResponse;
  }

  @override
  void update(void Function(BusLocationsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BusLocationsResponse build() => _build();

  _$BusLocationsResponse _build() {
    _$BusLocationsResponse _$result;
    try {
      _$result = _$v ??
          _$BusLocationsResponse._(
            type: type,
            features: features.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        features.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BusLocationsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
