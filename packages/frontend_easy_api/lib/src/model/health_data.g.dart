// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthData _$HealthDataFromJson(Map<String, dynamic> json) => $checkedCreate(
  'HealthData',
  json,
  ($checkedConvert) {
    final val = HealthData(
      batteryLevel: $checkedConvert(
        'battery_level',
        (v) => (v as num?)?.toInt(),
      ),
      isCharging: $checkedConvert('is_charging', (v) => v as bool? ?? false),
      storageAvailableMb: $checkedConvert(
        'storage_available_mb',
        (v) => (v as num?)?.toInt(),
      ),
      cameraActive: $checkedConvert(
        'camera_active',
        (v) => v as bool? ?? false,
      ),
      networkType: $checkedConvert('network_type', (v) => v as String?),
      appVersion: $checkedConvert('app_version', (v) => v as String?),
      lastFaceDetectedAgoMin: $checkedConvert(
        'last_face_detected_ago_min',
        (v) => (v as num?)?.toInt(),
      ),
      facesDetectedToday: $checkedConvert(
        'faces_detected_today',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
      studentsIdentifiedToday: $checkedConvert(
        'students_identified_today',
        (v) => (v as num?)?.toInt() ?? 0,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'batteryLevel': 'battery_level',
    'isCharging': 'is_charging',
    'storageAvailableMb': 'storage_available_mb',
    'cameraActive': 'camera_active',
    'networkType': 'network_type',
    'appVersion': 'app_version',
    'lastFaceDetectedAgoMin': 'last_face_detected_ago_min',
    'facesDetectedToday': 'faces_detected_today',
    'studentsIdentifiedToday': 'students_identified_today',
  },
);

Map<String, dynamic> _$HealthDataToJson(HealthData instance) =>
    <String, dynamic>{
      if (instance.batteryLevel case final value?) 'battery_level': value,
      if (instance.isCharging case final value?) 'is_charging': value,
      if (instance.storageAvailableMb case final value?)
        'storage_available_mb': value,
      if (instance.cameraActive case final value?) 'camera_active': value,
      if (instance.networkType case final value?) 'network_type': value,
      if (instance.appVersion case final value?) 'app_version': value,
      if (instance.lastFaceDetectedAgoMin case final value?)
        'last_face_detected_ago_min': value,
      if (instance.facesDetectedToday case final value?)
        'faces_detected_today': value,
      if (instance.studentsIdentifiedToday case final value?)
        'students_identified_today': value,
    };
