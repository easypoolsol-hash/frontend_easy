// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_bus_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedBusList extends PaginatedBusList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<Bus> results;

  factory _$PaginatedBusList(
          [void Function(PaginatedBusListBuilder)? updates]) =>
      (PaginatedBusListBuilder()..update(updates))._build();

  _$PaginatedBusList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedBusList rebuild(void Function(PaginatedBusListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedBusListBuilder toBuilder() =>
      PaginatedBusListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedBusList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedBusList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedBusListBuilder
    implements Builder<PaginatedBusList, PaginatedBusListBuilder> {
  _$PaginatedBusList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<Bus>? _results;
  ListBuilder<Bus> get results => _$this._results ??= ListBuilder<Bus>();
  set results(ListBuilder<Bus>? results) => _$this._results = results;

  PaginatedBusListBuilder() {
    PaginatedBusList._defaults(this);
  }

  PaginatedBusListBuilder get _$this {
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
  void replace(PaginatedBusList other) {
    _$v = other as _$PaginatedBusList;
  }

  @override
  void update(void Function(PaginatedBusListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedBusList build() => _build();

  _$PaginatedBusList _build() {
    _$PaginatedBusList _$result;
    try {
      _$result = _$v ??
          _$PaginatedBusList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedBusList', 'count'),
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
            r'PaginatedBusList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
