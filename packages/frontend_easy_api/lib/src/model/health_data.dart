//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'health_data.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HealthData {
  /// Returns a new [HealthData] instance.
  HealthData({

     this.batteryLevel,

     this.isCharging = false,

     this.storageAvailableMb,

     this.cameraActive = false,

     this.networkType,

     this.appVersion,

     this.lastFaceDetectedAgoMin,

     this.facesDetectedToday = 0,

     this.studentsIdentifiedToday = 0,
  });

          // minimum: 0
          // maximum: 100
  @JsonKey(

    name: r'battery_level',
    required: false,
    includeIfNull: false,
  )


  final int? batteryLevel;



  @JsonKey(
    defaultValue: false,
    name: r'is_charging',
    required: false,
    includeIfNull: false,
  )


  final bool? isCharging;



          // minimum: 0
  @JsonKey(

    name: r'storage_available_mb',
    required: false,
    includeIfNull: false,
  )


  final int? storageAvailableMb;



  @JsonKey(
    defaultValue: false,
    name: r'camera_active',
    required: false,
    includeIfNull: false,
  )


  final bool? cameraActive;



  @JsonKey(

    name: r'network_type',
    required: false,
    includeIfNull: false,
  )


  final String? networkType;



  @JsonKey(

    name: r'app_version',
    required: false,
    includeIfNull: false,
  )


  final String? appVersion;



          // minimum: 0
  @JsonKey(

    name: r'last_face_detected_ago_min',
    required: false,
    includeIfNull: false,
  )


  final int? lastFaceDetectedAgoMin;



          // minimum: 0
  @JsonKey(
    defaultValue: 0,
    name: r'faces_detected_today',
    required: false,
    includeIfNull: false,
  )


  final int? facesDetectedToday;



          // minimum: 0
  @JsonKey(
    defaultValue: 0,
    name: r'students_identified_today',
    required: false,
    includeIfNull: false,
  )


  final int? studentsIdentifiedToday;





    @override
    bool operator ==(Object other) => identical(this, other) || other is HealthData &&
      other.batteryLevel == batteryLevel &&
      other.isCharging == isCharging &&
      other.storageAvailableMb == storageAvailableMb &&
      other.cameraActive == cameraActive &&
      other.networkType == networkType &&
      other.appVersion == appVersion &&
      other.lastFaceDetectedAgoMin == lastFaceDetectedAgoMin &&
      other.facesDetectedToday == facesDetectedToday &&
      other.studentsIdentifiedToday == studentsIdentifiedToday;

    @override
    int get hashCode =>
        (batteryLevel == null ? 0 : batteryLevel.hashCode) +
        isCharging.hashCode +
        (storageAvailableMb == null ? 0 : storageAvailableMb.hashCode) +
        cameraActive.hashCode +
        (networkType == null ? 0 : networkType.hashCode) +
        (appVersion == null ? 0 : appVersion.hashCode) +
        (lastFaceDetectedAgoMin == null ? 0 : lastFaceDetectedAgoMin.hashCode) +
        facesDetectedToday.hashCode +
        studentsIdentifiedToday.hashCode;

  factory HealthData.fromJson(Map<String, dynamic> json) => _$HealthDataFromJson(json);

  Map<String, dynamic> toJson() => _$HealthDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
