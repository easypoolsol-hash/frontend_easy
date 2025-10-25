// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_route.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedRoute extends PatchedRoute {
  @override
  final String? routeId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? isActive;
  @override
  final int? stopCount;
  @override
  final int? totalStudents;
  @override
  final BuiltList<RouteStop>? routeStops;
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
      this.isActive,
      this.stopCount,
      this.totalStudents,
      this.routeStops,
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
    return (newBuiltValueToStringHelper(r'PatchedRoute')
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

  PatchedRouteBuilder() {
    PatchedRoute._defaults(this);
  }

  PatchedRouteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routeId = $v.routeId;
      _name = $v.name;
      _description = $v.description;
      _isActive = $v.isActive;
      _stopCount = $v.stopCount;
      _totalStudents = $v.totalStudents;
      _routeStops = $v.routeStops?.toBuilder();
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
            isActive: isActive,
            stopCount: stopCount,
            totalStudents: totalStudents,
            routeStops: _routeStops?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routeStops';
        _routeStops?.build();
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
