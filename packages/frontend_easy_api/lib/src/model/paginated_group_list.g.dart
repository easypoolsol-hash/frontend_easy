// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_group_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedGroupList extends PaginatedGroupList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<Group> results;

  factory _$PaginatedGroupList(
          [void Function(PaginatedGroupListBuilder)? updates]) =>
      (PaginatedGroupListBuilder()..update(updates))._build();

  _$PaginatedGroupList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedGroupList rebuild(
          void Function(PaginatedGroupListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedGroupListBuilder toBuilder() =>
      PaginatedGroupListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedGroupList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedGroupList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedGroupListBuilder
    implements Builder<PaginatedGroupList, PaginatedGroupListBuilder> {
  _$PaginatedGroupList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<Group>? _results;
  ListBuilder<Group> get results => _$this._results ??= ListBuilder<Group>();
  set results(ListBuilder<Group>? results) => _$this._results = results;

  PaginatedGroupListBuilder() {
    PaginatedGroupList._defaults(this);
  }

  PaginatedGroupListBuilder get _$this {
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
  void replace(PaginatedGroupList other) {
    _$v = other as _$PaginatedGroupList;
  }

  @override
  void update(void Function(PaginatedGroupListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedGroupList build() => _build();

  _$PaginatedGroupList _build() {
    _$PaginatedGroupList _$result;
    try {
      _$result = _$v ??
          _$PaginatedGroupList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedGroupList', 'count'),
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
            r'PaginatedGroupList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
