// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_basic_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BusBasicRequestStatusEnum _$busBasicRequestStatusEnum_active =
    const BusBasicRequestStatusEnum._('active');
const BusBasicRequestStatusEnum _$busBasicRequestStatusEnum_maintenance =
    const BusBasicRequestStatusEnum._('maintenance');
const BusBasicRequestStatusEnum _$busBasicRequestStatusEnum_retired =
    const BusBasicRequestStatusEnum._('retired');

BusBasicRequestStatusEnum _$busBasicRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$busBasicRequestStatusEnum_active;
    case 'maintenance':
      return _$busBasicRequestStatusEnum_maintenance;
    case 'retired':
      return _$busBasicRequestStatusEnum_retired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BusBasicRequestStatusEnum> _$busBasicRequestStatusEnumValues =
    BuiltSet<BusBasicRequestStatusEnum>(const <BusBasicRequestStatusEnum>[
  _$busBasicRequestStatusEnum_active,
  _$busBasicRequestStatusEnum_maintenance,
  _$busBasicRequestStatusEnum_retired,
]);

Serializer<BusBasicRequestStatusEnum> _$busBasicRequestStatusEnumSerializer =
    _$BusBasicRequestStatusEnumSerializer();

class _$BusBasicRequestStatusEnumSerializer
    implements PrimitiveSerializer<BusBasicRequestStatusEnum> {
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
  final Iterable<Type> types = const <Type>[BusBasicRequestStatusEnum];
  @override
  final String wireName = 'BusBasicRequestStatusEnum';

  @override
  Object serialize(Serializers serializers, BusBasicRequestStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BusBasicRequestStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BusBasicRequestStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BusBasicRequest extends BusBasicRequest {
  @override
  final String licensePlate;
  @override
  final String busNumber;
  @override
  final int? capacity;
  @override
  final BusBasicRequestStatusEnum? status;

  factory _$BusBasicRequest([void Function(BusBasicRequestBuilder)? updates]) =>
      (BusBasicRequestBuilder()..update(updates))._build();

  _$BusBasicRequest._(
      {required this.licensePlate,
      required this.busNumber,
      this.capacity,
      this.status})
      : super._();
  @override
  BusBasicRequest rebuild(void Function(BusBasicRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BusBasicRequestBuilder toBuilder() => BusBasicRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BusBasicRequest &&
        licensePlate == other.licensePlate &&
        busNumber == other.busNumber &&
        capacity == other.capacity &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, licensePlate.hashCode);
    _$hash = $jc(_$hash, busNumber.hashCode);
    _$hash = $jc(_$hash, capacity.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BusBasicRequest')
          ..add('licensePlate', licensePlate)
          ..add('busNumber', busNumber)
          ..add('capacity', capacity)
          ..add('status', status))
        .toString();
  }
}

class BusBasicRequestBuilder
    implements Builder<BusBasicRequest, BusBasicRequestBuilder> {
  _$BusBasicRequest? _$v;

  String? _licensePlate;
  String? get licensePlate => _$this._licensePlate;
  set licensePlate(String? licensePlate) => _$this._licensePlate = licensePlate;

  String? _busNumber;
  String? get busNumber => _$this._busNumber;
  set busNumber(String? busNumber) => _$this._busNumber = busNumber;

  int? _capacity;
  int? get capacity => _$this._capacity;
  set capacity(int? capacity) => _$this._capacity = capacity;

  BusBasicRequestStatusEnum? _status;
  BusBasicRequestStatusEnum? get status => _$this._status;
  set status(BusBasicRequestStatusEnum? status) => _$this._status = status;

  BusBasicRequestBuilder() {
    BusBasicRequest._defaults(this);
  }

  BusBasicRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licensePlate = $v.licensePlate;
      _busNumber = $v.busNumber;
      _capacity = $v.capacity;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BusBasicRequest other) {
    _$v = other as _$BusBasicRequest;
  }

  @override
  void update(void Function(BusBasicRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BusBasicRequest build() => _build();

  _$BusBasicRequest _build() {
    final _$result = _$v ??
        _$BusBasicRequest._(
          licensePlate: BuiltValueNullFieldError.checkNotNull(
              licensePlate, r'BusBasicRequest', 'licensePlate'),
          busNumber: BuiltValueNullFieldError.checkNotNull(
              busNumber, r'BusBasicRequest', 'busNumber'),
          capacity: capacity,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
