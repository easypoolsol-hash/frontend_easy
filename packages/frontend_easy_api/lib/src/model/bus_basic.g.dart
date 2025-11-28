// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_basic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BusBasicStatusEnum _$busBasicStatusEnum_active =
    const BusBasicStatusEnum._('active');
const BusBasicStatusEnum _$busBasicStatusEnum_maintenance =
    const BusBasicStatusEnum._('maintenance');
const BusBasicStatusEnum _$busBasicStatusEnum_retired =
    const BusBasicStatusEnum._('retired');

BusBasicStatusEnum _$busBasicStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$busBasicStatusEnum_active;
    case 'maintenance':
      return _$busBasicStatusEnum_maintenance;
    case 'retired':
      return _$busBasicStatusEnum_retired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BusBasicStatusEnum> _$busBasicStatusEnumValues =
    BuiltSet<BusBasicStatusEnum>(const <BusBasicStatusEnum>[
  _$busBasicStatusEnum_active,
  _$busBasicStatusEnum_maintenance,
  _$busBasicStatusEnum_retired,
]);

Serializer<BusBasicStatusEnum> _$busBasicStatusEnumSerializer =
    _$BusBasicStatusEnumSerializer();

class _$BusBasicStatusEnumSerializer
    implements PrimitiveSerializer<BusBasicStatusEnum> {
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
  final Iterable<Type> types = const <Type>[BusBasicStatusEnum];
  @override
  final String wireName = 'BusBasicStatusEnum';

  @override
  Object serialize(Serializers serializers, BusBasicStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BusBasicStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BusBasicStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BusBasic extends BusBasic {
  @override
  final String busId;
  @override
  final String licensePlate;
  @override
  final String busNumber;
  @override
  final int? capacity;
  @override
  final BusBasicStatusEnum? status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$BusBasic([void Function(BusBasicBuilder)? updates]) =>
      (BusBasicBuilder()..update(updates))._build();

  _$BusBasic._(
      {required this.busId,
      required this.licensePlate,
      required this.busNumber,
      this.capacity,
      this.status,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  BusBasic rebuild(void Function(BusBasicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BusBasicBuilder toBuilder() => BusBasicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BusBasic &&
        busId == other.busId &&
        licensePlate == other.licensePlate &&
        busNumber == other.busNumber &&
        capacity == other.capacity &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, busId.hashCode);
    _$hash = $jc(_$hash, licensePlate.hashCode);
    _$hash = $jc(_$hash, busNumber.hashCode);
    _$hash = $jc(_$hash, capacity.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BusBasic')
          ..add('busId', busId)
          ..add('licensePlate', licensePlate)
          ..add('busNumber', busNumber)
          ..add('capacity', capacity)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class BusBasicBuilder implements Builder<BusBasic, BusBasicBuilder> {
  _$BusBasic? _$v;

  String? _busId;
  String? get busId => _$this._busId;
  set busId(String? busId) => _$this._busId = busId;

  String? _licensePlate;
  String? get licensePlate => _$this._licensePlate;
  set licensePlate(String? licensePlate) => _$this._licensePlate = licensePlate;

  String? _busNumber;
  String? get busNumber => _$this._busNumber;
  set busNumber(String? busNumber) => _$this._busNumber = busNumber;

  int? _capacity;
  int? get capacity => _$this._capacity;
  set capacity(int? capacity) => _$this._capacity = capacity;

  BusBasicStatusEnum? _status;
  BusBasicStatusEnum? get status => _$this._status;
  set status(BusBasicStatusEnum? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  BusBasicBuilder() {
    BusBasic._defaults(this);
  }

  BusBasicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _busId = $v.busId;
      _licensePlate = $v.licensePlate;
      _busNumber = $v.busNumber;
      _capacity = $v.capacity;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BusBasic other) {
    _$v = other as _$BusBasic;
  }

  @override
  void update(void Function(BusBasicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BusBasic build() => _build();

  _$BusBasic _build() {
    final _$result = _$v ??
        _$BusBasic._(
          busId: BuiltValueNullFieldError.checkNotNull(
              busId, r'BusBasic', 'busId'),
          licensePlate: BuiltValueNullFieldError.checkNotNull(
              licensePlate, r'BusBasic', 'licensePlate'),
          busNumber: BuiltValueNullFieldError.checkNotNull(
              busNumber, r'BusBasic', 'busNumber'),
          capacity: capacity,
          status: status,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'BusBasic', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'BusBasic', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
