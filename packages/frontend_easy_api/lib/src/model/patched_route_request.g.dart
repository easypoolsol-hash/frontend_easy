// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PatchedRouteRequestLinePatternEnum
    _$patchedRouteRequestLinePatternEnum_solid =
    const PatchedRouteRequestLinePatternEnum._('solid');
const PatchedRouteRequestLinePatternEnum
    _$patchedRouteRequestLinePatternEnum_dashed =
    const PatchedRouteRequestLinePatternEnum._('dashed');

PatchedRouteRequestLinePatternEnum _$patchedRouteRequestLinePatternEnumValueOf(
    String name) {
  switch (name) {
    case 'solid':
      return _$patchedRouteRequestLinePatternEnum_solid;
    case 'dashed':
      return _$patchedRouteRequestLinePatternEnum_dashed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PatchedRouteRequestLinePatternEnum>
    _$patchedRouteRequestLinePatternEnumValues = BuiltSet<
        PatchedRouteRequestLinePatternEnum>(const <PatchedRouteRequestLinePatternEnum>[
  _$patchedRouteRequestLinePatternEnum_solid,
  _$patchedRouteRequestLinePatternEnum_dashed,
]);

Serializer<PatchedRouteRequestLinePatternEnum>
    _$patchedRouteRequestLinePatternEnumSerializer =
    _$PatchedRouteRequestLinePatternEnumSerializer();

class _$PatchedRouteRequestLinePatternEnumSerializer
    implements PrimitiveSerializer<PatchedRouteRequestLinePatternEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'dashed': 'dashed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'dashed': 'dashed',
  };

  @override
  final Iterable<Type> types = const <Type>[PatchedRouteRequestLinePatternEnum];
  @override
  final String wireName = 'PatchedRouteRequestLinePatternEnum';

  @override
  Object serialize(
          Serializers serializers, PatchedRouteRequestLinePatternEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PatchedRouteRequestLinePatternEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PatchedRouteRequestLinePatternEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PatchedRouteRequest extends PatchedRouteRequest {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? colorCode;
  @override
  final PatchedRouteRequestLinePatternEnum? linePattern;
  @override
  final bool? isActive;

  factory _$PatchedRouteRequest(
          [void Function(PatchedRouteRequestBuilder)? updates]) =>
      (PatchedRouteRequestBuilder()..update(updates))._build();

  _$PatchedRouteRequest._(
      {this.name,
      this.description,
      this.colorCode,
      this.linePattern,
      this.isActive})
      : super._();
  @override
  PatchedRouteRequest rebuild(
          void Function(PatchedRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedRouteRequestBuilder toBuilder() =>
      PatchedRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedRouteRequest &&
        name == other.name &&
        description == other.description &&
        colorCode == other.colorCode &&
        linePattern == other.linePattern &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, colorCode.hashCode);
    _$hash = $jc(_$hash, linePattern.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedRouteRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('colorCode', colorCode)
          ..add('linePattern', linePattern)
          ..add('isActive', isActive))
        .toString();
  }
}

class PatchedRouteRequestBuilder
    implements Builder<PatchedRouteRequest, PatchedRouteRequestBuilder> {
  _$PatchedRouteRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _colorCode;
  String? get colorCode => _$this._colorCode;
  set colorCode(String? colorCode) => _$this._colorCode = colorCode;

  PatchedRouteRequestLinePatternEnum? _linePattern;
  PatchedRouteRequestLinePatternEnum? get linePattern => _$this._linePattern;
  set linePattern(PatchedRouteRequestLinePatternEnum? linePattern) =>
      _$this._linePattern = linePattern;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  PatchedRouteRequestBuilder() {
    PatchedRouteRequest._defaults(this);
  }

  PatchedRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _colorCode = $v.colorCode;
      _linePattern = $v.linePattern;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedRouteRequest other) {
    _$v = other as _$PatchedRouteRequest;
  }

  @override
  void update(void Function(PatchedRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedRouteRequest build() => _build();

  _$PatchedRouteRequest _build() {
    final _$result = _$v ??
        _$PatchedRouteRequest._(
          name: name,
          description: description,
          colorCode: colorCode,
          linePattern: linePattern,
          isActive: isActive,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
