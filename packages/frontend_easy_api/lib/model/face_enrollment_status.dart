//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FaceEnrollmentStatus {
  /// Returns a new [FaceEnrollmentStatus] instance.
  FaceEnrollmentStatus({
    required this.enrollmentId,
    required this.status,
    required this.photoCount,
    required this.submittedAt,
    required this.reviewedAt,
  });

  String enrollmentId;

  /// Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected
  FaceEnrollmentStatusStatusEnum status;

  /// Number of photos in this enrollment
  int photoCount;

  /// When parent submitted enrollment
  DateTime submittedAt;

  /// When enrollment was reviewed
  DateTime? reviewedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FaceEnrollmentStatus &&
    other.enrollmentId == enrollmentId &&
    other.status == status &&
    other.photoCount == photoCount &&
    other.submittedAt == submittedAt &&
    other.reviewedAt == reviewedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enrollmentId.hashCode) +
    (status.hashCode) +
    (photoCount.hashCode) +
    (submittedAt.hashCode) +
    (reviewedAt == null ? 0 : reviewedAt!.hashCode);

  @override
  String toString() => 'FaceEnrollmentStatus[enrollmentId=$enrollmentId, status=$status, photoCount=$photoCount, submittedAt=$submittedAt, reviewedAt=$reviewedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enrollment_id'] = this.enrollmentId;
      json[r'status'] = this.status;
      json[r'photo_count'] = this.photoCount;
      json[r'submitted_at'] = this.submittedAt.toUtc().toIso8601String();
    if (this.reviewedAt != null) {
      json[r'reviewed_at'] = this.reviewedAt!.toUtc().toIso8601String();
    } else {
      json[r'reviewed_at'] = null;
    }
    return json;
  }

  /// Returns a new [FaceEnrollmentStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FaceEnrollmentStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FaceEnrollmentStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FaceEnrollmentStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FaceEnrollmentStatus(
        enrollmentId: mapValueOfType<String>(json, r'enrollment_id')!,
        status: FaceEnrollmentStatusStatusEnum.fromJson(json[r'status'])!,
        photoCount: mapValueOfType<int>(json, r'photo_count')!,
        submittedAt: mapDateTime(json, r'submitted_at', r'')!,
        reviewedAt: mapDateTime(json, r'reviewed_at', r''),
      );
    }
    return null;
  }

  static List<FaceEnrollmentStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FaceEnrollmentStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FaceEnrollmentStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FaceEnrollmentStatus> mapFromJson(dynamic json) {
    final map = <String, FaceEnrollmentStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FaceEnrollmentStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FaceEnrollmentStatus-objects as value to a dart map
  static Map<String, List<FaceEnrollmentStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FaceEnrollmentStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FaceEnrollmentStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enrollment_id',
    'status',
    'photo_count',
    'submitted_at',
    'reviewed_at',
  };
}

/// Approval status  * `pending_approval` - Pending Approval * `approved` - Approved * `rejected` - Rejected
class FaceEnrollmentStatusStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const FaceEnrollmentStatusStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pendingApproval = FaceEnrollmentStatusStatusEnum._(r'pending_approval');
  static const approved = FaceEnrollmentStatusStatusEnum._(r'approved');
  static const rejected = FaceEnrollmentStatusStatusEnum._(r'rejected');

  /// List of all possible values in this [enum][FaceEnrollmentStatusStatusEnum].
  static const values = <FaceEnrollmentStatusStatusEnum>[
    pendingApproval,
    approved,
    rejected,
  ];

  static FaceEnrollmentStatusStatusEnum? fromJson(dynamic value) => FaceEnrollmentStatusStatusEnumTypeTransformer().decode(value);

  static List<FaceEnrollmentStatusStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FaceEnrollmentStatusStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FaceEnrollmentStatusStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FaceEnrollmentStatusStatusEnum] to String,
/// and [decode] dynamic data back to [FaceEnrollmentStatusStatusEnum].
class FaceEnrollmentStatusStatusEnumTypeTransformer {
  factory FaceEnrollmentStatusStatusEnumTypeTransformer() => _instance ??= const FaceEnrollmentStatusStatusEnumTypeTransformer._();

  const FaceEnrollmentStatusStatusEnumTypeTransformer._();

  String encode(FaceEnrollmentStatusStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FaceEnrollmentStatusStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FaceEnrollmentStatusStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending_approval': return FaceEnrollmentStatusStatusEnum.pendingApproval;
        case r'approved': return FaceEnrollmentStatusStatusEnum.approved;
        case r'rejected': return FaceEnrollmentStatusStatusEnum.rejected;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FaceEnrollmentStatusStatusEnumTypeTransformer] instance.
  static FaceEnrollmentStatusStatusEnumTypeTransformer? _instance;
}


