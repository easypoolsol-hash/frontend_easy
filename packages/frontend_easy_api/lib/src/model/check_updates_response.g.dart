// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_updates_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckUpdatesResponse extends CheckUpdatesResponse {
  @override
  final bool needsUpdate;
  @override
  final String currentVersion;
  @override
  final int studentCount;
  @override
  final int embeddingCount;
  @override
  final String contentHash;

  factory _$CheckUpdatesResponse(
          [void Function(CheckUpdatesResponseBuilder)? updates]) =>
      (CheckUpdatesResponseBuilder()..update(updates))._build();

  _$CheckUpdatesResponse._(
      {required this.needsUpdate,
      required this.currentVersion,
      required this.studentCount,
      required this.embeddingCount,
      required this.contentHash})
      : super._();
  @override
  CheckUpdatesResponse rebuild(
          void Function(CheckUpdatesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckUpdatesResponseBuilder toBuilder() =>
      CheckUpdatesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckUpdatesResponse &&
        needsUpdate == other.needsUpdate &&
        currentVersion == other.currentVersion &&
        studentCount == other.studentCount &&
        embeddingCount == other.embeddingCount &&
        contentHash == other.contentHash;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, needsUpdate.hashCode);
    _$hash = $jc(_$hash, currentVersion.hashCode);
    _$hash = $jc(_$hash, studentCount.hashCode);
    _$hash = $jc(_$hash, embeddingCount.hashCode);
    _$hash = $jc(_$hash, contentHash.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckUpdatesResponse')
          ..add('needsUpdate', needsUpdate)
          ..add('currentVersion', currentVersion)
          ..add('studentCount', studentCount)
          ..add('embeddingCount', embeddingCount)
          ..add('contentHash', contentHash))
        .toString();
  }
}

class CheckUpdatesResponseBuilder
    implements Builder<CheckUpdatesResponse, CheckUpdatesResponseBuilder> {
  _$CheckUpdatesResponse? _$v;

  bool? _needsUpdate;
  bool? get needsUpdate => _$this._needsUpdate;
  set needsUpdate(bool? needsUpdate) => _$this._needsUpdate = needsUpdate;

  String? _currentVersion;
  String? get currentVersion => _$this._currentVersion;
  set currentVersion(String? currentVersion) =>
      _$this._currentVersion = currentVersion;

  int? _studentCount;
  int? get studentCount => _$this._studentCount;
  set studentCount(int? studentCount) => _$this._studentCount = studentCount;

  int? _embeddingCount;
  int? get embeddingCount => _$this._embeddingCount;
  set embeddingCount(int? embeddingCount) =>
      _$this._embeddingCount = embeddingCount;

  String? _contentHash;
  String? get contentHash => _$this._contentHash;
  set contentHash(String? contentHash) => _$this._contentHash = contentHash;

  CheckUpdatesResponseBuilder() {
    CheckUpdatesResponse._defaults(this);
  }

  CheckUpdatesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _needsUpdate = $v.needsUpdate;
      _currentVersion = $v.currentVersion;
      _studentCount = $v.studentCount;
      _embeddingCount = $v.embeddingCount;
      _contentHash = $v.contentHash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckUpdatesResponse other) {
    _$v = other as _$CheckUpdatesResponse;
  }

  @override
  void update(void Function(CheckUpdatesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckUpdatesResponse build() => _build();

  _$CheckUpdatesResponse _build() {
    final _$result = _$v ??
        _$CheckUpdatesResponse._(
          needsUpdate: BuiltValueNullFieldError.checkNotNull(
              needsUpdate, r'CheckUpdatesResponse', 'needsUpdate'),
          currentVersion: BuiltValueNullFieldError.checkNotNull(
              currentVersion, r'CheckUpdatesResponse', 'currentVersion'),
          studentCount: BuiltValueNullFieldError.checkNotNull(
              studentCount, r'CheckUpdatesResponse', 'studentCount'),
          embeddingCount: BuiltValueNullFieldError.checkNotNull(
              embeddingCount, r'CheckUpdatesResponse', 'embeddingCount'),
          contentHash: BuiltValueNullFieldError.checkNotNull(
              contentHash, r'CheckUpdatesResponse', 'contentHash'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
