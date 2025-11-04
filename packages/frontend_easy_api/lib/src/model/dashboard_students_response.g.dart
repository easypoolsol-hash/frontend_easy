// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_students_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardStudentsResponse extends DashboardStudentsResponse {
  @override
  final int count;
  @override
  final bool next;
  @override
  final bool previous;
  @override
  final BuiltList<StudentActivity> results;

  factory _$DashboardStudentsResponse(
          [void Function(DashboardStudentsResponseBuilder)? updates]) =>
      (DashboardStudentsResponseBuilder()..update(updates))._build();

  _$DashboardStudentsResponse._(
      {required this.count,
      required this.next,
      required this.previous,
      required this.results})
      : super._();
  @override
  DashboardStudentsResponse rebuild(
          void Function(DashboardStudentsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardStudentsResponseBuilder toBuilder() =>
      DashboardStudentsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardStudentsResponse &&
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
    return (newBuiltValueToStringHelper(r'DashboardStudentsResponse')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class DashboardStudentsResponseBuilder
    implements
        Builder<DashboardStudentsResponse, DashboardStudentsResponseBuilder> {
  _$DashboardStudentsResponse? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  bool? _next;
  bool? get next => _$this._next;
  set next(bool? next) => _$this._next = next;

  bool? _previous;
  bool? get previous => _$this._previous;
  set previous(bool? previous) => _$this._previous = previous;

  ListBuilder<StudentActivity>? _results;
  ListBuilder<StudentActivity> get results =>
      _$this._results ??= ListBuilder<StudentActivity>();
  set results(ListBuilder<StudentActivity>? results) =>
      _$this._results = results;

  DashboardStudentsResponseBuilder() {
    DashboardStudentsResponse._defaults(this);
  }

  DashboardStudentsResponseBuilder get _$this {
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
  void replace(DashboardStudentsResponse other) {
    _$v = other as _$DashboardStudentsResponse;
  }

  @override
  void update(void Function(DashboardStudentsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardStudentsResponse build() => _build();

  _$DashboardStudentsResponse _build() {
    _$DashboardStudentsResponse _$result;
    try {
      _$result = _$v ??
          _$DashboardStudentsResponse._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'DashboardStudentsResponse', 'count'),
            next: BuiltValueNullFieldError.checkNotNull(
                next, r'DashboardStudentsResponse', 'next'),
            previous: BuiltValueNullFieldError.checkNotNull(
                previous, r'DashboardStudentsResponse', 'previous'),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DashboardStudentsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
