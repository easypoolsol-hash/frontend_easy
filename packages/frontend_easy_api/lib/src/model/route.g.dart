// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Route extends Route {
  @override
  final String routeId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool? isActive;
  @override
  final int stopCount;
  @override
  final int totalStudents;
  @override
  final BuiltList<RouteStop> routeStops;
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
      this.isActive,
      required this.stopCount,
      required this.totalStudents,
      required this.routeStops,
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
        isActive == other.isActive &&
        stopCount == other.stopCount &&
        totalStudents == other.totalStudents &&
        routeStops == other.routeStops &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routeId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, stopCount.hashCode);
    _$hash = $jc(_$hash, totalStudents.hashCode);
    _$hash = $jc(_$hash, routeStops.hashCode);
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
          ..add('isActive', isActive)
          ..add('stopCount', stopCount)
          ..add('totalStudents', totalStudents)
          ..add('routeStops', routeStops)
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
      _isActive = $v.isActive;
      _stopCount = $v.stopCount;
      _totalStudents = $v.totalStudents;
      _routeStops = $v.routeStops.toBuilder();
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
            isActive: isActive,
            stopCount: BuiltValueNullFieldError.checkNotNull(
                stopCount, r'Route', 'stopCount'),
            totalStudents: BuiltValueNullFieldError.checkNotNull(
                totalStudents, r'Route', 'totalStudents'),
            routeStops: routeStops.build(),
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
