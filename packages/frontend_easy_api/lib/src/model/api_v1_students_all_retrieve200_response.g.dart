// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_students_all_retrieve200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1StudentsAllRetrieve200Response
    extends ApiV1StudentsAllRetrieve200Response {
  @override
  final int? count;
  @override
  final bool? next;
  @override
  final bool? previous;
  @override
  final BuiltList<ApiV1StudentsAllRetrieve200ResponseResultsInner>? results;

  factory _$ApiV1StudentsAllRetrieve200Response(
          [void Function(ApiV1StudentsAllRetrieve200ResponseBuilder)?
              updates]) =>
      (ApiV1StudentsAllRetrieve200ResponseBuilder()..update(updates))._build();

  _$ApiV1StudentsAllRetrieve200Response._(
      {this.count, this.next, this.previous, this.results})
      : super._();
  @override
  ApiV1StudentsAllRetrieve200Response rebuild(
          void Function(ApiV1StudentsAllRetrieve200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1StudentsAllRetrieve200ResponseBuilder toBuilder() =>
      ApiV1StudentsAllRetrieve200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1StudentsAllRetrieve200Response &&
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
    return (newBuiltValueToStringHelper(r'ApiV1StudentsAllRetrieve200Response')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class ApiV1StudentsAllRetrieve200ResponseBuilder
    implements
        Builder<ApiV1StudentsAllRetrieve200Response,
            ApiV1StudentsAllRetrieve200ResponseBuilder> {
  _$ApiV1StudentsAllRetrieve200Response? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  bool? _next;
  bool? get next => _$this._next;
  set next(bool? next) => _$this._next = next;

  bool? _previous;
  bool? get previous => _$this._previous;
  set previous(bool? previous) => _$this._previous = previous;

  ListBuilder<ApiV1StudentsAllRetrieve200ResponseResultsInner>? _results;
  ListBuilder<ApiV1StudentsAllRetrieve200ResponseResultsInner> get results =>
      _$this._results ??=
          ListBuilder<ApiV1StudentsAllRetrieve200ResponseResultsInner>();
  set results(
          ListBuilder<ApiV1StudentsAllRetrieve200ResponseResultsInner>?
              results) =>
      _$this._results = results;

  ApiV1StudentsAllRetrieve200ResponseBuilder() {
    ApiV1StudentsAllRetrieve200Response._defaults(this);
  }

  ApiV1StudentsAllRetrieve200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1StudentsAllRetrieve200Response other) {
    _$v = other as _$ApiV1StudentsAllRetrieve200Response;
  }

  @override
  void update(
      void Function(ApiV1StudentsAllRetrieve200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1StudentsAllRetrieve200Response build() => _build();

  _$ApiV1StudentsAllRetrieve200Response _build() {
    _$ApiV1StudentsAllRetrieve200Response _$result;
    try {
      _$result = _$v ??
          _$ApiV1StudentsAllRetrieve200Response._(
            count: count,
            next: next,
            previous: previous,
            results: _results?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'ApiV1StudentsAllRetrieve200Response',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
