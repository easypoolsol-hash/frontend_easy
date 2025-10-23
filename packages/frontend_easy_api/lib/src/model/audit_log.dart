//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'audit_log.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AuditLog {
  /// Returns a new [AuditLog] instance.
  AuditLog({

    required  this.logId,

     this.user,

    required  this.userUsername,

    required  this.userEmail,

    required  this.action,

    required  this.resourceType,

     this.resourceId,

     this.changes,

     this.ipAddress,

     this.userAgent,

    required  this.timestamp,
  });

  @JsonKey(
    
    name: r'log_id',
    required: true,
    includeIfNull: false,
  )


  final int logId;



  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false,
  )


  final String? user;



  @JsonKey(
    
    name: r'user_username',
    required: true,
    includeIfNull: false,
  )


  final String userUsername;



  @JsonKey(
    
    name: r'user_email',
    required: true,
    includeIfNull: false,
  )


  final String userEmail;



      /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
  @JsonKey(
    
    name: r'action',
    required: true,
    includeIfNull: false,
  )


  final AuditLogActionEnum action;



      /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
  @JsonKey(
    
    name: r'resource_type',
    required: true,
    includeIfNull: false,
  )


  final AuditLogResourceTypeEnum resourceType;



  @JsonKey(
    
    name: r'resource_id',
    required: false,
    includeIfNull: false,
  )


  final String? resourceId;



      /// JSON object of changes made
  @JsonKey(
    
    name: r'changes',
    required: false,
    includeIfNull: false,
  )


  final Object? changes;



  @JsonKey(
    
    name: r'ip_address',
    required: false,
    includeIfNull: false,
  )


  final String? ipAddress;



  @JsonKey(
    
    name: r'user_agent',
    required: false,
    includeIfNull: false,
  )


  final String? userAgent;



  @JsonKey(
    
    name: r'timestamp',
    required: true,
    includeIfNull: false,
  )


  final DateTime timestamp;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AuditLog &&
      other.logId == logId &&
      other.user == user &&
      other.userUsername == userUsername &&
      other.userEmail == userEmail &&
      other.action == action &&
      other.resourceType == resourceType &&
      other.resourceId == resourceId &&
      other.changes == changes &&
      other.ipAddress == ipAddress &&
      other.userAgent == userAgent &&
      other.timestamp == timestamp;

    @override
    int get hashCode =>
        logId.hashCode +
        (user == null ? 0 : user.hashCode) +
        userUsername.hashCode +
        userEmail.hashCode +
        action.hashCode +
        resourceType.hashCode +
        resourceId.hashCode +
        (changes == null ? 0 : changes.hashCode) +
        (ipAddress == null ? 0 : ipAddress.hashCode) +
        userAgent.hashCode +
        timestamp.hashCode;

  factory AuditLog.fromJson(Map<String, dynamic> json) => _$AuditLogFromJson(json);

  Map<String, dynamic> toJson() => _$AuditLogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
enum AuditLogActionEnum {
    /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
@JsonValue(r'CREATE')
CREATE(r'CREATE'),
    /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
@JsonValue(r'UPDATE')
UPDATE(r'UPDATE'),
    /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
@JsonValue(r'DELETE')
DELETE(r'DELETE'),
    /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
@JsonValue(r'LOGIN')
LOGIN(r'LOGIN'),
    /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
@JsonValue(r'LOGOUT')
LOGOUT(r'LOGOUT'),
    /// * `CREATE` - Create * `UPDATE` - Update * `DELETE` - Delete * `LOGIN` - Login * `LOGOUT` - Logout * `API_ACCESS` - API Access
@JsonValue(r'API_ACCESS')
API_ACCESS(r'API_ACCESS');

const AuditLogActionEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
enum AuditLogResourceTypeEnum {
    /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
@JsonValue(r'user')
user(r'user'),
    /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
@JsonValue(r'student')
student(r'student'),
    /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
@JsonValue(r'bus')
bus(r'bus'),
    /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
@JsonValue(r'kiosk')
kiosk(r'kiosk'),
    /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
@JsonValue(r'event')
event(r'event'),
    /// * `user` - User * `student` - Student * `bus` - Bus * `kiosk` - Kiosk * `event` - Boarding Event * `notification` - Notification
@JsonValue(r'notification')
notification(r'notification');

const AuditLogResourceTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


