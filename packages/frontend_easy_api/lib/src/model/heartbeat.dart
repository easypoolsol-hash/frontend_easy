//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:frontend_easy_api/src/model/health_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'heartbeat.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Heartbeat {
  /// Returns a new [Heartbeat] instance.
  Heartbeat({

    required  this.timestamp,

    required  this.databaseVersion,

     this.databaseHash,

    required  this.studentCount,

    required  this.embeddingCount,

     this.health,
  });

      /// Heartbeat timestamp
  @JsonKey(

    name: r'timestamp',
    required: true,
    includeIfNull: false,
  )


  final DateTime timestamp;



      /// Current database version on kiosk
  @JsonKey(

    name: r'database_version',
    required: true,
    includeIfNull: false,
  )


  final String databaseVersion;



      /// Database content hash
  @JsonKey(

    name: r'database_hash',
    required: false,
    includeIfNull: false,
  )


  final String? databaseHash;



      /// Students in DB
          // minimum: 0
  @JsonKey(

    name: r'student_count',
    required: true,
    includeIfNull: false,
  )


  final int studentCount;



      /// Embeddings in DB
          // minimum: 0
  @JsonKey(

    name: r'embedding_count',
    required: true,
    includeIfNull: false,
  )


  final int embeddingCount;



  @JsonKey(

    name: r'health',
    required: false,
    includeIfNull: false,
  )


  final HealthData? health;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Heartbeat &&
      other.timestamp == timestamp &&
      other.databaseVersion == databaseVersion &&
      other.databaseHash == databaseHash &&
      other.studentCount == studentCount &&
      other.embeddingCount == embeddingCount &&
      other.health == health;

    @override
    int get hashCode =>
        timestamp.hashCode +
        databaseVersion.hashCode +
        databaseHash.hashCode +
        studentCount.hashCode +
        embeddingCount.hashCode +
        health.hashCode;

  factory Heartbeat.fromJson(Map<String, dynamic> json) => _$HeartbeatFromJson(json);

  Map<String, dynamic> toJson() => _$HeartbeatToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}
