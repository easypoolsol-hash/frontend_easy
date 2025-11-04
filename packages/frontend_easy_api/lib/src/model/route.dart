//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/route_stop.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'route.g.dart';

/// Serializer for bus routes with polyline support
///
/// Properties:
/// * [routeId] - UUID primary key
/// * [name] - Route name (e.g., 'Route A', 'North Loop')
/// * [description] - Detailed description of the route
/// * [colorCode] - Hex color for map display (e.g., #FF5733)
/// * [linePattern] - Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
/// * [isActive] - Whether this route is currently active
/// * [stopCount] 
/// * [totalStudents] 
/// * [routeStops] 
/// * [encodedPolyline] 
/// * [busStops] 
/// * [createdAt] - When this route was created
/// * [updatedAt] - When this route was last updated
@BuiltValue()
abstract class Route implements Built<Route, RouteBuilder> {
  /// UUID primary key
  @BuiltValueField(wireName: r'route_id')
  String get routeId;

  /// Route name (e.g., 'Route A', 'North Loop')
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Detailed description of the route
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Hex color for map display (e.g., #FF5733)
  @BuiltValueField(wireName: r'color_code')
  String? get colorCode;

  /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  @BuiltValueField(wireName: r'line_pattern')
  RouteLinePatternEnum? get linePattern;
  // enum linePatternEnum {  solid,  dashed,  };

  /// Whether this route is currently active
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: r'stop_count')
  int get stopCount;

  @BuiltValueField(wireName: r'total_students')
  int get totalStudents;

  @BuiltValueField(wireName: r'route_stops')
  BuiltList<RouteStop> get routeStops;

  @BuiltValueField(wireName: r'encoded_polyline')
  String get encodedPolyline;

  @BuiltValueField(wireName: r'bus_stops')
  BuiltList<BuiltMap<String, JsonObject?>> get busStops;

  /// When this route was created
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// When this route was last updated
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  Route._();

  factory Route([void updates(RouteBuilder b)]) = _$Route;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RouteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Route> get serializer => _$RouteSerializer();
}

class _$RouteSerializer implements PrimitiveSerializer<Route> {
  @override
  final Iterable<Type> types = const [Route, _$Route];

  @override
  final String wireName = r'Route';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Route object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'route_id';
    yield serializers.serialize(
      object.routeId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
        specifiedType: const FullType(RouteLinePatternEnum),
      );
    }
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    yield r'stop_count';
    yield serializers.serialize(
      object.stopCount,
      specifiedType: const FullType(int),
    );
    yield r'total_students';
    yield serializers.serialize(
      object.totalStudents,
      specifiedType: const FullType(int),
    );
    yield r'route_stops';
    yield serializers.serialize(
      object.routeStops,
      specifiedType: const FullType(BuiltList, [FullType(RouteStop)]),
    );
    yield r'encoded_polyline';
    yield serializers.serialize(
      object.encodedPolyline,
      specifiedType: const FullType(String),
    );
    yield r'bus_stops';
    yield serializers.serialize(
      object.busStops,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Route object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RouteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'route_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.routeId = valueDes;
          break;
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
            specifiedType: const FullType(RouteLinePatternEnum),
          ) as RouteLinePatternEnum;
          result.linePattern = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'stop_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.stopCount = valueDes;
          break;
        case r'total_students':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalStudents = valueDes;
          break;
        case r'route_stops':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RouteStop)]),
          ) as BuiltList<RouteStop>;
          result.routeStops.replace(valueDes);
          break;
        case r'encoded_polyline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encodedPolyline = valueDes;
          break;
        case r'bus_stops':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)])]),
          ) as BuiltList<BuiltMap<String, JsonObject?>>;
          result.busStops.replace(valueDes);
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Route deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteBuilder();
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

class RouteLinePatternEnum extends EnumClass {

  /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  @BuiltValueEnumConst(wireName: r'solid')
  static const RouteLinePatternEnum solid = _$routeLinePatternEnum_solid;
  /// Line pattern for map visualization  * `solid` - Solid Line * `dashed` - Dashed Line
  @BuiltValueEnumConst(wireName: r'dashed')
  static const RouteLinePatternEnum dashed = _$routeLinePatternEnum_dashed;

  static Serializer<RouteLinePatternEnum> get serializer => _$routeLinePatternEnumSerializer;

  const RouteLinePatternEnum._(String name): super(name);

  static BuiltSet<RouteLinePatternEnum> get values => _$routeLinePatternEnumValues;
  static RouteLinePatternEnum valueOf(String name) => _$routeLinePatternEnumValueOf(name);
}

