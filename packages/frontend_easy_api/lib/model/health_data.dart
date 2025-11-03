//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

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

  /// Minimum value: 0
  /// Maximum value: 100
  int? batteryLevel;

  bool isCharging;

  /// Minimum value: 0
  int? storageAvailableMb;

  bool cameraActive;

  String? networkType;

  String? appVersion;

  /// Minimum value: 0
  int? lastFaceDetectedAgoMin;

  /// Minimum value: 0
  int facesDetectedToday;

  /// Minimum value: 0
  int studentsIdentifiedToday;

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
    // ignore: unnecessary_parenthesis
    (batteryLevel == null ? 0 : batteryLevel!.hashCode) +
    (isCharging.hashCode) +
    (storageAvailableMb == null ? 0 : storageAvailableMb!.hashCode) +
    (cameraActive.hashCode) +
    (networkType == null ? 0 : networkType!.hashCode) +
    (appVersion == null ? 0 : appVersion!.hashCode) +
    (lastFaceDetectedAgoMin == null ? 0 : lastFaceDetectedAgoMin!.hashCode) +
    (facesDetectedToday.hashCode) +
    (studentsIdentifiedToday.hashCode);

  @override
  String toString() => 'HealthData[batteryLevel=$batteryLevel, isCharging=$isCharging, storageAvailableMb=$storageAvailableMb, cameraActive=$cameraActive, networkType=$networkType, appVersion=$appVersion, lastFaceDetectedAgoMin=$lastFaceDetectedAgoMin, facesDetectedToday=$facesDetectedToday, studentsIdentifiedToday=$studentsIdentifiedToday]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.batteryLevel != null) {
      json[r'battery_level'] = this.batteryLevel;
    } else {
      json[r'battery_level'] = null;
    }
      json[r'is_charging'] = this.isCharging;
    if (this.storageAvailableMb != null) {
      json[r'storage_available_mb'] = this.storageAvailableMb;
    } else {
      json[r'storage_available_mb'] = null;
    }
      json[r'camera_active'] = this.cameraActive;
    if (this.networkType != null) {
      json[r'network_type'] = this.networkType;
    } else {
      json[r'network_type'] = null;
    }
    if (this.appVersion != null) {
      json[r'app_version'] = this.appVersion;
    } else {
      json[r'app_version'] = null;
    }
    if (this.lastFaceDetectedAgoMin != null) {
      json[r'last_face_detected_ago_min'] = this.lastFaceDetectedAgoMin;
    } else {
      json[r'last_face_detected_ago_min'] = null;
    }
      json[r'faces_detected_today'] = this.facesDetectedToday;
      json[r'students_identified_today'] = this.studentsIdentifiedToday;
    return json;
  }

  /// Returns a new [HealthData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HealthData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HealthData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthData(
        batteryLevel: mapValueOfType<int>(json, r'battery_level'),
        isCharging: mapValueOfType<bool>(json, r'is_charging') ?? false,
        storageAvailableMb: mapValueOfType<int>(json, r'storage_available_mb'),
        cameraActive: mapValueOfType<bool>(json, r'camera_active') ?? false,
        networkType: mapValueOfType<String>(json, r'network_type'),
        appVersion: mapValueOfType<String>(json, r'app_version'),
        lastFaceDetectedAgoMin: mapValueOfType<int>(json, r'last_face_detected_ago_min'),
        facesDetectedToday: mapValueOfType<int>(json, r'faces_detected_today') ?? 0,
        studentsIdentifiedToday: mapValueOfType<int>(json, r'students_identified_today') ?? 0,
      );
    }
    return null;
  }

  static List<HealthData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HealthData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthData> mapFromJson(dynamic json) {
    final map = <String, HealthData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthData-objects as value to a dart map
  static Map<String, List<HealthData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HealthData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HealthData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

