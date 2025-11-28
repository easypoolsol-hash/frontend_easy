// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_location_history_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BusLocationHistoryResponse extends BusLocationHistoryResponse {
  @override
  final String? type;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>> features;

  factory _$BusLocationHistoryResponse(
          [void Function(BusLocationHistoryResponseBuilder)? updates]) =>
      (BusLocationHistoryResponseBuilder()..update(updates))._build();

  _$BusLocationHistoryResponse._({this.type, required this.features})
      : super._();
  @override
  BusLocationHistoryResponse rebuild(
          void Function(BusLocationHistoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BusLocationHistoryResponseBuilder toBuilder() =>
      BusLocationHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BusLocationHistoryResponse &&
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
    return (newBuiltValueToStringHelper(r'BusLocationHistoryResponse')
          ..add('type', type)
          ..add('features', features))
        .toString();
  }
}

class BusLocationHistoryResponseBuilder
    implements
        Builder<BusLocationHistoryResponse, BusLocationHistoryResponseBuilder> {
  _$BusLocationHistoryResponse? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<BuiltMap<String, JsonObject?>>? _features;
  ListBuilder<BuiltMap<String, JsonObject?>> get features =>
      _$this._features ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set features(ListBuilder<BuiltMap<String, JsonObject?>>? features) =>
      _$this._features = features;

  BusLocationHistoryResponseBuilder() {
    BusLocationHistoryResponse._defaults(this);
  }

  BusLocationHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _features = $v.features.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BusLocationHistoryResponse other) {
    _$v = other as _$BusLocationHistoryResponse;
  }

  @override
  void update(void Function(BusLocationHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BusLocationHistoryResponse build() => _build();

  _$BusLocationHistoryResponse _build() {
    _$BusLocationHistoryResponse _$result;
    try {
      _$result = _$v ??
          _$BusLocationHistoryResponse._(
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
            r'BusLocationHistoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
