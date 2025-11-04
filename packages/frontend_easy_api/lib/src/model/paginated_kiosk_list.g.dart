// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_kiosk_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedKioskList extends PaginatedKioskList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<Kiosk> results;

  factory _$PaginatedKioskList(
          [void Function(PaginatedKioskListBuilder)? updates]) =>
      (PaginatedKioskListBuilder()..update(updates))._build();

  _$PaginatedKioskList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedKioskList rebuild(
          void Function(PaginatedKioskListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedKioskListBuilder toBuilder() =>
      PaginatedKioskListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedKioskList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedKioskList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedKioskListBuilder
    implements Builder<PaginatedKioskList, PaginatedKioskListBuilder> {
  _$PaginatedKioskList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<Kiosk>? _results;
  ListBuilder<Kiosk> get results => _$this._results ??= ListBuilder<Kiosk>();
  set results(ListBuilder<Kiosk>? results) => _$this._results = results;

  PaginatedKioskListBuilder() {
    PaginatedKioskList._defaults(this);
  }

  PaginatedKioskListBuilder get _$this {
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
  void replace(PaginatedKioskList other) {
    _$v = other as _$PaginatedKioskList;
  }

  @override
  void update(void Function(PaginatedKioskListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedKioskList build() => _build();

  _$PaginatedKioskList _build() {
    _$PaginatedKioskList _$result;
    try {
      _$result = _$v ??
          _$PaginatedKioskList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedKioskList', 'count'),
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
            r'PaginatedKioskList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
