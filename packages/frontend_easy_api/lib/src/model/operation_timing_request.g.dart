// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_timing_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationTimingRequest extends OperationTimingRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool? isActive;

  factory _$OperationTimingRequest(
          [void Function(OperationTimingRequestBuilder)? updates]) =>
      (OperationTimingRequestBuilder()..update(updates))._build();

  _$OperationTimingRequest._(
      {required this.name, this.description, this.isActive})
      : super._();
  @override
  OperationTimingRequest rebuild(
          void Function(OperationTimingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationTimingRequestBuilder toBuilder() =>
      OperationTimingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationTimingRequest &&
        name == other.name &&
        description == other.description &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperationTimingRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('isActive', isActive))
        .toString();
  }
}

class OperationTimingRequestBuilder
    implements Builder<OperationTimingRequest, OperationTimingRequestBuilder> {
  _$OperationTimingRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  OperationTimingRequestBuilder() {
    OperationTimingRequest._defaults(this);
  }

  OperationTimingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationTimingRequest other) {
    _$v = other as _$OperationTimingRequest;
  }

  @override
  void update(void Function(OperationTimingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationTimingRequest build() => _build();

  _$OperationTimingRequest _build() {
    final _$result = _$v ??
        _$OperationTimingRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'OperationTimingRequest', 'name'),
          description: description,
          isActive: isActive,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
