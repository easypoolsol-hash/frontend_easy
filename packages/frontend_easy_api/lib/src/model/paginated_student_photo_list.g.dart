// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_student_photo_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedStudentPhotoList extends PaginatedStudentPhotoList {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<StudentPhoto> results;

  factory _$PaginatedStudentPhotoList(
          [void Function(PaginatedStudentPhotoListBuilder)? updates]) =>
      (PaginatedStudentPhotoListBuilder()..update(updates))._build();

  _$PaginatedStudentPhotoList._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  PaginatedStudentPhotoList rebuild(
          void Function(PaginatedStudentPhotoListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedStudentPhotoListBuilder toBuilder() =>
      PaginatedStudentPhotoListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedStudentPhotoList &&
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
    return (newBuiltValueToStringHelper(r'PaginatedStudentPhotoList')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class PaginatedStudentPhotoListBuilder
    implements
        Builder<PaginatedStudentPhotoList, PaginatedStudentPhotoListBuilder> {
  _$PaginatedStudentPhotoList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<StudentPhoto>? _results;
  ListBuilder<StudentPhoto> get results =>
      _$this._results ??= ListBuilder<StudentPhoto>();
  set results(ListBuilder<StudentPhoto>? results) => _$this._results = results;

  PaginatedStudentPhotoListBuilder() {
    PaginatedStudentPhotoList._defaults(this);
  }

  PaginatedStudentPhotoListBuilder get _$this {
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
  void replace(PaginatedStudentPhotoList other) {
    _$v = other as _$PaginatedStudentPhotoList;
  }

  @override
  void update(void Function(PaginatedStudentPhotoListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedStudentPhotoList build() => _build();

  _$PaginatedStudentPhotoList _build() {
    _$PaginatedStudentPhotoList _$result;
    try {
      _$result = _$v ??
          _$PaginatedStudentPhotoList._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'PaginatedStudentPhotoList', 'count'),
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
            r'PaginatedStudentPhotoList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
