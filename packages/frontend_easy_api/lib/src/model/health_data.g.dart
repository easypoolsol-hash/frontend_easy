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
      'battery_level': ?instance.batteryLevel,
      'is_charging': ?instance.isCharging,
      'storage_available_mb': ?instance.storageAvailableMb,
      'camera_active': ?instance.cameraActive,
      'network_type': ?instance.networkType,
      'app_version': ?instance.appVersion,
      'last_face_detected_ago_min': ?instance.lastFaceDetectedAgoMin,
      'faces_detected_today': ?instance.facesDetectedToday,
      'students_identified_today': ?instance.studentsIdentifiedToday,
    };
