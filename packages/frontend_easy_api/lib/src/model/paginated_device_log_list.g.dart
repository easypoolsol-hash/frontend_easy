// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_device_log_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedDeviceLogList extends PaginatedDeviceLogList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<DeviceLog> results;

  factory _$PaginatedDeviceLogList(
          [void Function(PaginatedDeviceLogListBuilder)? updates]) =>
      (PaginatedDeviceLogListBuilder()..update(updates))._build();

  _$PaginatedDeviceLogList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedDeviceLogList rebuild(
          void Function(PaginatedDeviceLogListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedDeviceLogListBuilder toBuilder() =>
      PaginatedDeviceLogListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedDeviceLogList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedDeviceLogList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedDeviceLogListBuilder
    implements Builder<PaginatedDeviceLogList, PaginatedDeviceLogListBuilder> {
  _$PaginatedDeviceLogList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<DeviceLog>? _results;
  ListBuilder<DeviceLog> get results =>
      _$this._results ??= ListBuilder<DeviceLog>();
  set results(ListBuilder<DeviceLog>? results) => _$this._results = results;

  PaginatedDeviceLogListBuilder() {
    PaginatedDeviceLogList._defaults(this);
  }

  PaginatedDeviceLogListBuilder get _$this {
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
  void replace(PaginatedDeviceLogList other) {
    _$v = other as _$PaginatedDeviceLogList;
  }

  @override
  void update(void Function(PaginatedDeviceLogListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedDeviceLogList build() => _build();

  _$PaginatedDeviceLogList _build() {
    _$PaginatedDeviceLogList _$result;
    try {
      _$result = _$v ??
          _$PaginatedDeviceLogList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedDeviceLogList', 'count'),
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
            r'PaginatedDeviceLogList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
