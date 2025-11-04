// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardStats extends DashboardStats {
  @override
  final Date date;
  @override
  final int activeBuses;
  @override
  final int totalBuses;
  @override
  final int studentsBoardedToday;
  @override
  final int totalEventsToday;
  @override
  final DateTime lastUpdated;

  factory _$DashboardStats([void Function(DashboardStatsBuilder)? updates]) =>
      (DashboardStatsBuilder()..update(updates))._build();

  _$DashboardStats._(
      {required this.date,
      required this.activeBuses,
      required this.totalBuses,
      required this.studentsBoardedToday,
      required this.totalEventsToday,
      required this.lastUpdated})
      : super._();
  @override
  DashboardStats rebuild(void Function(DashboardStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardStatsBuilder toBuilder() => DashboardStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardStats &&
        date == other.date &&
        activeBuses == other.activeBuses &&
        totalBuses == other.totalBuses &&
        studentsBoardedToday == other.studentsBoardedToday &&
        totalEventsToday == other.totalEventsToday &&
        lastUpdated == other.lastUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, activeBuses.hashCode);
    _$hash = $jc(_$hash, totalBuses.hashCode);
    _$hash = $jc(_$hash, studentsBoardedToday.hashCode);
    _$hash = $jc(_$hash, totalEventsToday.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardStats')
          ..add('date', date)
          ..add('activeBuses', activeBuses)
          ..add('totalBuses', totalBuses)
          ..add('studentsBoardedToday', studentsBoardedToday)
          ..add('totalEventsToday', totalEventsToday)
          ..add('lastUpdated', lastUpdated))
        .toString();
  }
}

class DashboardStatsBuilder
    implements Builder<DashboardStats, DashboardStatsBuilder> {
  _$DashboardStats? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _activeBuses;
  int? get activeBuses => _$this._activeBuses;
  set activeBuses(int? activeBuses) => _$this._activeBuses = activeBuses;

  int? _totalBuses;
  int? get totalBuses => _$this._totalBuses;
  set totalBuses(int? totalBuses) => _$this._totalBuses = totalBuses;

  int? _studentsBoardedToday;
  int? get studentsBoardedToday => _$this._studentsBoardedToday;
  set studentsBoardedToday(int? studentsBoardedToday) =>
      _$this._studentsBoardedToday = studentsBoardedToday;

  int? _totalEventsToday;
  int? get totalEventsToday => _$this._totalEventsToday;
  set totalEventsToday(int? totalEventsToday) =>
      _$this._totalEventsToday = totalEventsToday;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  DashboardStatsBuilder() {
    DashboardStats._defaults(this);
  }

  DashboardStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _activeBuses = $v.activeBuses;
      _totalBuses = $v.totalBuses;
      _studentsBoardedToday = $v.studentsBoardedToday;
      _totalEventsToday = $v.totalEventsToday;
      _lastUpdated = $v.lastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardStats other) {
    _$v = other as _$DashboardStats;
  }

  @override
  void update(void Function(DashboardStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardStats build() => _build();

  _$DashboardStats _build() {
    final _$result = _$v ??
        _$DashboardStats._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'DashboardStats', 'date'),
          activeBuses: BuiltValueNullFieldError.checkNotNull(
              activeBuses, r'DashboardStats', 'activeBuses'),
          totalBuses: BuiltValueNullFieldError.checkNotNull(
              totalBuses, r'DashboardStats', 'totalBuses'),
          studentsBoardedToday: BuiltValueNullFieldError.checkNotNull(
              studentsBoardedToday, r'DashboardStats', 'studentsBoardedToday'),
          totalEventsToday: BuiltValueNullFieldError.checkNotNull(
              totalEventsToday, r'DashboardStats', 'totalEventsToday'),
          lastUpdated: BuiltValueNullFieldError.checkNotNull(
              lastUpdated, r'DashboardStats', 'lastUpdated'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
