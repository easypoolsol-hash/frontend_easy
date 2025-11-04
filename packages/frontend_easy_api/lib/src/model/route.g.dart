// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RouteLinePatternEnum _$routeLinePatternEnum_solid =
    const RouteLinePatternEnum._('solid');
const RouteLinePatternEnum _$routeLinePatternEnum_dashed =
    const RouteLinePatternEnum._('dashed');

RouteLinePatternEnum _$routeLinePatternEnumValueOf(String name) {
  switch (name) {
    case 'solid':
      return _$routeLinePatternEnum_solid;
    case 'dashed':
      return _$routeLinePatternEnum_dashed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RouteLinePatternEnum> _$routeLinePatternEnumValues =
    BuiltSet<RouteLinePatternEnum>(const <RouteLinePatternEnum>[
  _$routeLinePatternEnum_solid,
  _$routeLinePatternEnum_dashed,
]);

Serializer<RouteLinePatternEnum> _$routeLinePatternEnumSerializer =
    _$RouteLinePatternEnumSerializer();

class _$RouteLinePatternEnumSerializer
    implements PrimitiveSerializer<RouteLinePatternEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'dashed': 'dashed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'dashed': 'dashed',
  };

  @override
  final Iterable<Type> types = const <Type>[RouteLinePatternEnum];
  @override
  final String wireName = 'RouteLinePatternEnum';

  @override
  Object serialize(Serializers serializers, RouteLinePatternEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RouteLinePatternEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RouteLinePatternEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Route extends Route {
  @override
  final String routeId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? colorCode;
  @override
  final RouteLinePatternEnum? linePattern;
  @override
  final bool? isActive;
  @override
  final int stopCount;
  @override
  final int totalStudents;
  @override
  final BuiltList<RouteStop> routeStops;
  @override
  final String encodedPolyline;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>> busStops;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Route([void Function(RouteBuilder)? updates]) =>
      (RouteBuilder()..update(updates))._build();

  _$Route._(
      {required this.routeId,
      required this.name,
      this.description,
      this.colorCode,
      this.linePattern,
      this.isActive,
      required this.stopCount,
      required this.totalStudents,
      required this.routeStops,
      required this.encodedPolyline,
      required this.busStops,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  Route rebuild(void Function(RouteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteBuilder toBuilder() => RouteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Route &&
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
    return (newBuiltValueToStringHelper(r'Route')
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

class RouteBuilder implements Builder<Route, RouteBuilder> {
  _$Route? _$v;

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

  RouteLinePatternEnum? _linePattern;
  RouteLinePatternEnum? get linePattern => _$this._linePattern;
  set linePattern(RouteLinePatternEnum? linePattern) =>
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

  RouteBuilder() {
    Route._defaults(this);
  }

  RouteBuilder get _$this {
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
      _routeStops = $v.routeStops.toBuilder();
      _encodedPolyline = $v.encodedPolyline;
      _busStops = $v.busStops.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Route other) {
    _$v = other as _$Route;
  }

  @override
  void update(void Function(RouteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Route build() => _build();

  _$Route _build() {
    _$Route _$result;
    try {
      _$result = _$v ??
          _$Route._(
            routeId: BuiltValueNullFieldError.checkNotNull(
                routeId, r'Route', 'routeId'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Route', 'name'),
            description: description,
            colorCode: colorCode,
            linePattern: linePattern,
            isActive: isActive,
            stopCount: BuiltValueNullFieldError.checkNotNull(
                stopCount, r'Route', 'stopCount'),
            totalStudents: BuiltValueNullFieldError.checkNotNull(
                totalStudents, r'Route', 'totalStudents'),
            routeStops: routeStops.build(),
            encodedPolyline: BuiltValueNullFieldError.checkNotNull(
                encodedPolyline, r'Route', 'encodedPolyline'),
            busStops: busStops.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Route', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'Route', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routeStops';
        routeStops.build();

        _$failedField = 'busStops';
        busStops.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Route', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
