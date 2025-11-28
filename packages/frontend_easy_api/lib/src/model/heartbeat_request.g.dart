// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heartbeat_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HeartbeatRequest extends HeartbeatRequest {
  @override
  final DateTime timestamp;
  @override
  final String databaseVersion;
  @override
  final String? databaseHash;
  @override
  final int studentCount;
  @override
  final int embeddingCount;
  @override
  final String? gitCommitSha;
  @override
  final HealthDataRequest? health;

  factory _$HeartbeatRequest(
          [void Function(HeartbeatRequestBuilder)? updates]) =>
      (HeartbeatRequestBuilder()..update(updates))._build();

  _$HeartbeatRequest._(
      {required this.timestamp,
      required this.databaseVersion,
      this.databaseHash,
      required this.studentCount,
      required this.embeddingCount,
      this.gitCommitSha,
      this.health})
      : super._();
  @override
  HeartbeatRequest rebuild(void Function(HeartbeatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeartbeatRequestBuilder toBuilder() =>
      HeartbeatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeartbeatRequest &&
        timestamp == other.timestamp &&
        databaseVersion == other.databaseVersion &&
        databaseHash == other.databaseHash &&
        studentCount == other.studentCount &&
        embeddingCount == other.embeddingCount &&
        gitCommitSha == other.gitCommitSha &&
        health == other.health;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, databaseVersion.hashCode);
    _$hash = $jc(_$hash, databaseHash.hashCode);
    _$hash = $jc(_$hash, studentCount.hashCode);
    _$hash = $jc(_$hash, embeddingCount.hashCode);
    _$hash = $jc(_$hash, gitCommitSha.hashCode);
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HeartbeatRequest')
          ..add('timestamp', timestamp)
          ..add('databaseVersion', databaseVersion)
          ..add('databaseHash', databaseHash)
          ..add('studentCount', studentCount)
          ..add('embeddingCount', embeddingCount)
          ..add('gitCommitSha', gitCommitSha)
          ..add('health', health))
        .toString();
  }
}

class HeartbeatRequestBuilder
    implements Builder<HeartbeatRequest, HeartbeatRequestBuilder> {
  _$HeartbeatRequest? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _databaseVersion;
  String? get databaseVersion => _$this._databaseVersion;
  set databaseVersion(String? databaseVersion) =>
      _$this._databaseVersion = databaseVersion;

  String? _databaseHash;
  String? get databaseHash => _$this._databaseHash;
  set databaseHash(String? databaseHash) => _$this._databaseHash = databaseHash;

  int? _studentCount;
  int? get studentCount => _$this._studentCount;
  set studentCount(int? studentCount) => _$this._studentCount = studentCount;

  int? _embeddingCount;
  int? get embeddingCount => _$this._embeddingCount;
  set embeddingCount(int? embeddingCount) =>
      _$this._embeddingCount = embeddingCount;

  String? _gitCommitSha;
  String? get gitCommitSha => _$this._gitCommitSha;
  set gitCommitSha(String? gitCommitSha) => _$this._gitCommitSha = gitCommitSha;

  HealthDataRequestBuilder? _health;
  HealthDataRequestBuilder get health =>
      _$this._health ??= HealthDataRequestBuilder();
  set health(HealthDataRequestBuilder? health) => _$this._health = health;

  HeartbeatRequestBuilder() {
    HeartbeatRequest._defaults(this);
  }

  HeartbeatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _databaseVersion = $v.databaseVersion;
      _databaseHash = $v.databaseHash;
      _studentCount = $v.studentCount;
      _embeddingCount = $v.embeddingCount;
      _gitCommitSha = $v.gitCommitSha;
      _health = $v.health?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HeartbeatRequest other) {
    _$v = other as _$HeartbeatRequest;
  }

  @override
  void update(void Function(HeartbeatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HeartbeatRequest build() => _build();

  _$HeartbeatRequest _build() {
    _$HeartbeatRequest _$result;
    try {
      _$result = _$v ??
          _$HeartbeatRequest._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'HeartbeatRequest', 'timestamp'),
            databaseVersion: BuiltValueNullFieldError.checkNotNull(
                databaseVersion, r'HeartbeatRequest', 'databaseVersion'),
            databaseHash: databaseHash,
            studentCount: BuiltValueNullFieldError.checkNotNull(
                studentCount, r'HeartbeatRequest', 'studentCount'),
            embeddingCount: BuiltValueNullFieldError.checkNotNull(
                embeddingCount, r'HeartbeatRequest', 'embeddingCount'),
            gitCommitSha: gitCommitSha,
            health: _health?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'health';
        _health?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HeartbeatRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
