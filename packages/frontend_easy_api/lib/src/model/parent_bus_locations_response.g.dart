// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_bus_locations_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParentBusLocationsResponse extends ParentBusLocationsResponse {
  @override
  final String? type;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>> features;

  factory _$ParentBusLocationsResponse(
          [void Function(ParentBusLocationsResponseBuilder)? updates]) =>
      (ParentBusLocationsResponseBuilder()..update(updates))._build();

  _$ParentBusLocationsResponse._({this.type, required this.features})
      : super._();
  @override
  ParentBusLocationsResponse rebuild(
          void Function(ParentBusLocationsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParentBusLocationsResponseBuilder toBuilder() =>
      ParentBusLocationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParentBusLocationsResponse &&
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
    return (newBuiltValueToStringHelper(r'ParentBusLocationsResponse')
          ..add('type', type)
          ..add('features', features))
        .toString();
  }
}

class ParentBusLocationsResponseBuilder
    implements
        Builder<ParentBusLocationsResponse, ParentBusLocationsResponseBuilder> {
  _$ParentBusLocationsResponse? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<BuiltMap<String, JsonObject?>>? _features;
  ListBuilder<BuiltMap<String, JsonObject?>> get features =>
      _$this._features ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set features(ListBuilder<BuiltMap<String, JsonObject?>>? features) =>
      _$this._features = features;

  ParentBusLocationsResponseBuilder() {
    ParentBusLocationsResponse._defaults(this);
  }

  ParentBusLocationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _features = $v.features.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParentBusLocationsResponse other) {
    _$v = other as _$ParentBusLocationsResponse;
  }

  @override
  void update(void Function(ParentBusLocationsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParentBusLocationsResponse build() => _build();

  _$ParentBusLocationsResponse _build() {
    _$ParentBusLocationsResponse _$result;
    try {
      _$result = _$v ??
          _$ParentBusLocationsResponse._(
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
            r'ParentBusLocationsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
