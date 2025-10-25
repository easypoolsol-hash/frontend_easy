//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dashboard_stats.g.dart';

/// Serializer for dashboard statistics response.
///
/// Properties:
/// * [date] - Date for stats (YYYY-MM-DD)
/// * [activeBuses] - Number of active buses
/// * [totalBuses] - Total buses in fleet
/// * [studentsBoardedToday] - Unique students who boarded today
/// * [totalEventsToday] - Total boarding events today
/// * [lastUpdated] - When this data was last calculated
@BuiltValue()
abstract class DashboardStats implements Built<DashboardStats, DashboardStatsBuilder> {
  /// Date for stats (YYYY-MM-DD)
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Number of active buses
  @BuiltValueField(wireName: r'active_buses')
  int get activeBuses;

  /// Total buses in fleet
  @BuiltValueField(wireName: r'total_buses')
  int get totalBuses;

  /// Unique students who boarded today
  @BuiltValueField(wireName: r'students_boarded_today')
  int get studentsBoardedToday;

  /// Total boarding events today
  @BuiltValueField(wireName: r'total_events_today')
  int get totalEventsToday;

  /// When this data was last calculated
  @BuiltValueField(wireName: r'last_updated')
  DateTime get lastUpdated;

  DashboardStats._();

  factory DashboardStats([void updates(DashboardStatsBuilder b)]) = _$DashboardStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DashboardStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DashboardStats> get serializer => _$DashboardStatsSerializer();
}

class _$DashboardStatsSerializer implements PrimitiveSerializer<DashboardStats> {
  @override
  final Iterable<Type> types = const [DashboardStats, _$DashboardStats];

  @override
  final String wireName = r'DashboardStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DashboardStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'active_buses';
    yield serializers.serialize(
      object.activeBuses,
      specifiedType: const FullType(int),
    );
    yield r'total_buses';
    yield serializers.serialize(
      object.totalBuses,
      specifiedType: const FullType(int),
    );
    yield r'students_boarded_today';
    yield serializers.serialize(
      object.studentsBoardedToday,
      specifiedType: const FullType(int),
    );
    yield r'total_events_today';
    yield serializers.serialize(
      object.totalEventsToday,
      specifiedType: const FullType(int),
    );
    yield r'last_updated';
    yield serializers.serialize(
      object.lastUpdated,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DashboardStats object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DashboardStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'active_buses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeBuses = valueDes;
          break;
        case r'total_buses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalBuses = valueDes;
          break;
        case r'students_boarded_today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.studentsBoardedToday = valueDes;
          break;
        case r'total_events_today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalEventsToday = valueDes;
          break;
        case r'last_updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DashboardStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DashboardStatsBuilder();
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

