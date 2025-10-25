//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role.g.dart';

/// Role
///
/// Properties:
/// * [roleId] 
/// * [name] - * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
/// * [description] 
/// * [permissions] - JSON object defining role permissions
/// * [isActive] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Role implements Built<Role, RoleBuilder> {
  @BuiltValueField(wireName: r'role_id')
  String get roleId;

  /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
  @BuiltValueField(wireName: r'name')
  RoleNameEnum get name;
  // enum nameEnum {  super_admin,  backend_engineer,  school_admin,  parent,  };

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// JSON object defining role permissions
  @BuiltValueField(wireName: r'permissions')
  JsonObject? get permissions;

  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  Role._();

  factory Role([void updates(RoleBuilder b)]) = _$Role;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RoleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Role> get serializer => _$RoleSerializer();
}

class _$RoleSerializer implements PrimitiveSerializer<Role> {
  @override
  final Iterable<Type> types = const [Role, _$Role];

  @override
  final String wireName = r'Role';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Role object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'role_id';
    yield serializers.serialize(
      object.roleId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(RoleNameEnum),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
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
    Role object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RoleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.roleId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RoleNameEnum),
          ) as RoleNameEnum;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.permissions = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
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
  Role deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleBuilder();
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

class RoleNameEnum extends EnumClass {

  /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
  @BuiltValueEnumConst(wireName: r'super_admin')
  static const RoleNameEnum superAdmin = _$roleNameEnum_superAdmin;
  /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
  @BuiltValueEnumConst(wireName: r'backend_engineer')
  static const RoleNameEnum backendEngineer = _$roleNameEnum_backendEngineer;
  /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
  @BuiltValueEnumConst(wireName: r'school_admin')
  static const RoleNameEnum schoolAdmin = _$roleNameEnum_schoolAdmin;
  /// * `super_admin` - Super Administrator * `backend_engineer` - Backend Engineer * `school_admin` - School Administrator * `parent` - Parent
  @BuiltValueEnumConst(wireName: r'parent')
  static const RoleNameEnum parent = _$roleNameEnum_parent;

  static Serializer<RoleNameEnum> get serializer => _$roleNameEnumSerializer;

  const RoleNameEnum._(String name): super(name);

  static BuiltSet<RoleNameEnum> get values => _$roleNameEnumValues;
  static RoleNameEnum valueOf(String name) => _$roleNameEnumValueOf(name);
}

