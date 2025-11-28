//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_route_request.g.dart';

/// Serializer for bus routes with polyline support
///
/// Properties:
/// * [name] - Route name (e.g., 'Route A', 'North Loop')
/// * [description] - Detailed description of the route
/// * [colorCode] - Hex color for map display (e.g., #FF5733)
/// * [linePattern] - Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
/// * [isActive] - Whether this route is currently active
@BuiltValue()
abstract class PatchedRouteRequest implements Built<PatchedRouteRequest, PatchedRouteRequestBuilder> {
  /// Route name (e.g., 'Route A', 'North Loop')
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Detailed description of the route
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Hex color for map display (e.g., #FF5733)
  @BuiltValueField(wireName: r'color_code')
  String? get colorCode;

  /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  @BuiltValueField(wireName: r'line_pattern')
  PatchedRouteRequestLinePatternEnum? get linePattern;
  // enum linePatternEnum {  solid,  dashed,  };

  /// Whether this route is currently active
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  PatchedRouteRequest._();

  factory PatchedRouteRequest([void updates(PatchedRouteRequestBuilder b)]) = _$PatchedRouteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedRouteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedRouteRequest> get serializer => _$PatchedRouteRequestSerializer();
}

class _$PatchedRouteRequestSerializer implements PrimitiveSerializer<PatchedRouteRequest> {
  @override
  final Iterable<Type> types = const [PatchedRouteRequest, _$PatchedRouteRequest];

  @override
  final String wireName = r'PatchedRouteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.colorCode != null) {
      yield r'color_code';
      yield serializers.serialize(
        object.colorCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.linePattern != null) {
      yield r'line_pattern';
      yield serializers.serialize(
        object.linePattern,
        specifiedType: const FullType(PatchedRouteRequestLinePatternEnum),
      );
    }
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedRouteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedRouteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'color_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.colorCode = valueDes;
          break;
        case r'line_pattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PatchedRouteRequestLinePatternEnum),
          ) as PatchedRouteRequestLinePatternEnum;
          result.linePattern = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PatchedRouteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedRouteRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class PatchedRouteRequestLinePatternEnum extends EnumClass {

  /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  @BuiltValueEnumConst(wireName: r'solid')
  static const PatchedRouteRequestLinePatternEnum solid = _$patchedRouteRequestLinePatternEnum_solid;
  /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  @BuiltValueEnumConst(wireName: r'dashed')
  static const PatchedRouteRequestLinePatternEnum dashed = _$patchedRouteRequestLinePatternEnum_dashed;

  static Serializer<PatchedRouteRequestLinePatternEnum> get serializer => _$patchedRouteRequestLinePatternEnumSerializer;

  const PatchedRouteRequestLinePatternEnum._(String name): super(name);

  static BuiltSet<PatchedRouteRequestLinePatternEnum> get values => _$patchedRouteRequestLinePatternEnumValues;
  static PatchedRouteRequestLinePatternEnum valueOf(String name) => _$patchedRouteRequestLinePatternEnumValueOf(name);
}

