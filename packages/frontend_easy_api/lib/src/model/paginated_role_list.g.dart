// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_role_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedRoleList extends PaginatedRoleList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<Role> results;

  factory _$PaginatedRoleList(
          [void Function(PaginatedRoleListBuilder)? updates]) =>
      (PaginatedRoleListBuilder()..update(updates))._build();

  _$PaginatedRoleList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedRoleList rebuild(void Function(PaginatedRoleListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedRoleListBuilder toBuilder() =>
      PaginatedRoleListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedRoleList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedRoleList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedRoleListBuilder
    implements Builder<PaginatedRoleList, PaginatedRoleListBuilder> {
  _$PaginatedRoleList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<Role>? _results;
  ListBuilder<Role> get results => _$this._results ??= ListBuilder<Role>();
  set results(ListBuilder<Role>? results) => _$this._results = results;

  PaginatedRoleListBuilder() {
    PaginatedRoleList._defaults(this);
  }

  PaginatedRoleListBuilder get _$this {
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
  void replace(PaginatedRoleList other) {
    _$v = other as _$PaginatedRoleList;
  }

  @override
  void update(void Function(PaginatedRoleListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedRoleList build() => _build();

  _$PaginatedRoleList _build() {
    _$PaginatedRoleList _$result;
    try {
      _$result = _$v ??
          _$PaginatedRoleList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedRoleList', 'count'),
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
            r'PaginatedRoleList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
