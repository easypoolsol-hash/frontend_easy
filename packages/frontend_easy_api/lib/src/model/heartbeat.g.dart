// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heartbeat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Heartbeat extends Heartbeat {
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
  final HealthData? health;

  factory _$Heartbeat([void Function(HeartbeatBuilder)? updates]) =>
      (HeartbeatBuilder()..update(updates))._build();

  _$Heartbeat._(
      {required this.timestamp,
      required this.databaseVersion,
      this.databaseHash,
      required this.studentCount,
      required this.embeddingCount,
      this.health})
      : super._();
  @override
  Heartbeat rebuild(void Function(HeartbeatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeartbeatBuilder toBuilder() => HeartbeatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Heartbeat &&
        timestamp == other.timestamp &&
        databaseVersion == other.databaseVersion &&
        databaseHash == other.databaseHash &&
        studentCount == other.studentCount &&
        embeddingCount == other.embeddingCount &&
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
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Heartbeat')
          ..add('timestamp', timestamp)
          ..add('databaseVersion', databaseVersion)
          ..add('databaseHash', databaseHash)
          ..add('studentCount', studentCount)
          ..add('embeddingCount', embeddingCount)
          ..add('health', health))
        .toString();
  }
}

class HeartbeatBuilder implements Builder<Heartbeat, HeartbeatBuilder> {
  _$Heartbeat? _$v;

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

  HealthDataBuilder? _health;
  HealthDataBuilder get health => _$this._health ??= HealthDataBuilder();
  set health(HealthDataBuilder? health) => _$this._health = health;

  HeartbeatBuilder() {
    Heartbeat._defaults(this);
  }

  HeartbeatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _databaseVersion = $v.databaseVersion;
      _databaseHash = $v.databaseHash;
      _studentCount = $v.studentCount;
      _embeddingCount = $v.embeddingCount;
      _health = $v.health?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Heartbeat other) {
    _$v = other as _$Heartbeat;
  }

  @override
  void update(void Function(HeartbeatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Heartbeat build() => _build();

  _$Heartbeat _build() {
    _$Heartbeat _$result;
    try {
      _$result = _$v ??
          _$Heartbeat._(
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, r'Heartbeat', 'timestamp'),
            databaseVersion: BuiltValueNullFieldError.checkNotNull(
                databaseVersion, r'Heartbeat', 'databaseVersion'),
            databaseHash: databaseHash,
            studentCount: BuiltValueNullFieldError.checkNotNull(
                studentCount, r'Heartbeat', 'studentCount'),
            embeddingCount: BuiltValueNullFieldError.checkNotNull(
                embeddingCount, r'Heartbeat', 'embeddingCount'),
            health: _health?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'health';
        _health?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Heartbeat', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
