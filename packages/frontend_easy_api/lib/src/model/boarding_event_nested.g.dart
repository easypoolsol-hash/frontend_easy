// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boarding_event_nested.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BoardingEventNested extends BoardingEventNested {
  @override
  final String eventId;
  @override
  final DateTime timestamp;
  @override
  final String kioskId;
  @override
  final String eventType;

  factory _$BoardingEventNested(
          [void Function(BoardingEventNestedBuilder)? updates]) =>
      (BoardingEventNestedBuilder()..update(updates))._build();

  _$BoardingEventNested._(
      {required this.eventId,
      required this.timestamp,
      required this.kioskId,
      required this.eventType})
      : super._();
  @override
  BoardingEventNested rebuild(
          void Function(BoardingEventNestedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoardingEventNestedBuilder toBuilder() =>
      BoardingEventNestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoardingEventNested &&
        eventId == other.eventId &&
        timestamp == other.timestamp &&
        kioskId == other.kioskId &&
        eventType == other.eventType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, kioskId.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BoardingEventNested')
          ..add('eventId', eventId)
          ..add('timestamp', timestamp)
          ..add('kioskId', kioskId)
          ..add('eventType', eventType))
        .toString();
  }
}

class BoardingEventNestedBuilder
    implements Builder<BoardingEventNested, BoardingEventNestedBuilder> {
  _$BoardingEventNested? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _kioskId;
  String? get kioskId => _$this._kioskId;
  set kioskId(String? kioskId) => _$this._kioskId = kioskId;

  String? _eventType;
  String? get eventType => _$this._eventType;
  set eventType(String? eventType) => _$this._eventType = eventType;

  BoardingEventNestedBuilder() {
    BoardingEventNested._defaults(this);
  }

  BoardingEventNestedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _timestamp = $v.timestamp;
      _kioskId = $v.kioskId;
      _eventType = $v.eventType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoardingEventNested other) {
    _$v = other as _$BoardingEventNested;
  }

  @override
  void update(void Function(BoardingEventNestedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoardingEventNested build() => _build();

  _$BoardingEventNested _build() {
    final _$result = _$v ??
        _$BoardingEventNested._(
          eventId: BuiltValueNullFieldError.checkNotNull(
              eventId, r'BoardingEventNested', 'eventId'),
          timestamp: BuiltValueNullFieldError.checkNotNull(
              timestamp, r'BoardingEventNested', 'timestamp'),
          kioskId: BuiltValueNullFieldError.checkNotNull(
              kioskId, r'BoardingEventNested', 'kioskId'),
          eventType: BuiltValueNullFieldError.checkNotNull(
              eventType, r'BoardingEventNested', 'eventType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
