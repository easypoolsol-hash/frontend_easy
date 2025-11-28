// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_school_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedSchoolRequest extends PatchedSchoolRequest {
  @override
  final String? name;

  factory _$PatchedSchoolRequest(
          [void Function(PatchedSchoolRequestBuilder)? updates]) =>
      (PatchedSchoolRequestBuilder()..update(updates))._build();

  _$PatchedSchoolRequest._({this.name}) : super._();
  @override
  PatchedSchoolRequest rebuild(
          void Function(PatchedSchoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedSchoolRequestBuilder toBuilder() =>
      PatchedSchoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedSchoolRequest && name == other.name;
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
    return (newBuiltValueToStringHelper(r'PatchedSchoolRequest')
          ..add('name', name))
        .toString();
  }
}

class PatchedSchoolRequestBuilder
    implements Builder<PatchedSchoolRequest, PatchedSchoolRequestBuilder> {
  _$PatchedSchoolRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PatchedSchoolRequestBuilder() {
    PatchedSchoolRequest._defaults(this);
  }

  PatchedSchoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedSchoolRequest other) {
    _$v = other as _$PatchedSchoolRequest;
  }

  @override
  void update(void Function(PatchedSchoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedSchoolRequest build() => _build();

  _$PatchedSchoolRequest _build() {
    final _$result = _$v ??
        _$PatchedSchoolRequest._(
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
