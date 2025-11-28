// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_student_list_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedStudentListList extends PaginatedStudentListList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<StudentList> results;

  factory _$PaginatedStudentListList(
          [void Function(PaginatedStudentListListBuilder)? updates]) =>
      (PaginatedStudentListListBuilder()..update(updates))._build();

  _$PaginatedStudentListList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedStudentListList rebuild(
          void Function(PaginatedStudentListListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedStudentListListBuilder toBuilder() =>
      PaginatedStudentListListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedStudentListList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedStudentListList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedStudentListListBuilder
    implements
        Builder<PaginatedStudentListList, PaginatedStudentListListBuilder> {
  _$PaginatedStudentListList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<StudentList>? _results;
  ListBuilder<StudentList> get results =>
      _$this._results ??= ListBuilder<StudentList>();
  set results(ListBuilder<StudentList>? results) => _$this._results = results;

  PaginatedStudentListListBuilder() {
    PaginatedStudentListList._defaults(this);
  }

  PaginatedStudentListListBuilder get _$this {
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
  void replace(PaginatedStudentListList other) {
    _$v = other as _$PaginatedStudentListList;
  }

  @override
  void update(void Function(PaginatedStudentListListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedStudentListList build() => _build();

  _$PaginatedStudentListList _build() {
    _$PaginatedStudentListList _$result;
    try {
      _$result = _$v ??
          _$PaginatedStudentListList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedStudentListList', 'count'),
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
            r'PaginatedStudentListList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
