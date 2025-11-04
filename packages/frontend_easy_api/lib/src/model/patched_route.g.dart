// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchedRouteLinePatternEnum _$patchedRouteLinePatternEnum_solid =
    const PatchedRouteLinePatternEnum._('solid');
const PatchedRouteLinePatternEnum _$patchedRouteLinePatternEnum_dashed =
    const PatchedRouteLinePatternEnum._('dashed');

PatchedRouteLinePatternEnum _$patchedRouteLinePatternEnumValueOf(String name) {
  switch (name) {
    case 'solid':
      return _$patchedRouteLinePatternEnum_solid;
    case 'dashed':
      return _$patchedRouteLinePatternEnum_dashed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchedRouteLinePatternEnum>
    _$patchedRouteLinePatternEnumValues =
    BuiltSet<PatchedRouteLinePatternEnum>(const <PatchedRouteLinePatternEnum>[
  _$patchedRouteLinePatternEnum_solid,
  _$patchedRouteLinePatternEnum_dashed,
]);

Serializer<PatchedRouteLinePatternEnum>
    _$patchedRouteLinePatternEnumSerializer =
    _$PatchedRouteLinePatternEnumSerializer();

class _$PatchedRouteLinePatternEnumSerializer
    implements PrimitiveSerializer<PatchedRouteLinePatternEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'dashed': 'dashed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'dashed': 'dashed',
  };

  @override
  final Iterable<Type> types = const <Type>[PatchedRouteLinePatternEnum];
  @override
  final String wireName = 'PatchedRouteLinePatternEnum';

  @override
  Object serialize(Serializers serializers, PatchedRouteLinePatternEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchedRouteLinePatternEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatchedRouteLinePatternEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatchedRoute extends PatchedRoute {
  @override
  final String? routeId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? colorCode;
  @override
  final PatchedRouteLinePatternEnum? linePattern;
  @override
  final bool? isActive;
  @override
  final int? stopCount;
  @override
  final int? totalStudents;
  @override
  final BuiltList<RouteStop>? routeStops;
  @override
  final String? encodedPolyline;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? busStops;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PatchedRoute([void Function(PatchedRouteBuilder)? updates]) =>
      (PatchedRouteBuilder()..update(updates))._build();

  _$PatchedRoute._(
      {this.routeId,
      this.name,
      this.description,
      this.colorCode,
      this.linePattern,
      this.isActive,
      this.stopCount,
      this.totalStudents,
      this.routeStops,
      this.encodedPolyline,
      this.busStops,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  PatchedRoute rebuild(void Function(PatchedRouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedRouteBuilder toBuilder() => PatchedRouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedRoute &&
        routeId == other.routeId &&
        name == other.name &&
        description == other.description &&
        colorCode == other.colorCode &&
        linePattern == other.linePattern &&
        isActive == other.isActive &&
        stopCount == other.stopCount &&
        totalStudents == other.totalStudents &&
        routeStops == other.routeStops &&
        encodedPolyline == other.encodedPolyline &&
        busStops == other.busStops &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routeId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, colorCode.hashCode);
    _$hash = $jc(_$hash, linePattern.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, stopCount.hashCode);
    _$hash = $jc(_$hash, totalStudents.hashCode);
    _$hash = $jc(_$hash, routeStops.hashCode);
    _$hash = $jc(_$hash, encodedPolyline.hashCode);
    _$hash = $jc(_$hash, busStops.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedRoute')
          ..add('routeId', routeId)
          ..add('name', name)
          ..add('description', description)
          ..add('colorCode', colorCode)
          ..add('linePattern', linePattern)
          ..add('isActive', isActive)
          ..add('stopCount', stopCount)
          ..add('totalStudents', totalStudents)
          ..add('routeStops', routeStops)
          ..add('encodedPolyline', encodedPolyline)
          ..add('busStops', busStops)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PatchedRouteBuilder
    implements Builder<PatchedRoute, PatchedRouteBuilder> {
  _$PatchedRoute? _$v;

  String? _routeId;
  String? get routeId => _$this._routeId;
  set routeId(String? routeId) => _$this._routeId = routeId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _colorCode;
  String? get colorCode => _$this._colorCode;
  set colorCode(String? colorCode) => _$this._colorCode = colorCode;

  PatchedRouteLinePatternEnum? _linePattern;
  PatchedRouteLinePatternEnum? get linePattern => _$this._linePattern;
  set linePattern(PatchedRouteLinePatternEnum? linePattern) =>
      _$this._linePattern = linePattern;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  int? _stopCount;
  int? get stopCount => _$this._stopCount;
  set stopCount(int? stopCount) => _$this._stopCount = stopCount;

  int? _totalStudents;
  int? get totalStudents => _$this._totalStudents;
  set totalStudents(int? totalStudents) =>
      _$this._totalStudents = totalStudents;

  ListBuilder<RouteStop>? _routeStops;
  ListBuilder<RouteStop> get routeStops =>
      _$this._routeStops ??= ListBuilder<RouteStop>();
  set routeStops(ListBuilder<RouteStop>? routeStops) =>
      _$this._routeStops = routeStops;

  String? _encodedPolyline;
  String? get encodedPolyline => _$this._encodedPolyline;
  set encodedPolyline(String? encodedPolyline) =>
      _$this._encodedPolyline = encodedPolyline;

  ListBuilder<BuiltMap<String, JsonObject?>>? _busStops;
  ListBuilder<BuiltMap<String, JsonObject?>> get busStops =>
      _$this._busStops ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set busStops(ListBuilder<BuiltMap<String, JsonObject?>>? busStops) =>
      _$this._busStops = busStops;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PatchedRouteBuilder() {
    PatchedRoute._defaults(this);
  }

  PatchedRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routeId = $v.routeId;
      _name = $v.name;
      _description = $v.description;
      _colorCode = $v.colorCode;
      _linePattern = $v.linePattern;
      _isActive = $v.isActive;
      _stopCount = $v.stopCount;
      _totalStudents = $v.totalStudents;
      _routeStops = $v.routeStops?.toBuilder();
      _encodedPolyline = $v.encodedPolyline;
      _busStops = $v.busStops?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedRoute other) {
    _$v = other as _$PatchedRoute;
  }

  @override
  void update(void Function(PatchedRouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedRoute build() => _build();

  _$PatchedRoute _build() {
    _$PatchedRoute _$result;
    try {
      _$result = _$v ??
          _$PatchedRoute._(
            routeId: routeId,
            name: name,
            description: description,
            colorCode: colorCode,
            linePattern: linePattern,
            isActive: isActive,
            stopCount: stopCount,
            totalStudents: totalStudents,
            routeStops: _routeStops?.build(),
            encodedPolyline: encodedPolyline,
            busStops: _busStops?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routeStops';
        _routeStops?.build();

        _$failedField = 'busStops';
        _busStops?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchedRoute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
