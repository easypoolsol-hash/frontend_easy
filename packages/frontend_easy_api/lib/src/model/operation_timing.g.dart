// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_timing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationTiming extends OperationTiming {
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool? isActive;
  @override
  final BuiltList<OperationSlot> slots;

  factory _$OperationTiming([void Function(OperationTimingBuilder)? updates]) =>
      (OperationTimingBuilder()..update(updates))._build();

  _$OperationTiming._(
      {required this.name,
      this.description,
      this.isActive,
      required this.slots})
      : super._();
  @override
  OperationTiming rebuild(void Function(OperationTimingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationTimingBuilder toBuilder() => OperationTimingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationTiming &&
        name == other.name &&
        description == other.description &&
        isActive == other.isActive &&
        slots == other.slots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, slots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperationTiming')
          ..add('name', name)
          ..add('description', description)
          ..add('isActive', isActive)
          ..add('slots', slots))
        .toString();
  }
}

class OperationTimingBuilder
    implements Builder<OperationTiming, OperationTimingBuilder> {
  _$OperationTiming? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  ListBuilder<OperationSlot>? _slots;
  ListBuilder<OperationSlot> get slots =>
      _$this._slots ??= ListBuilder<OperationSlot>();
  set slots(ListBuilder<OperationSlot>? slots) => _$this._slots = slots;

  OperationTimingBuilder() {
    OperationTiming._defaults(this);
  }

  OperationTimingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _isActive = $v.isActive;
      _slots = $v.slots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationTiming other) {
    _$v = other as _$OperationTiming;
  }

  @override
  void update(void Function(OperationTimingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationTiming build() => _build();

  _$OperationTiming _build() {
    _$OperationTiming _$result;
    try {
      _$result = _$v ??
          _$OperationTiming._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'OperationTiming', 'name'),
            description: description,
            isActive: isActive,
            slots: slots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'slots';
        slots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperationTiming', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
