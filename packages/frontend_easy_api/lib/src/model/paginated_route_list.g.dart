// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_route_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedRouteList extends PaginatedRouteList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<Route> results;

  factory _$PaginatedRouteList(
          [void Function(PaginatedRouteListBuilder)? updates]) =>
      (PaginatedRouteListBuilder()..update(updates))._build();

  _$PaginatedRouteList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedRouteList rebuild(
          void Function(PaginatedRouteListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedRouteListBuilder toBuilder() =>
      PaginatedRouteListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedRouteList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedRouteList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedRouteListBuilder
    implements Builder<PaginatedRouteList, PaginatedRouteListBuilder> {
  _$PaginatedRouteList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<Route>? _results;
  ListBuilder<Route> get results => _$this._results ??= ListBuilder<Route>();
  set results(ListBuilder<Route>? results) => _$this._results = results;

  PaginatedRouteListBuilder() {
    PaginatedRouteList._defaults(this);
  }

  PaginatedRouteListBuilder get _$this {
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
  void replace(PaginatedRouteList other) {
    _$v = other as _$PaginatedRouteList;
  }

  @override
  void update(void Function(PaginatedRouteListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedRouteList build() => _build();

  _$PaginatedRouteList _build() {
    _$PaginatedRouteList _$result;
    try {
      _$result = _$v ??
          _$PaginatedRouteList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedRouteList', 'count'),
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
            r'PaginatedRouteList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
