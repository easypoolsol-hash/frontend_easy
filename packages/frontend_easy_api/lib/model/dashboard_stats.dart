//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DashboardStats {
  /// Returns a new [DashboardStats] instance.
  DashboardStats({
    required this.date,
    required this.activeBuses,
    required this.totalBuses,
    required this.studentsBoardedToday,
    required this.totalEventsToday,
    required this.lastUpdated,
  });

  /// Date for stats (YYYY-MM-DD)
  DateTime date;

  /// Number of active buses
  int activeBuses;

  /// Total buses in fleet
  int totalBuses;

  /// Unique students who boarded today
  int studentsBoardedToday;

  /// Total boarding events today
  int totalEventsToday;

  /// When this data was last calculated
  DateTime lastUpdated;

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
    // ignore: unnecessary_parenthesis
    (date.hashCode) +
    (activeBuses.hashCode) +
    (totalBuses.hashCode) +
    (studentsBoardedToday.hashCode) +
    (totalEventsToday.hashCode) +
    (lastUpdated.hashCode);

  @override
  String toString() => 'DashboardStats[date=$date, activeBuses=$activeBuses, totalBuses=$totalBuses, studentsBoardedToday=$studentsBoardedToday, totalEventsToday=$totalEventsToday, lastUpdated=$lastUpdated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'active_buses'] = this.activeBuses;
      json[r'total_buses'] = this.totalBuses;
      json[r'students_boarded_today'] = this.studentsBoardedToday;
      json[r'total_events_today'] = this.totalEventsToday;
      json[r'last_updated'] = this.lastUpdated.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DashboardStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DashboardStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DashboardStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DashboardStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DashboardStats(
        date: mapDateTime(json, r'date', r'')!,
        activeBuses: mapValueOfType<int>(json, r'active_buses')!,
        totalBuses: mapValueOfType<int>(json, r'total_buses')!,
        studentsBoardedToday: mapValueOfType<int>(json, r'students_boarded_today')!,
        totalEventsToday: mapValueOfType<int>(json, r'total_events_today')!,
        lastUpdated: mapDateTime(json, r'last_updated', r'')!,
      );
    }
    return null;
  }

  static List<DashboardStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DashboardStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DashboardStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DashboardStats> mapFromJson(dynamic json) {
    final map = <String, DashboardStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DashboardStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DashboardStats-objects as value to a dart map
  static Map<String, List<DashboardStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DashboardStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DashboardStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'active_buses',
    'total_buses',
    'students_boarded_today',
    'total_events_today',
    'last_updated',
  };
}

