// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_school_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedSchoolList extends PaginatedSchoolList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<School> results;

  factory _$PaginatedSchoolList(
          [void Function(PaginatedSchoolListBuilder)? updates]) =>
      (PaginatedSchoolListBuilder()..update(updates))._build();

  _$PaginatedSchoolList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedSchoolList rebuild(
          void Function(PaginatedSchoolListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedSchoolListBuilder toBuilder() =>
      PaginatedSchoolListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedSchoolList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedSchoolList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedSchoolListBuilder
    implements Builder<PaginatedSchoolList, PaginatedSchoolListBuilder> {
  _$PaginatedSchoolList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<School>? _results;
  ListBuilder<School> get results => _$this._results ??= ListBuilder<School>();
  set results(ListBuilder<School>? results) => _$this._results = results;

  PaginatedSchoolListBuilder() {
    PaginatedSchoolList._defaults(this);
  }

  PaginatedSchoolListBuilder get _$this {
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
  void replace(PaginatedSchoolList other) {
    _$v = other as _$PaginatedSchoolList;
  }

  @override
  void update(void Function(PaginatedSchoolListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedSchoolList build() => _build();

  _$PaginatedSchoolList _build() {
    _$PaginatedSchoolList _$result;
    try {
      _$result = _$v ??
          _$PaginatedSchoolList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedSchoolList', 'count'),
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
            r'PaginatedSchoolList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
