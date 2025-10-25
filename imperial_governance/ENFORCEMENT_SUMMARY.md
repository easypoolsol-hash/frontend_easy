# Imperial Governance - 2025 Best Practices Enforcement

## ✅ Successfully Updated

The Imperial Governance system has been updated to enforce **2025 Flutter/Dart best practices**.

## 📊 Current Status

### Detectors Active (5 total)

1. **✅ Zero Drift API Detector** - PASSING
   - Ensures all API calls use auto-generated client
   - No hardcoded URLs allowed
   - Type-safe, null-safe API access

2. **✅ SDK Version Consistency Detector** - PASSING
   - All packages use `>=3.9.0 <4.0.0`
   - Consistent builds guaranteed

3. **🆕 Freezed + JSON Serialization Detector** - ACTIVE
   - Enforces `@freezed` for immutable models
   - Enforces `@JsonSerializable` for JSON mapping
   - No manual `toJson/fromJson` allowed
   - No `built_value` (deprecated)

4. **🆕 Null-Safety Best Practices Detector** - ACTIVE
   - Enforces null-aware operators (`?.`, `??`)
   - Recommends `AsyncValue` for async state
   - No manual `if (x != null)` where `?.` works

5. **⚠️ Drift Detector** - NEEDS SSOT CONFIG
   - Validates SSOT integrity
   - Currently failing due to missing `ssot.yaml`

## 🚨 Current Violations Detected

### High Priority (10 violations)

#### Freezed + JSON Serialization (6 violations)
```
❌ lib/features/school/models/bus_fleet_status.dart
❌ lib/features/school/models/school_dashboard_summary.dart
❌ lib/features/school/models/student_boarding_timeline.dart
❌ lib/features/school/models/student_movement_event.dart
❌ lib/features/school/models/student_movement_row.dart
❌ lib/features/school/models/student_movement_summary.dart
```

**Fix Required:** Add `@freezed` or `@JsonSerializable` annotations to these models.

#### Null-Safety Best Practices (4 violations)
```
❌ lib/features/auth/presentation/screens/login_screen.dart
❌ lib/features/fleet/presentation/screens/route_map_screen.dart
❌ lib/features/home/presentation/screens/home_screen.dart
❌ lib/features/map/widgets/route_map_widget.dart
```

**Fix Required:** Replace manual loading/error states with `AsyncValue.when/map`.

## 🔧 How to Test Enforcement

```powershell
# Run all detectors
cd frontend_easy
dart run imperial_governance/enforcement/constitutional_enforcement.dart

# Run specific detector
dart run imperial_governance/enforcement/detectors/domain_specific/freezed_json_serialization_detector.dart
```

## 📝 Fixing Violations

### Example: Add @freezed to Model

**Before:**
```dart
class StudentMovementRow {
  final String uuid;
  final String studentName;
  final String grade;

  const StudentMovementRow({
    required this.uuid,
    required this.studentName,
    required this.grade,
  });
}
```

**After (2025 Best Practice):**
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_movement_row.freezed.dart';
part 'student_movement_row.g.dart';

@freezed
class StudentMovementRow with _$StudentMovementRow {
  const factory StudentMovementRow({
    required String uuid,
    required String studentName,
    required String grade,
  }) = _StudentMovementRow;

  factory StudentMovementRow.fromJson(Map<String, dynamic> json) =>
      _$StudentMovementRowFromJson(json);
}
```

**Then run:**
```powershell
dart run build_runner build --delete-conflicting-outputs
```

### Example: Use AsyncValue

**Before:**
```dart
bool isLoading = false;
String? error;

if (isLoading) {
  return CircularProgressIndicator();
}
if (error != null) {
  return Text('Error: $error');
}
return Text(data);
```

**After (2025 Best Practice):**
```dart
final dataAsync = ref.watch(dataProvider);

return dataAsync.when(
  loading: () => CircularProgressIndicator(),
  error: (err, stack) => Text('Error: $err'),
  data: (data) => Text(data),
);
```

## 🎯 Next Steps

1. **Fix immediate compilation errors** (null safety in screens)
2. **Add @freezed to school models** (6 files)
3. **Migrate to AsyncValue** (4 screens)
4. **Configure SSOT** (create `ssot.yaml` if needed)

## 🏛️ Constitutional Principles

The enforcement system follows these principles:

- **Zero-Trust:** AI cannot bypass enforcement
- **Automated:** Git hooks run on every commit
- **2025 Standards:** Modern Dart/Flutter patterns only
- **No Manual Discipline:** Technical barriers prevent violations

## 📚 References

- **Freezed Documentation:** https://pub.dev/packages/freezed
- **json_serializable:** https://pub.dev/packages/json_serializable
- **Riverpod AsyncValue:** https://riverpod.dev/docs/concepts/combining_requests

---

**Last Updated:** 2025
**Enforcement Version:** 2.0 (2025 Best Practices)
