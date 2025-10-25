//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'device_log.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceLog {
  /// Returns a new [DeviceLog] instance.
  DeviceLog({

    required  this.logId,

    required  this.kiosk,

    required  this.kioskId,

    required  this.logLevel,

    required  this.message,

     this.metadata,

    required  this.timestamp,
  });

      /// Auto-incrementing log entry ID
  @JsonKey(
    
    name: r'log_id',
    required: true,
    includeIfNull: false,
  )


  final int logId;



      /// Kiosk that generated this log entry
  @JsonKey(
    
    name: r'kiosk',
    required: true,
    includeIfNull: false,
  )


  final String kiosk;



  @JsonKey(
    
    name: r'kiosk_id',
    required: true,
    includeIfNull: false,
  )


  final String kioskId;



      /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
  @JsonKey(
    
    name: r'log_level',
    required: true,
    includeIfNull: false,
  )


  final DeviceLogLogLevelEnum logLevel;



      /// Log message content
  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



      /// Additional structured data as JSON
  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false,
  )


  final Object? metadata;



      /// When this log entry was created
  @JsonKey(
    
    name: r'timestamp',
    required: true,
    includeIfNull: false,
  )


  final DateTime timestamp;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DeviceLog &&
      other.logId == logId &&
      other.kiosk == kiosk &&
      other.kioskId == kioskId &&
      other.logLevel == logLevel &&
      other.message == message &&
      other.metadata == metadata &&
      other.timestamp == timestamp;

    @override
    int get hashCode =>
        logId.hashCode +
        kiosk.hashCode +
        kioskId.hashCode +
        logLevel.hashCode +
        message.hashCode +
        (metadata == null ? 0 : metadata.hashCode) +
        timestamp.hashCode;

  factory DeviceLog.fromJson(Map<String, dynamic> json) => _$DeviceLogFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceLogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
enum DeviceLogLogLevelEnum {
    /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
@JsonValue(r'DEBUG')
DEBUG(r'DEBUG'),
    /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
@JsonValue(r'INFO')
INFO(r'INFO'),
    /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
@JsonValue(r'WARN')
WARN(r'WARN'),
    /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
@JsonValue(r'ERROR')
ERROR(r'ERROR'),
    /// Log level severity  * `DEBUG` - Debug * `INFO` - Info * `WARN` - Warning * `ERROR` - Error * `CRITICAL` - Critical
@JsonValue(r'CRITICAL')
CRITICAL(r'CRITICAL');

const DeviceLogLogLevelEnum(this.value);

final String value;

@override
String toString() => value;
}


