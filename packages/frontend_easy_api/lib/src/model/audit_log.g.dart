// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_log.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuditLogActionEnum _$auditLogActionEnum_CREATE =
    const AuditLogActionEnum._('CREATE');
const AuditLogActionEnum _$auditLogActionEnum_UPDATE =
    const AuditLogActionEnum._('UPDATE');
const AuditLogActionEnum _$auditLogActionEnum_DELETE =
    const AuditLogActionEnum._('DELETE');
const AuditLogActionEnum _$auditLogActionEnum_LOGIN =
    const AuditLogActionEnum._('LOGIN');
const AuditLogActionEnum _$auditLogActionEnum_LOGOUT =
    const AuditLogActionEnum._('LOGOUT');
const AuditLogActionEnum _$auditLogActionEnum_API_ACCESS =
    const AuditLogActionEnum._('API_ACCESS');

AuditLogActionEnum _$auditLogActionEnumValueOf(String name) {
  switch (name) {
    case 'CREATE':
      return _$auditLogActionEnum_CREATE;
    case 'UPDATE':
      return _$auditLogActionEnum_UPDATE;
    case 'DELETE':
      return _$auditLogActionEnum_DELETE;
    case 'LOGIN':
      return _$auditLogActionEnum_LOGIN;
    case 'LOGOUT':
      return _$auditLogActionEnum_LOGOUT;
    case 'API_ACCESS':
      return _$auditLogActionEnum_API_ACCESS;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuditLogActionEnum> _$auditLogActionEnumValues =
    BuiltSet<AuditLogActionEnum>(const <AuditLogActionEnum>[
  _$auditLogActionEnum_CREATE,
  _$auditLogActionEnum_UPDATE,
  _$auditLogActionEnum_DELETE,
  _$auditLogActionEnum_LOGIN,
  _$auditLogActionEnum_LOGOUT,
  _$auditLogActionEnum_API_ACCESS,
]);

const AuditLogResourceTypeEnum _$auditLogResourceTypeEnum_user =
    const AuditLogResourceTypeEnum._('user');
const AuditLogResourceTypeEnum _$auditLogResourceTypeEnum_student =
    const AuditLogResourceTypeEnum._('student');
const AuditLogResourceTypeEnum _$auditLogResourceTypeEnum_bus =
    const AuditLogResourceTypeEnum._('bus');
const AuditLogResourceTypeEnum _$auditLogResourceTypeEnum_kiosk =
    const AuditLogResourceTypeEnum._('kiosk');
const AuditLogResourceTypeEnum _$auditLogResourceTypeEnum_event =
    const AuditLogResourceTypeEnum._('event');
const AuditLogResourceTypeEnum _$auditLogResourceTypeEnum_notification =
    const AuditLogResourceTypeEnum._('notification');

AuditLogResourceTypeEnum _$auditLogResourceTypeEnumValueOf(String name) {
  switch (name) {
    case 'user':
      return _$auditLogResourceTypeEnum_user;
    case 'student':
      return _$auditLogResourceTypeEnum_student;
    case 'bus':
      return _$auditLogResourceTypeEnum_bus;
    case 'kiosk':
      return _$auditLogResourceTypeEnum_kiosk;
    case 'event':
      return _$auditLogResourceTypeEnum_event;
    case 'notification':
      return _$auditLogResourceTypeEnum_notification;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuditLogResourceTypeEnum> _$auditLogResourceTypeEnumValues =
    BuiltSet<AuditLogResourceTypeEnum>(const <AuditLogResourceTypeEnum>[
  _$auditLogResourceTypeEnum_user,
  _$auditLogResourceTypeEnum_student,
  _$auditLogResourceTypeEnum_bus,
  _$auditLogResourceTypeEnum_kiosk,
  _$auditLogResourceTypeEnum_event,
  _$auditLogResourceTypeEnum_notification,
]);

Serializer<AuditLogActionEnum> _$auditLogActionEnumSerializer =
    _$AuditLogActionEnumSerializer();
Serializer<AuditLogResourceTypeEnum> _$auditLogResourceTypeEnumSerializer =
    _$AuditLogResourceTypeEnumSerializer();

class _$AuditLogActionEnumSerializer
    implements PrimitiveSerializer<AuditLogActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CREATE': 'CREATE',
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
    'LOGIN': 'LOGIN',
    'LOGOUT': 'LOGOUT',
    'API_ACCESS': 'API_ACCESS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CREATE': 'CREATE',
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
    'LOGIN': 'LOGIN',
    'LOGOUT': 'LOGOUT',
    'API_ACCESS': 'API_ACCESS',
  };

  @override
  final Iterable<Type> types = const <Type>[AuditLogActionEnum];
  @override
  final String wireName = 'AuditLogActionEnum';

  @override
  Object serialize(Serializers serializers, AuditLogActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuditLogActionEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuditLogActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AuditLogResourceTypeEnumSerializer
    implements PrimitiveSerializer<AuditLogResourceTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'student': 'student',
    'bus': 'bus',
    'kiosk': 'kiosk',
    'event': 'event',
    'notification': 'notification',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'student': 'student',
    'bus': 'bus',
    'kiosk': 'kiosk',
    'event': 'event',
    'notification': 'notification',
  };

  @override
  final Iterable<Type> types = const <Type>[AuditLogResourceTypeEnum];
  @override
  final String wireName = 'AuditLogResourceTypeEnum';

  @override
  Object serialize(Serializers serializers, AuditLogResourceTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuditLogResourceTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuditLogResourceTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AuditLog extends AuditLog {
  @override
  final int logId;
  @override
  final String? user;
  @override
  final String userUsername;
  @override
  final String userEmail;
  @override
  final AuditLogActionEnum action;
  @override
  final AuditLogResourceTypeEnum resourceType;
  @override
  final String? resourceId;
  @override
  final JsonObject? changes;
  @override
  final String? ipAddress;
  @override
  final String? userAgent;
  @override
  final DateTime timestamp;

  factory _$AuditLog([void Function(AuditLogBuilder)? updates]) =>
      (AuditLogBuilder()..update(updates))._build();

  _$AuditLog._(
      {required this.logId,
      this.user,
      required this.userUsername,
      required this.userEmail,
      required this.action,
      required this.resourceType,
      this.resourceId,
      this.changes,
      this.ipAddress,
      this.userAgent,
      required this.timestamp})
      : super._();
  @override
  AuditLog rebuild(void Function(AuditLogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuditLogBuilder toBuilder() => AuditLogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuditLog &&
        logId == other.logId &&
        user == other.user &&
        userUsername == other.userUsername &&
        userEmail == other.userEmail &&
        action == other.action &&
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        changes == other.changes &&
        ipAddress == other.ipAddress &&
        userAgent == other.userAgent &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logId.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, userUsername.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, changes.hashCode);
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jc(_$hash, userAgent.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuditLog')
          ..add('logId', logId)
          ..add('user', user)
          ..add('userUsername', userUsername)
          ..add('userEmail', userEmail)
          ..add('action', action)
          ..add('resourceType', resourceType)
          ..add('resourceId', resourceId)
          ..add('changes', changes)
          ..add('ipAddress', ipAddress)
          ..add('userAgent', userAgent)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class AuditLogBuilder implements Builder<AuditLog, AuditLogBuilder> {
  _$AuditLog? _$v;

  int? _logId;
  int? get logId => _$this._logId;
  set logId(int? logId) => _$this._logId = logId;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _userUsername;
  String? get userUsername => _$this._userUsername;
  set userUsername(String? userUsername) => _$this._userUsername = userUsername;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(String? userEmail) => _$this._userEmail = userEmail;

  AuditLogActionEnum? _action;
  AuditLogActionEnum? get action => _$this._action;
  set action(AuditLogActionEnum? action) => _$this._action = action;

  AuditLogResourceTypeEnum? _resourceType;
  AuditLogResourceTypeEnum? get resourceType => _$this._resourceType;
  set resourceType(AuditLogResourceTypeEnum? resourceType) =>
      _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  JsonObject? _changes;
  JsonObject? get changes => _$this._changes;
  set changes(JsonObject? changes) => _$this._changes = changes;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  String? _userAgent;
  String? get userAgent => _$this._userAgent;
  set userAgent(String? userAgent) => _$this._userAgent = userAgent;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  AuditLogBuilder() {
    AuditLog._defaults(this);
  }

  AuditLogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logId = $v.logId;
      _user = $v.user;
      _userUsername = $v.userUsername;
      _userEmail = $v.userEmail;
      _action = $v.action;
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _changes = $v.changes;
      _ipAddress = $v.ipAddress;
      _userAgent = $v.userAgent;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuditLog other) {
    _$v = other as _$AuditLog;
  }

  @override
  void update(void Function(AuditLogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuditLog build() => _build();

  _$AuditLog _build() {
    final _$result = _$v ??
        _$AuditLog._(
          logId: BuiltValueNullFieldError.checkNotNull(
              logId, r'AuditLog', 'logId'),
          user: user,
          userUsername: BuiltValueNullFieldError.checkNotNull(
              userUsername, r'AuditLog', 'userUsername'),
          userEmail: BuiltValueNullFieldError.checkNotNull(
              userEmail, r'AuditLog', 'userEmail'),
          action: BuiltValueNullFieldError.checkNotNull(
              action, r'AuditLog', 'action'),
          resourceType: BuiltValueNullFieldError.checkNotNull(
              resourceType, r'AuditLog', 'resourceType'),
          resourceId: resourceId,
          changes: changes,
          ipAddress: ipAddress,
          userAgent: userAgent,
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'AuditLog', 'timestamp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
