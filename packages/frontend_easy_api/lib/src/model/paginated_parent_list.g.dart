// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_parent_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedParentList extends PaginatedParentList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<Parent> results;

  factory _$PaginatedParentList(
          [void Function(PaginatedParentListBuilder)? updates]) =>
      (PaginatedParentListBuilder()..update(updates))._build();

  _$PaginatedParentList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedParentList rebuild(
          void Function(PaginatedParentListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedParentListBuilder toBuilder() =>
      PaginatedParentListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedParentList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedParentList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedParentListBuilder
    implements Builder<PaginatedParentList, PaginatedParentListBuilder> {
  _$PaginatedParentList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<Parent>? _results;
  ListBuilder<Parent> get results => _$this._results ??= ListBuilder<Parent>();
  set results(ListBuilder<Parent>? results) => _$this._results = results;

  PaginatedParentListBuilder() {
    PaginatedParentList._defaults(this);
  }

  PaginatedParentListBuilder get _$this {
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
  void replace(PaginatedParentList other) {
    _$v = other as _$PaginatedParentList;
  }

  @override
  void update(void Function(PaginatedParentListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedParentList build() => _build();

  _$PaginatedParentList _build() {
    _$PaginatedParentList _$result;
    try {
      _$result = _$v ??
          _$PaginatedParentList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedParentList', 'count'),
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
            r'PaginatedParentList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
