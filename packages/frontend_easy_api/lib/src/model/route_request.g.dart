// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RouteRequestLinePatternEnum _$routeRequestLinePatternEnum_solid =
    const RouteRequestLinePatternEnum._('solid');
const RouteRequestLinePatternEnum _$routeRequestLinePatternEnum_dashed =
    const RouteRequestLinePatternEnum._('dashed');

RouteRequestLinePatternEnum _$routeRequestLinePatternEnumValueOf(String name) {
  switch (name) {
    case 'solid':
      return _$routeRequestLinePatternEnum_solid;
    case 'dashed':
      return _$routeRequestLinePatternEnum_dashed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RouteRequestLinePatternEnum>
    _$routeRequestLinePatternEnumValues =
    BuiltSet<RouteRequestLinePatternEnum>(const <RouteRequestLinePatternEnum>[
  _$routeRequestLinePatternEnum_solid,
  _$routeRequestLinePatternEnum_dashed,
]);

Serializer<RouteRequestLinePatternEnum>
    _$routeRequestLinePatternEnumSerializer =
    _$RouteRequestLinePatternEnumSerializer();

class _$RouteRequestLinePatternEnumSerializer
    implements PrimitiveSerializer<RouteRequestLinePatternEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'dashed': 'dashed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'dashed': 'dashed',
  };

  @override
  final Iterable<Type> types = const <Type>[RouteRequestLinePatternEnum];
  @override
  final String wireName = 'RouteRequestLinePatternEnum';

  @override
  Object serialize(Serializers serializers, RouteRequestLinePatternEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RouteRequestLinePatternEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RouteRequestLinePatternEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RouteRequest extends RouteRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? colorCode;
  @override
  final RouteRequestLinePatternEnum? linePattern;
  @override
  final bool? isActive;

  factory _$RouteRequest([void Function(RouteRequestBuilder)? updates]) =>
      (RouteRequestBuilder()..update(updates))._build();

  _$RouteRequest._(
      {required this.name,
      this.description,
      this.colorCode,
      this.linePattern,
      this.isActive})
      : super._();
  @override
  RouteRequest rebuild(void Function(RouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RouteRequestBuilder toBuilder() => RouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RouteRequest &&
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
    return (newBuiltValueToStringHelper(r'RouteRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('colorCode', colorCode)
          ..add('linePattern', linePattern)
          ..add('isActive', isActive))
        .toString();
  }
}

class RouteRequestBuilder
    implements Builder<RouteRequest, RouteRequestBuilder> {
  _$RouteRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _colorCode;
  String? get colorCode => _$this._colorCode;
  set colorCode(String? colorCode) => _$this._colorCode = colorCode;

  RouteRequestLinePatternEnum? _linePattern;
  RouteRequestLinePatternEnum? get linePattern => _$this._linePattern;
  set linePattern(RouteRequestLinePatternEnum? linePattern) =>
      _$this._linePattern = linePattern;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  RouteRequestBuilder() {
    RouteRequest._defaults(this);
  }

  RouteRequestBuilder get _$this {
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
  void replace(RouteRequest other) {
    _$v = other as _$RouteRequest;
  }

  @override
  void update(void Function(RouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RouteRequest build() => _build();

  _$RouteRequest _build() {
    final _$result = _$v ??
        _$RouteRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'RouteRequest', 'name'),
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
