//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/route_stop.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'patched_route.g.dart';

/// Serializer for bus routes
///
/// Properties:
/// * [routeId] - UUID primary key
/// * [name] - Route name (e.g., 'Route A', 'North Loop')
/// * [description] - Detailed description of the route
/// * [isActive] - Whether this route is currently active
/// * [stopCount] 
/// * [totalStudents] 
/// * [routeStops] 
/// * [createdAt] - When this route was created
/// * [updatedAt] - When this route was last updated
@BuiltValue()
abstract class PatchedRoute implements Built<PatchedRoute, PatchedRouteBuilder> {
  /// UUID primary key
  @BuiltValueField(wireName: r'route_id')
  String? get routeId;

  /// Route name (e.g., 'Route A', 'North Loop')
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Detailed description of the route
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Whether this route is currently active
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: r'stop_count')
  int? get stopCount;

  @BuiltValueField(wireName: r'total_students')
  int? get totalStudents;

  @BuiltValueField(wireName: r'route_stops')
  BuiltList<RouteStop>? get routeStops;

  /// When this route was created
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// When this route was last updated
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  PatchedRoute._();

  factory PatchedRoute([void updates(PatchedRouteBuilder b)]) = _$PatchedRoute;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PatchedRouteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PatchedRoute> get serializer => _$PatchedRouteSerializer();
}

class _$PatchedRouteSerializer implements PrimitiveSerializer<PatchedRoute> {
  @override
  final Iterable<Type> types = const [PatchedRoute, _$PatchedRoute];

  @override
  final String wireName = r'PatchedRoute';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PatchedRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.routeId != null) {
      yield r'route_id';
      yield serializers.serialize(
        object.routeId,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.stopCount != null) {
      yield r'stop_count';
      yield serializers.serialize(
        object.stopCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalStudents != null) {
      yield r'total_students';
      yield serializers.serialize(
        object.totalStudents,
        specifiedType: const FullType(int),
      );
    }
    if (object.routeStops != null) {
      yield r'route_stops';
      yield serializers.serialize(
        object.routeStops,
        specifiedType: const FullType(BuiltList, [FullType(RouteStop)]),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PatchedRoute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PatchedRouteBuilder result,
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
  PatchedRoute deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PatchedRouteBuilder();
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

