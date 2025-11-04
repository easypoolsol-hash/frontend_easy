//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_data.g.dart';

/// Serializer for health metrics
///
/// Properties:
/// * [batteryLevel] 
/// * [isCharging] 
/// * [storageAvailableMb] 
/// * [cameraActive] 
/// * [networkType] 
/// * [appVersion] 
/// * [lastFaceDetectedAgoMin] 
/// * [facesDetectedToday] 
/// * [studentsIdentifiedToday] 
@BuiltValue()
abstract class HealthData implements Built<HealthData, HealthDataBuilder> {
  @BuiltValueField(wireName: r'battery_level')
  int? get batteryLevel;

  @BuiltValueField(wireName: r'is_charging')
  bool? get isCharging;

  @BuiltValueField(wireName: r'storage_available_mb')
  int? get storageAvailableMb;

  @BuiltValueField(wireName: r'camera_active')
  bool? get cameraActive;

  @BuiltValueField(wireName: r'network_type')
  String? get networkType;

  @BuiltValueField(wireName: r'app_version')
  String? get appVersion;

  @BuiltValueField(wireName: r'last_face_detected_ago_min')
  int? get lastFaceDetectedAgoMin;

  @BuiltValueField(wireName: r'faces_detected_today')
  int? get facesDetectedToday;

  @BuiltValueField(wireName: r'students_identified_today')
  int? get studentsIdentifiedToday;

  HealthData._();

  factory HealthData([void updates(HealthDataBuilder b)]) = _$HealthData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthDataBuilder b) => b
      ..isCharging = false
      ..cameraActive = false
      ..facesDetectedToday = 0
      ..studentsIdentifiedToday = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthData> get serializer => _$HealthDataSerializer();
}

class _$HealthDataSerializer implements PrimitiveSerializer<HealthData> {
  @override
  final Iterable<Type> types = const [HealthData, _$HealthData];

  @override
  final String wireName = r'HealthData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.batteryLevel != null) {
      yield r'battery_level';
      yield serializers.serialize(
        object.batteryLevel,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.isCharging != null) {
      yield r'is_charging';
      yield serializers.serialize(
        object.isCharging,
        specifiedType: const FullType(bool),
      );
    }
    if (object.storageAvailableMb != null) {
      yield r'storage_available_mb';
      yield serializers.serialize(
        object.storageAvailableMb,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.cameraActive != null) {
      yield r'camera_active';
      yield serializers.serialize(
        object.cameraActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.networkType != null) {
      yield r'network_type';
      yield serializers.serialize(
        object.networkType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.appVersion != null) {
      yield r'app_version';
      yield serializers.serialize(
        object.appVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastFaceDetectedAgoMin != null) {
      yield r'last_face_detected_ago_min';
      yield serializers.serialize(
        object.lastFaceDetectedAgoMin,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.facesDetectedToday != null) {
      yield r'faces_detected_today';
      yield serializers.serialize(
        object.facesDetectedToday,
        specifiedType: const FullType(int),
      );
    }
    if (object.studentsIdentifiedToday != null) {
      yield r'students_identified_today';
      yield serializers.serialize(
        object.studentsIdentifiedToday,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'battery_level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.batteryLevel = valueDes;
          break;
        case r'is_charging':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCharging = valueDes;
          break;
        case r'storage_available_mb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.storageAvailableMb = valueDes;
          break;
        case r'camera_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.cameraActive = valueDes;
          break;
        case r'network_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.networkType = valueDes;
          break;
        case r'app_version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appVersion = valueDes;
          break;
        case r'last_face_detected_ago_min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastFaceDetectedAgoMin = valueDes;
          break;
        case r'faces_detected_today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.facesDetectedToday = valueDes;
          break;
        case r'students_identified_today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.studentsIdentifiedToday = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HealthData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthDataBuilder();
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

