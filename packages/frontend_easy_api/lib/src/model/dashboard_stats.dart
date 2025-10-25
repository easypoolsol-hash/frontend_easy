//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_stats.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DashboardStats {
  /// Returns a new [DashboardStats] instance.
  DashboardStats({

    required  this.date,

    required  this.activeBuses,

    required  this.totalBuses,

    required  this.studentsBoardedToday,

    required  this.totalEventsToday,

    required  this.lastUpdated,
  });

      /// Date for stats (YYYY-MM-DD)
  @JsonKey(
    
    name: r'date',
    required: true,
    includeIfNull: false,
  )


  final DateTime date;



      /// Number of active buses
  @JsonKey(
    
    name: r'active_buses',
    required: true,
    includeIfNull: false,
  )


  final int activeBuses;



      /// Total buses in fleet
  @JsonKey(
    
    name: r'total_buses',
    required: true,
    includeIfNull: false,
  )


  final int totalBuses;



      /// Unique students who boarded today
  @JsonKey(
    
    name: r'students_boarded_today',
    required: true,
    includeIfNull: false,
  )


  final int studentsBoardedToday;



      /// Total boarding events today
  @JsonKey(
    
    name: r'total_events_today',
    required: true,
    includeIfNull: false,
  )


  final int totalEventsToday;



      /// When this data was last calculated
  @JsonKey(
    
    name: r'last_updated',
    required: true,
    includeIfNull: false,
  )


  final DateTime lastUpdated;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DashboardStats &&
      other.date == date &&
      other.activeBuses == activeBuses &&
      other.totalBuses == totalBuses &&
      other.studentsBoardedToday == studentsBoardedToday &&
      other.totalEventsToday == totalEventsToday &&
      other.lastUpdated == lastUpdated;

    @override
    int get hashCode =>
        date.hashCode +
        activeBuses.hashCode +
        totalBuses.hashCode +
        studentsBoardedToday.hashCode +
        totalEventsToday.hashCode +
        lastUpdated.hashCode;

  factory DashboardStats.fromJson(Map<String, dynamic> json) => _$DashboardStatsFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardStatsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

