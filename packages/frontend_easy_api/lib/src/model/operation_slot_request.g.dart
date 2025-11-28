// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_slot_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationSlotRequest extends OperationSlotRequest {
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int? order;

  factory _$OperationSlotRequest(
          [void Function(OperationSlotRequestBuilder)? updates]) =>
      (OperationSlotRequestBuilder()..update(updates))._build();

  _$OperationSlotRequest._(
      {required this.startTime, required this.endTime, this.order})
      : super._();
  @override
  OperationSlotRequest rebuild(
          void Function(OperationSlotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationSlotRequestBuilder toBuilder() =>
      OperationSlotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationSlotRequest &&
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
    return (newBuiltValueToStringHelper(r'OperationSlotRequest')
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('order', order))
        .toString();
  }
}

class OperationSlotRequestBuilder
    implements Builder<OperationSlotRequest, OperationSlotRequestBuilder> {
  _$OperationSlotRequest? _$v;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  OperationSlotRequestBuilder() {
    OperationSlotRequest._defaults(this);
  }

  OperationSlotRequestBuilder get _$this {
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
  void replace(OperationSlotRequest other) {
    _$v = other as _$OperationSlotRequest;
  }

  @override
  void update(void Function(OperationSlotRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationSlotRequest build() => _build();

  _$OperationSlotRequest _build() {
    final _$result = _$v ??
        _$OperationSlotRequest._(
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'OperationSlotRequest', 'startTime'),
          endTime: BuiltValueNullFieldError.checkNotNull(
              endTime, r'OperationSlotRequest', 'endTime'),
          order: order,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
