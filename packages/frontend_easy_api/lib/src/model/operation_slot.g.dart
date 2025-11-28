// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_slot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationSlot extends OperationSlot {
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int? order;

  factory _$OperationSlot([void Function(OperationSlotBuilder)? updates]) =>
      (OperationSlotBuilder()..update(updates))._build();

  _$OperationSlot._(
      {required this.startTime, required this.endTime, this.order})
      : super._();
  @override
  OperationSlot rebuild(void Function(OperationSlotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationSlotBuilder toBuilder() => OperationSlotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationSlot &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        order == other.order;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperationSlot')
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('order', order))
        .toString();
  }
}

class OperationSlotBuilder
    implements Builder<OperationSlot, OperationSlotBuilder> {
  _$OperationSlot? _$v;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  OperationSlotBuilder() {
    OperationSlot._defaults(this);
  }

  OperationSlotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationSlot other) {
    _$v = other as _$OperationSlot;
  }

  @override
  void update(void Function(OperationSlotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationSlot build() => _build();

  _$OperationSlot _build() {
    final _$result = _$v ??
        _$OperationSlot._(
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'OperationSlot', 'startTime'),
          endTime: BuiltValueNullFieldError.checkNotNull(
              endTime, r'OperationSlot', 'endTime'),
          order: order,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
