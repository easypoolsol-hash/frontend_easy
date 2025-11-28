//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_log.g.dart';

/// AuditLog
///
/// Properties:
/// * [logId] 
/// * [user] 
/// * [userUsername] 
/// * [userEmail] 
/// * [action] - * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
/// * [resourceType] - * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
/// * [resourceId] 
/// * [changes] - JSON object of changes made
/// * [ipAddress] 
/// * [userAgent] 
/// * [timestamp] 
@BuiltValue()
abstract class AuditLog implements Built<AuditLog, AuditLogBuilder> {
  @BuiltValueField(wireName: r'log_id')
  int get logId;

  @BuiltValueField(wireName: r'user')
  String? get user;

  @BuiltValueField(wireName: r'user_username')
  String get userUsername;

  @BuiltValueField(wireName: r'user_email')
  String get userEmail;

  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @BuiltValueField(wireName: r'action')
  AuditLogActionEnum get action;
  // enum actionEnum {  CREATE,  UPDATE,  DELETE,  LOGIN,  LOGIN_FAILED,  LOGOUT,  API_ACCESS,  };

  /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  @BuiltValueField(wireName: r'resource_type')
  AuditLogResourceTypeEnum get resourceType;
  // enum resourceTypeEnum {  user,  student,  bus,  kiosk,  event,  notification,  };

  @BuiltValueField(wireName: r'resource_id')
  String? get resourceId;

  /// JSON object of changes made
  @BuiltValueField(wireName: r'changes')
  JsonObject? get changes;

  @BuiltValueField(wireName: r'ip_address')
  String? get ipAddress;

  @BuiltValueField(wireName: r'user_agent')
  String? get userAgent;

  @BuiltValueField(wireName: r'timestamp')
  DateTime get timestamp;

  AuditLog._();

  factory AuditLog([void updates(AuditLogBuilder b)]) = _$AuditLog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuditLogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuditLog> get serializer => _$AuditLogSerializer();
}

class _$AuditLogSerializer implements PrimitiveSerializer<AuditLog> {
  @override
  final Iterable<Type> types = const [AuditLog, _$AuditLog];

  @override
  final String wireName = r'AuditLog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuditLog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'log_id';
    yield serializers.serialize(
      object.logId,
      specifiedType: const FullType(int),
    );
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'user_username';
    yield serializers.serialize(
      object.userUsername,
      specifiedType: const FullType(String),
    );
    yield r'user_email';
    yield serializers.serialize(
      object.userEmail,
      specifiedType: const FullType(String),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(AuditLogActionEnum),
    );
    yield r'resource_type';
    yield serializers.serialize(
      object.resourceType,
      specifiedType: const FullType(AuditLogResourceTypeEnum),
    );
    if (object.resourceId != null) {
      yield r'resource_id';
      yield serializers.serialize(
        object.resourceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.changes != null) {
      yield r'changes';
      yield serializers.serialize(
        object.changes,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.ipAddress != null) {
      yield r'ip_address';
      yield serializers.serialize(
        object.ipAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userAgent != null) {
      yield r'user_agent';
      yield serializers.serialize(
        object.userAgent,
        specifiedType: const FullType(String),
      );
    }
    yield r'timestamp';
    yield serializers.serialize(
      object.timestamp,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuditLog object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuditLogBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'log_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logId = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.user = valueDes;
          break;
        case r'user_username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userUsername = valueDes;
          break;
        case r'user_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userEmail = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuditLogActionEnum),
          ) as AuditLogActionEnum;
          result.action = valueDes;
          break;
        case r'resource_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuditLogResourceTypeEnum),
          ) as AuditLogResourceTypeEnum;
          result.resourceType = valueDes;
          break;
        case r'resource_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceId = valueDes;
          break;
        case r'changes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.changes = valueDes;
          break;
        case r'ip_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ipAddress = valueDes;
          break;
        case r'user_agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userAgent = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuditLog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuditLogBuilder();
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

class AuditLogActionEnum extends EnumClass {

  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @BuiltValueEnumConst(wireName: r'CREATE')
  static const AuditLogActionEnum CREATE = _$auditLogActionEnum_CREATE;
  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const AuditLogActionEnum UPDATE = _$auditLogActionEnum_UPDATE;
  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const AuditLogActionEnum DELETE = _$auditLogActionEnum_DELETE;
  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @BuiltValueEnumConst(wireName: r'LOGIN')
  static const AuditLogActionEnum LOGIN = _$auditLogActionEnum_LOGIN;
  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @BuiltValueEnumConst(wireName: r'LOGIN_FAILED')
  static const AuditLogActionEnum LOGIN_FAILED = _$auditLogActionEnum_LOGIN_FAILED;
  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @BuiltValueEnumConst(wireName: r'LOGOUT')
  static const AuditLogActionEnum LOGOUT = _$auditLogActionEnum_LOGOUT;
  /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGIN_FAILED` - Login Failed * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @BuiltValueEnumConst(wireName: r'API_ACCESS')
  static const AuditLogActionEnum API_ACCESS = _$auditLogActionEnum_API_ACCESS;

  static Serializer<AuditLogActionEnum> get serializer => _$auditLogActionEnumSerializer;

  const AuditLogActionEnum._(String name): super(name);

  static BuiltSet<AuditLogActionEnum> get values => _$auditLogActionEnumValues;
  static AuditLogActionEnum valueOf(String name) => _$auditLogActionEnumValueOf(name);
}

class AuditLogResourceTypeEnum extends EnumClass {

  /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  @BuiltValueEnumConst(wireName: r'user')
  static const AuditLogResourceTypeEnum user = _$auditLogResourceTypeEnum_user;
  /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  @BuiltValueEnumConst(wireName: r'student')
  static const AuditLogResourceTypeEnum student = _$auditLogResourceTypeEnum_student;
  /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  @BuiltValueEnumConst(wireName: r'bus')
  static const AuditLogResourceTypeEnum bus = _$auditLogResourceTypeEnum_bus;
  /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  @BuiltValueEnumConst(wireName: r'kiosk')
  static const AuditLogResourceTypeEnum kiosk = _$auditLogResourceTypeEnum_kiosk;
  /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  @BuiltValueEnumConst(wireName: r'event')
  static const AuditLogResourceTypeEnum event = _$auditLogResourceTypeEnum_event;
  /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  @BuiltValueEnumConst(wireName: r'notification')
  static const AuditLogResourceTypeEnum notification = _$auditLogResourceTypeEnum_notification;

  static Serializer<AuditLogResourceTypeEnum> get serializer => _$auditLogResourceTypeEnumSerializer;

  const AuditLogResourceTypeEnum._(String name): super(name);

  static BuiltSet<AuditLogResourceTypeEnum> get values => _$auditLogResourceTypeEnumValues;
  static AuditLogResourceTypeEnum valueOf(String name) => _$auditLogResourceTypeEnumValueOf(name);
}

