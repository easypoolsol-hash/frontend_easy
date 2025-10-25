// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_bus.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchedBusStatusEnum _$patchedBusStatusEnum_active =
    const PatchedBusStatusEnum._('active');
const PatchedBusStatusEnum _$patchedBusStatusEnum_maintenance =
    const PatchedBusStatusEnum._('maintenance');
const PatchedBusStatusEnum _$patchedBusStatusEnum_retired =
    const PatchedBusStatusEnum._('retired');

PatchedBusStatusEnum _$patchedBusStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$patchedBusStatusEnum_active;
    case 'maintenance':
      return _$patchedBusStatusEnum_maintenance;
    case 'retired':
      return _$patchedBusStatusEnum_retired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchedBusStatusEnum> _$patchedBusStatusEnumValues =
    BuiltSet<PatchedBusStatusEnum>(const <PatchedBusStatusEnum>[
  _$patchedBusStatusEnum_active,
  _$patchedBusStatusEnum_maintenance,
  _$patchedBusStatusEnum_retired,
]);

Serializer<PatchedBusStatusEnum> _$patchedBusStatusEnumSerializer =
    _$PatchedBusStatusEnumSerializer();

class _$PatchedBusStatusEnumSerializer
    implements PrimitiveSerializer<PatchedBusStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'maintenance': 'maintenance',
    'retired': 'retired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'maintenance': 'maintenance',
    'retired': 'retired',
  };

  @override
  final Iterable<Type> types = const <Type>[PatchedBusStatusEnum];
  @override
  final String wireName = 'PatchedBusStatusEnum';

  @override
  Object serialize(Serializers serializers, PatchedBusStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchedBusStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatchedBusStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatchedBus extends PatchedBus {
  @override
  final String? busId;
  @override
  final String? licensePlate;
  @override
  final String? route;
  @override
  final String? routeName;
  @override
  final int? capacity;
  @override
  final String? deviceId;
  @override
  final PatchedBusStatusEnum? status;
  @override
  final String? manufacturer;
  @override
  final String? model;
  @override
  final int? year;
  @override
  final Date? lastMaintenance;
  @override
  final int? assignedStudentsCount;
  @override
  final double? utilizationPercentage;
  @override
  final bool? isAvailable;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PatchedBus([void Function(PatchedBusBuilder)? updates]) =>
      (PatchedBusBuilder()..update(updates))._build();

  _$PatchedBus._(
      {this.busId,
      this.licensePlate,
      this.route,
      this.routeName,
      this.capacity,
      this.deviceId,
      this.status,
      this.manufacturer,
      this.model,
      this.year,
      this.lastMaintenance,
      this.assignedStudentsCount,
      this.utilizationPercentage,
      this.isAvailable,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  PatchedBus rebuild(void Function(PatchedBusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedBusBuilder toBuilder() => PatchedBusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedBus &&
        busId == other.busId &&
        licensePlate == other.licensePlate &&
        route == other.route &&
        routeName == other.routeName &&
        capacity == other.capacity &&
        deviceId == other.deviceId &&
        status == other.status &&
        manufacturer == other.manufacturer &&
        model == other.model &&
        year == other.year &&
        lastMaintenance == other.lastMaintenance &&
        assignedStudentsCount == other.assignedStudentsCount &&
        utilizationPercentage == other.utilizationPercentage &&
        isAvailable == other.isAvailable &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, busId.hashCode);
    _$hash = $jc(_$hash, licensePlate.hashCode);
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jc(_$hash, routeName.hashCode);
    _$hash = $jc(_$hash, capacity.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, lastMaintenance.hashCode);
    _$hash = $jc(_$hash, assignedStudentsCount.hashCode);
    _$hash = $jc(_$hash, utilizationPercentage.hashCode);
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedBus')
          ..add('busId', busId)
          ..add('licensePlate', licensePlate)
          ..add('route', route)
          ..add('routeName', routeName)
          ..add('capacity', capacity)
          ..add('deviceId', deviceId)
          ..add('status', status)
          ..add('manufacturer', manufacturer)
          ..add('model', model)
          ..add('year', year)
          ..add('lastMaintenance', lastMaintenance)
          ..add('assignedStudentsCount', assignedStudentsCount)
          ..add('utilizationPercentage', utilizationPercentage)
          ..add('isAvailable', isAvailable)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PatchedBusBuilder implements Builder<PatchedBus, PatchedBusBuilder> {
  _$PatchedBus? _$v;

  String? _busId;
  String? get busId => _$this._busId;
  set busId(String? busId) => _$this._busId = busId;

  String? _licensePlate;
  String? get licensePlate => _$this._licensePlate;
  set licensePlate(String? licensePlate) => _$this._licensePlate = licensePlate;

  String? _route;
  String? get route => _$this._route;
  set route(String? route) => _$this._route = route;

  String? _routeName;
  String? get routeName => _$this._routeName;
  set routeName(String? routeName) => _$this._routeName = routeName;

  int? _capacity;
  int? get capacity => _$this._capacity;
  set capacity(int? capacity) => _$this._capacity = capacity;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  PatchedBusStatusEnum? _status;
  PatchedBusStatusEnum? get status => _$this._status;
  set status(PatchedBusStatusEnum? status) => _$this._status = status;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  Date? _lastMaintenance;
  Date? get lastMaintenance => _$this._lastMaintenance;
  set lastMaintenance(Date? lastMaintenance) =>
      _$this._lastMaintenance = lastMaintenance;

  int? _assignedStudentsCount;
  int? get assignedStudentsCount => _$this._assignedStudentsCount;
  set assignedStudentsCount(int? assignedStudentsCount) =>
      _$this._assignedStudentsCount = assignedStudentsCount;

  double? _utilizationPercentage;
  double? get utilizationPercentage => _$this._utilizationPercentage;
  set utilizationPercentage(double? utilizationPercentage) =>
      _$this._utilizationPercentage = utilizationPercentage;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PatchedBusBuilder() {
    PatchedBus._defaults(this);
  }

  PatchedBusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _busId = $v.busId;
      _licensePlate = $v.licensePlate;
      _route = $v.route;
      _routeName = $v.routeName;
      _capacity = $v.capacity;
      _deviceId = $v.deviceId;
      _status = $v.status;
      _manufacturer = $v.manufacturer;
      _model = $v.model;
      _year = $v.year;
      _lastMaintenance = $v.lastMaintenance;
      _assignedStudentsCount = $v.assignedStudentsCount;
      _utilizationPercentage = $v.utilizationPercentage;
      _isAvailable = $v.isAvailable;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedBus other) {
    _$v = other as _$PatchedBus;
  }

  @override
  void update(void Function(PatchedBusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedBus build() => _build();

  _$PatchedBus _build() {
    final _$result = _$v ??
        _$PatchedBus._(
          busId: busId,
          licensePlate: licensePlate,
          route: route,
          routeName: routeName,
          capacity: capacity,
          deviceId: deviceId,
          status: status,
          manufacturer: manufacturer,
          model: model,
          year: year,
          lastMaintenance: lastMaintenance,
          assignedStudentsCount: assignedStudentsCount,
          utilizationPercentage: utilizationPercentage,
          isAvailable: isAvailable,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
