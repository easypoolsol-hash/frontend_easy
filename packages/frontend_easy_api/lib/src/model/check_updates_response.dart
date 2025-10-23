//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'check_updates_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CheckUpdatesResponse {
  /// Returns a new [CheckUpdatesResponse] instance.
  CheckUpdatesResponse({

    required  this.needsUpdate,

    required  this.currentVersion,

    required  this.studentCount,

    required  this.embeddingCount,

    required  this.contentHash,
  });

      /// Whether kiosk needs to download new snapshot
  @JsonKey(
    
    name: r'needs_update',
    required: true,
    includeIfNull: false,
  )


  final bool needsUpdate;



      /// Current database version timestamp
  @JsonKey(
    
    name: r'current_version',
    required: true,
    includeIfNull: false,
  )


  final String currentVersion;



      /// Number of students for this bus
  @JsonKey(
    
    name: r'student_count',
    required: true,
    includeIfNull: false,
  )


  final int studentCount;



      /// Number of embeddings for this bus
  @JsonKey(
    
    name: r'embedding_count',
    required: true,
    includeIfNull: false,
  )


  final int embeddingCount;



      /// Content hash for integrity verification
  @JsonKey(
    
    name: r'content_hash',
    required: true,
    includeIfNull: false,
  )


  final String contentHash;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CheckUpdatesResponse &&
      other.needsUpdate == needsUpdate &&
      other.currentVersion == currentVersion &&
      other.studentCount == studentCount &&
      other.embeddingCount == embeddingCount &&
      other.contentHash == contentHash;

    @override
    int get hashCode =>
        needsUpdate.hashCode +
        currentVersion.hashCode +
        studentCount.hashCode +
        embeddingCount.hashCode +
        contentHash.hashCode;

  factory CheckUpdatesResponse.fromJson(Map<String, dynamic> json) => _$CheckUpdatesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CheckUpdatesResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

