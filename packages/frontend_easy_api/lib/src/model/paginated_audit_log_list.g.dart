// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_audit_log_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedAuditLogList extends PaginatedAuditLogList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<AuditLog> results;

  factory _$PaginatedAuditLogList(
          [void Function(PaginatedAuditLogListBuilder)? updates]) =>
      (PaginatedAuditLogListBuilder()..update(updates))._build();

  _$PaginatedAuditLogList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedAuditLogList rebuild(
          void Function(PaginatedAuditLogListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedAuditLogListBuilder toBuilder() =>
      PaginatedAuditLogListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedAuditLogList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedAuditLogList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedAuditLogListBuilder
    implements Builder<PaginatedAuditLogList, PaginatedAuditLogListBuilder> {
  _$PaginatedAuditLogList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<AuditLog>? _results;
  ListBuilder<AuditLog> get results =>
      _$this._results ??= ListBuilder<AuditLog>();
  set results(ListBuilder<AuditLog>? results) => _$this._results = results;

  PaginatedAuditLogListBuilder() {
    PaginatedAuditLogList._defaults(this);
  }

  PaginatedAuditLogListBuilder get _$this {
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
  void replace(PaginatedAuditLogList other) {
    _$v = other as _$PaginatedAuditLogList;
  }

  @override
  void update(void Function(PaginatedAuditLogListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedAuditLogList build() => _build();

  _$PaginatedAuditLogList _build() {
    _$PaginatedAuditLogList _$result;
    try {
      _$result = _$v ??
          _$PaginatedAuditLogList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedAuditLogList', 'count'),
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
            r'PaginatedAuditLogList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
