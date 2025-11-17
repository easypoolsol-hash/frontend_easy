//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of frontend_easy_api;

class AttendanceRecord {
  /// Returns a new [AttendanceRecord] instance.
  AttendanceRecord({
    required this.recordId,
    required this.student,
    required this.studentName,
    required this.studentGrade,
    required this.date,
    this.morningBoarded,
    this.morningTime,
    this.afternoonBoarded,
    this.afternoonTime,
    required this.status,
    required this.createdAt,
  });

  /// UUID primary key
  String recordId;

  /// Student attendance record
  String student;

  String studentName;

  String studentGrade;

  /// Date of attendance record
  DateTime date;

  /// Whether student boarded in the morning
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? morningBoarded;

  /// Time of morning boarding
  DateTime? morningTime;

  /// Whether student boarded in the afternoon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? afternoonBoarded;

  /// Time of afternoon boarding
  DateTime? afternoonTime;

  /// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
  AttendanceRecordStatusEnum status;

  /// When this record was created
  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttendanceRecord &&
    other.recordId == recordId &&
    other.student == student &&
    other.studentName == studentName &&
    other.studentGrade == studentGrade &&
    other.date == date &&
    other.morningBoarded == morningBoarded &&
    other.morningTime == morningTime &&
    other.afternoonBoarded == afternoonBoarded &&
    other.afternoonTime == afternoonTime &&
    other.status == status &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recordId.hashCode) +
    (student.hashCode) +
    (studentName.hashCode) +
    (studentGrade.hashCode) +
    (date.hashCode) +
    (morningBoarded == null ? 0 : morningBoarded!.hashCode) +
    (morningTime == null ? 0 : morningTime!.hashCode) +
    (afternoonBoarded == null ? 0 : afternoonBoarded!.hashCode) +
    (afternoonTime == null ? 0 : afternoonTime!.hashCode) +
    (status.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'AttendanceRecord[recordId=$recordId, student=$student, studentName=$studentName, studentGrade=$studentGrade, date=$date, morningBoarded=$morningBoarded, morningTime=$morningTime, afternoonBoarded=$afternoonBoarded, afternoonTime=$afternoonTime, status=$status, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'record_id'] = this.recordId;
      json[r'student'] = this.student;
      json[r'student_name'] = this.studentName;
      json[r'student_grade'] = this.studentGrade;
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
    if (this.morningBoarded != null) {
      json[r'morning_boarded'] = this.morningBoarded;
    } else {
      json[r'morning_boarded'] = null;
    }
    if (this.morningTime != null) {
      json[r'morning_time'] = this.morningTime!.toUtc().toIso8601String();
    } else {
      json[r'morning_time'] = null;
    }
    if (this.afternoonBoarded != null) {
      json[r'afternoon_boarded'] = this.afternoonBoarded;
    } else {
      json[r'afternoon_boarded'] = null;
    }
    if (this.afternoonTime != null) {
      json[r'afternoon_time'] = this.afternoonTime!.toUtc().toIso8601String();
    } else {
      json[r'afternoon_time'] = null;
    }
      json[r'status'] = this.status;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AttendanceRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttendanceRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttendanceRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttendanceRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttendanceRecord(
        recordId: mapValueOfType<String>(json, r'record_id')!,
        student: mapValueOfType<String>(json, r'student')!,
        studentName: mapValueOfType<String>(json, r'student_name')!,
        studentGrade: mapValueOfType<String>(json, r'student_grade')!,
        date: mapDateTime(json, r'date', r'')!,
        morningBoarded: mapValueOfType<bool>(json, r'morning_boarded'),
        morningTime: mapDateTime(json, r'morning_time', r''),
        afternoonBoarded: mapValueOfType<bool>(json, r'afternoon_boarded'),
        afternoonTime: mapDateTime(json, r'afternoon_time', r''),
        status: AttendanceRecordStatusEnum.fromJson(json[r'status'])!,
        createdAt: mapDateTime(json, r'created_at', r'')!,
      );
    }
    return null;
  }

  static List<AttendanceRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttendanceRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttendanceRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttendanceRecord> mapFromJson(dynamic json) {
    final map = <String, AttendanceRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttendanceRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttendanceRecord-objects as value to a dart map
  static Map<String, List<AttendanceRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttendanceRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttendanceRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'record_id',
    'student',
    'student_name',
    'student_grade',
    'date',
    'status',
    'created_at',
  };
}

/// Overall attendance status  * `present` - Present * `absent` - Absent * `partial` - Partial
class AttendanceRecordStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AttendanceRecordStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const present = AttendanceRecordStatusEnum._(r'present');
  static const absent = AttendanceRecordStatusEnum._(r'absent');
  static const partial = AttendanceRecordStatusEnum._(r'partial');

  /// List of all possible values in this [enum][AttendanceRecordStatusEnum].
  static const values = <AttendanceRecordStatusEnum>[
    present,
    absent,
    partial,
  ];

  static AttendanceRecordStatusEnum? fromJson(dynamic value) => AttendanceRecordStatusEnumTypeTransformer().decode(value);

  static List<AttendanceRecordStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttendanceRecordStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttendanceRecordStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AttendanceRecordStatusEnum] to String,
/// and [decode] dynamic data back to [AttendanceRecordStatusEnum].
class AttendanceRecordStatusEnumTypeTransformer {
  factory AttendanceRecordStatusEnumTypeTransformer() => _instance ??= const AttendanceRecordStatusEnumTypeTransformer._();

  const AttendanceRecordStatusEnumTypeTransformer._();

  String encode(AttendanceRecordStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AttendanceRecordStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AttendanceRecordStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'present': return AttendanceRecordStatusEnum.present;
        case r'absent': return AttendanceRecordStatusEnum.absent;
        case r'partial': return AttendanceRecordStatusEnum.partial;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AttendanceRecordStatusEnumTypeTransformer] instance.
  static AttendanceRecordStatusEnumTypeTransformer? _instance;
}


