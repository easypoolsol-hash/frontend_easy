// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SchoolRequest extends SchoolRequest {
  @override
  final String name;

  factory _$SchoolRequest([void Function(SchoolRequestBuilder)? updates]) =>
      (SchoolRequestBuilder()..update(updates))._build();

  _$SchoolRequest._({required this.name}) : super._();
  @override
  SchoolRequest rebuild(void Function(SchoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SchoolRequestBuilder toBuilder() => SchoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchoolRequest && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchoolRequest')..add('name', name))
        .toString();
  }
}

class SchoolRequestBuilder
    implements Builder<SchoolRequest, SchoolRequestBuilder> {
  _$SchoolRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SchoolRequestBuilder() {
    SchoolRequest._defaults(this);
  }

  SchoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchoolRequest other) {
    _$v = other as _$SchoolRequest;
  }

  @override
  void update(void Function(SchoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchoolRequest build() => _build();

  _$SchoolRequest _build() {
    final _$result = _$v ??
        _$SchoolRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'SchoolRequest', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
