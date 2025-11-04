// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_attendance_record_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedAttendanceRecordList extends PaginatedAttendanceRecordList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<AttendanceRecord> results;

  factory _$PaginatedAttendanceRecordList(
          [void Function(PaginatedAttendanceRecordListBuilder)? updates]) =>
      (PaginatedAttendanceRecordListBuilder()..update(updates))._build();

  _$PaginatedAttendanceRecordList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedAttendanceRecordList rebuild(
          void Function(PaginatedAttendanceRecordListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedAttendanceRecordListBuilder toBuilder() =>
      PaginatedAttendanceRecordListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedAttendanceRecordList &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginatedAttendanceRecordList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedAttendanceRecordListBuilder
    implements
        Builder<PaginatedAttendanceRecordList,
            PaginatedAttendanceRecordListBuilder> {
  _$PaginatedAttendanceRecordList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<AttendanceRecord>? _results;
  ListBuilder<AttendanceRecord> get results =>
      _$this._results ??= ListBuilder<AttendanceRecord>();
  set results(ListBuilder<AttendanceRecord>? results) =>
      _$this._results = results;

  PaginatedAttendanceRecordListBuilder() {
    PaginatedAttendanceRecordList._defaults(this);
  }

  PaginatedAttendanceRecordListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginatedAttendanceRecordList other) {
    _$v = other as _$PaginatedAttendanceRecordList;
  }

  @override
  void update(void Function(PaginatedAttendanceRecordListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedAttendanceRecordList build() => _build();

  _$PaginatedAttendanceRecordList _build() {
    _$PaginatedAttendanceRecordList _$result;
    try {
      _$result = _$v ??
          _$PaginatedAttendanceRecordList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedAttendanceRecordList', 'count'),
            next: next,
            previous: previous,
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PaginatedAttendanceRecordList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
