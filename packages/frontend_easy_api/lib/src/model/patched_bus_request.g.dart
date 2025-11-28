// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_bus_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchedBusRequestStatusEnum _$patchedBusRequestStatusEnum_active =
    const PatchedBusRequestStatusEnum._('active');
const PatchedBusRequestStatusEnum _$patchedBusRequestStatusEnum_maintenance =
    const PatchedBusRequestStatusEnum._('maintenance');
const PatchedBusRequestStatusEnum _$patchedBusRequestStatusEnum_retired =
    const PatchedBusRequestStatusEnum._('retired');

PatchedBusRequestStatusEnum _$patchedBusRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$patchedBusRequestStatusEnum_active;
    case 'maintenance':
      return _$patchedBusRequestStatusEnum_maintenance;
    case 'retired':
      return _$patchedBusRequestStatusEnum_retired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchedBusRequestStatusEnum>
    _$patchedBusRequestStatusEnumValues =
    BuiltSet<PatchedBusRequestStatusEnum>(const <PatchedBusRequestStatusEnum>[
  _$patchedBusRequestStatusEnum_active,
  _$patchedBusRequestStatusEnum_maintenance,
  _$patchedBusRequestStatusEnum_retired,
]);

Serializer<PatchedBusRequestStatusEnum>
    _$patchedBusRequestStatusEnumSerializer =
    _$PatchedBusRequestStatusEnumSerializer();

class _$PatchedBusRequestStatusEnumSerializer
    implements PrimitiveSerializer<PatchedBusRequestStatusEnum> {
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
  final Iterable<Type> types = const <Type>[PatchedBusRequestStatusEnum];
  @override
  final String wireName = 'PatchedBusRequestStatusEnum';

  @override
  Object serialize(Serializers serializers, PatchedBusRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchedBusRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatchedBusRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatchedBusRequest extends PatchedBusRequest {
  @override
  final String? busNumber;
  @override
  final String? licensePlate;
  @override
  final String? route;
  @override
  final int? capacity;
  @override
  final String? deviceId;
  @override
  final PatchedBusRequestStatusEnum? status;
  @override
  final String? manufacturer;
  @override
  final String? model;
  @override
  final int? year;
  @override
  final Date? lastMaintenance;
  @override
  final String? driverName;
  @override
  final String? driverPhone;
  @override
  final String? driverAddress;
  @override
  final String? driverLicenseNumber;
  @override
  final String? conductorName;
  @override
  final String? conductorPhone;
  @override
  final String? conductorAddress;

  factory _$PatchedBusRequest(
          [void Function(PatchedBusRequestBuilder)? updates]) =>
      (PatchedBusRequestBuilder()..update(updates))._build();

  _$PatchedBusRequest._(
      {this.busNumber,
      this.licensePlate,
      this.route,
      this.capacity,
      this.deviceId,
      this.status,
      this.manufacturer,
      this.model,
      this.year,
      this.lastMaintenance,
      this.driverName,
      this.driverPhone,
      this.driverAddress,
      this.driverLicenseNumber,
      this.conductorName,
      this.conductorPhone,
      this.conductorAddress})
      : super._();
  @override
  PatchedBusRequest rebuild(void Function(PatchedBusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedBusRequestBuilder toBuilder() =>
      PatchedBusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedBusRequest &&
        busNumber == other.busNumber &&
        licensePlate == other.licensePlate &&
        route == other.route &&
        capacity == other.capacity &&
        deviceId == other.deviceId &&
        status == other.status &&
        manufacturer == other.manufacturer &&
        model == other.model &&
        year == other.year &&
        lastMaintenance == other.lastMaintenance &&
        driverName == other.driverName &&
        driverPhone == other.driverPhone &&
        driverAddress == other.driverAddress &&
        driverLicenseNumber == other.driverLicenseNumber &&
        conductorName == other.conductorName &&
        conductorPhone == other.conductorPhone &&
        conductorAddress == other.conductorAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, busNumber.hashCode);
    _$hash = $jc(_$hash, licensePlate.hashCode);
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jc(_$hash, capacity.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, lastMaintenance.hashCode);
    _$hash = $jc(_$hash, driverName.hashCode);
    _$hash = $jc(_$hash, driverPhone.hashCode);
    _$hash = $jc(_$hash, driverAddress.hashCode);
    _$hash = $jc(_$hash, driverLicenseNumber.hashCode);
    _$hash = $jc(_$hash, conductorName.hashCode);
    _$hash = $jc(_$hash, conductorPhone.hashCode);
    _$hash = $jc(_$hash, conductorAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedBusRequest')
          ..add('busNumber', busNumber)
          ..add('licensePlate', licensePlate)
          ..add('route', route)
          ..add('capacity', capacity)
          ..add('deviceId', deviceId)
          ..add('status', status)
          ..add('manufacturer', manufacturer)
          ..add('model', model)
          ..add('year', year)
          ..add('lastMaintenance', lastMaintenance)
          ..add('driverName', driverName)
          ..add('driverPhone', driverPhone)
          ..add('driverAddress', driverAddress)
          ..add('driverLicenseNumber', driverLicenseNumber)
          ..add('conductorName', conductorName)
          ..add('conductorPhone', conductorPhone)
          ..add('conductorAddress', conductorAddress))
        .toString();
  }
}

class PatchedBusRequestBuilder
    implements Builder<PatchedBusRequest, PatchedBusRequestBuilder> {
  _$PatchedBusRequest? _$v;

  String? _busNumber;
  String? get busNumber => _$this._busNumber;
  set busNumber(String? busNumber) => _$this._busNumber = busNumber;

  String? _licensePlate;
  String? get licensePlate => _$this._licensePlate;
  set licensePlate(String? licensePlate) => _$this._licensePlate = licensePlate;

  String? _route;
  String? get route => _$this._route;
  set route(String? route) => _$this._route = route;

  int? _capacity;
  int? get capacity => _$this._capacity;
  set capacity(int? capacity) => _$this._capacity = capacity;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  PatchedBusRequestStatusEnum? _status;
  PatchedBusRequestStatusEnum? get status => _$this._status;
  set status(PatchedBusRequestStatusEnum? status) => _$this._status = status;

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

  String? _driverName;
  String? get driverName => _$this._driverName;
  set driverName(String? driverName) => _$this._driverName = driverName;

  String? _driverPhone;
  String? get driverPhone => _$this._driverPhone;
  set driverPhone(String? driverPhone) => _$this._driverPhone = driverPhone;

  String? _driverAddress;
  String? get driverAddress => _$this._driverAddress;
  set driverAddress(String? driverAddress) =>
      _$this._driverAddress = driverAddress;

  String? _driverLicenseNumber;
  String? get driverLicenseNumber => _$this._driverLicenseNumber;
  set driverLicenseNumber(String? driverLicenseNumber) =>
      _$this._driverLicenseNumber = driverLicenseNumber;

  String? _conductorName;
  String? get conductorName => _$this._conductorName;
  set conductorName(String? conductorName) =>
      _$this._conductorName = conductorName;

  String? _conductorPhone;
  String? get conductorPhone => _$this._conductorPhone;
  set conductorPhone(String? conductorPhone) =>
      _$this._conductorPhone = conductorPhone;

  String? _conductorAddress;
  String? get conductorAddress => _$this._conductorAddress;
  set conductorAddress(String? conductorAddress) =>
      _$this._conductorAddress = conductorAddress;

  PatchedBusRequestBuilder() {
    PatchedBusRequest._defaults(this);
  }

  PatchedBusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _busNumber = $v.busNumber;
      _licensePlate = $v.licensePlate;
      _route = $v.route;
      _capacity = $v.capacity;
      _deviceId = $v.deviceId;
      _status = $v.status;
      _manufacturer = $v.manufacturer;
      _model = $v.model;
      _year = $v.year;
      _lastMaintenance = $v.lastMaintenance;
      _driverName = $v.driverName;
      _driverPhone = $v.driverPhone;
      _driverAddress = $v.driverAddress;
      _driverLicenseNumber = $v.driverLicenseNumber;
      _conductorName = $v.conductorName;
      _conductorPhone = $v.conductorPhone;
      _conductorAddress = $v.conductorAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedBusRequest other) {
    _$v = other as _$PatchedBusRequest;
  }

  @override
  void update(void Function(PatchedBusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedBusRequest build() => _build();

  _$PatchedBusRequest _build() {
    final _$result = _$v ??
        _$PatchedBusRequest._(
          busNumber: busNumber,
          licensePlate: licensePlate,
          route: route,
          capacity: capacity,
          deviceId: deviceId,
          status: status,
          manufacturer: manufacturer,
          model: model,
          year: year,
          lastMaintenance: lastMaintenance,
          driverName: driverName,
          driverPhone: driverPhone,
          driverAddress: driverAddress,
          driverLicenseNumber: driverLicenseNumber,
          conductorName: conductorName,
          conductorPhone: conductorPhone,
          conductorAddress: conductorAddress,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
