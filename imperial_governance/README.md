# Imperial Governance - Frontend Easy

**Constitutional Enforcement System for Zero-Drift Architecture**

## 🎯 Purpose

Prevents API drift between backend_easy and frontend_easy by enforcing:
- ✅ All API calls use auto-generated client (no hardcoded URLs)
- ✅ SDK version consistency across packages
- ✅ Constitutional compliance on every commit

## 🏗️ Architecture

```
backend_easy (Django REST + OpenAPI)
    ↓ (git pre-commit hook)
    ↓ 1. Generate openapi-schema.yaml
    ↓ 2. Copy to frontend_easy/
    ↓ 3. Auto-generate Dart API client
    ↓
frontend_easy (Flutter Web/Mobile)
    ↓ (git pre-commit hook)
    ↓ Run constitutional enforcement
    ✓ Zero-drift guaranteed
```

## 📂 Structure

```
imperial_governance/
├── enforcement/
│   ├── constitutional_enforcement.dart   # Main runner
│   └── detectors/
│       ├── domain_specific/
│       │   └── zero_drift_api_detector.dart  # Detects hardcoded APIs
│       └── sdk_version_consistency_detector.dart  # SDK version checker
├── constitutional_core/
│   └── contracts/                        # Shared contracts (if needed)
├── pubspec.yaml                          # Analyzer dependencies
└── README.md                             # This file
```

## 🚀 Setup

### 1. Install Dependencies

```powershell
# In frontend_easy/
cd imperial_governance
dart pub get
cd ..
```

### 2. Install Git Hooks

```powershell
# In frontend_easy/
.\scripts\install-hooks.ps1
```

This installs pre-commit hooks that run constitutional enforcement.

### 3. Verify Setup

```powershell
# Test hooks without committing
pre-commit run --all-files
```

## 🛡️ Constitutional Detectors

### 1. Zero-Drift API Detector

**Prevents:**
- ❌ Hardcoded API URLs (`/api/v1/...`)
- ❌ Raw Dio HTTP calls bypassing generated client
- ❌ BaseURL overrides outside configuration

**Enforces:**
- ✅ All API calls use `packages/frontend_easy_api`
- ✅ Type-safe, null-safe API client
- ✅ Automatic sync with backend changes

**Example Violation:**
```dart
// ❌ BAD - Hardcoded URL
await dio.get('/api/v1/students/');

// ✅ GOOD - Generated client
await _apiClient.studentsStudentsList();
```

### 2. SDK Version Consistency Detector

**Ensures:**
- ✅ All `pubspec.yaml` files use same Dart SDK version
- ✅ No "version solving failed" errors
- ✅ Reproducible builds

## 🔄 Workflow

### Normal Development

1. Backend developer changes API (Django models/views/serializers)
2. Backend pre-commit hook:
   - Regenerates `openapi-schema.yaml`
   - Copies to `frontend_easy/`
   - Regenerates `packages/frontend_easy_api/`
3. Frontend developer pulls changes
4. Frontend pre-commit hook:
   - Runs zero-drift detector
   - Ensures no hardcoded APIs
   - Validates SDK versions

### Zero-Drift Guarantee

**Backend changes → Frontend updates are AUTOMATIC**

- Schema changes auto-generate new client methods
- Type mismatches caught at compile time
- No manual API documentation needed
- No postman collections to maintain

## 📊 2025 Best Practices Used

### JSON Serialization
- ✅ `json_serializable` (industry standard)
- ✅ `freezed` for immutable models (modern pattern)
- ❌ ~~`built_value`~~ (older approach, removed)

### Code Generation
- ✅ `dart-dio` generator with Dio HTTP client
- ✅ `useEnumExtension: true` (Dart 3.0+)
- ✅ `nullableFields: true` (full null-safety)
- ✅ `dateLibrary: core` (no external dependencies)

### OpenAPI Generator Config
- ✅ Configuration in `openapi-generator-config.yaml`
- ✅ Clean, versioned, documented settings
- ✅ Consistent with bus_kiosk_easy pattern

## 🧪 Testing

### Manual Test
```powershell
# Run all detectors
dart run imperial_governance/enforcement/constitutional_enforcement.dart

# Run specific detector
dart run imperial_governance/enforcement/detectors/domain_specific/zero_drift_api_detector.dart
```

### In Pre-Commit
```powershell
# Runs automatically on git commit
git commit -m "feat: add new feature"

# Skip hooks (NOT recommended - breaks zero-drift)
git commit --no-verify -m "fix: urgent hotfix"
```

## 🔧 Troubleshooting

### "Missing openapi-schema.yaml"
**Solution:** Run backend pre-commit hook first
```powershell
cd ../backend_easy
git add .
git commit -m "chore: regenerate schema"
```

### "No detector files found"
**Solution:** Install imperial_governance dependencies
```powershell
cd imperial_governance
dart pub get
```

### "Dart SDK not found"
**Solution:** Install Flutter SDK (includes Dart)
```powershell
# Download from https://flutter.dev
# Add to PATH
flutter doctor
```

## 📚 Constitutional Principles

### SSOT (Single Source of Truth)
- Backend OpenAPI spec is the ONLY source of truth
- Frontend NEVER defines API contracts
- Schema changes flow ONE direction: Backend → Frontend

### Architecture as Code
- Git hooks enforce architecture
- No human discipline required
- Technical barriers prevent violations

### Zero-Trust Security
- AI/humans cannot bypass enforcement
- All commits validated
- Constitutional compliance mandatory

## 🎓 Learning Resources

### Understanding the Architecture
1. Read [backend_easy/.pre-commit-config.yaml](../../backend_easy/.pre-commit-config.yaml)
2. See how schema generation works
3. Trace the flow: Django → OpenAPI → Dart client

### Extending Detectors
1. Copy existing detector as template
2. Implement violation detection logic
3. Add to `detectors/` folder
4. Automatically runs on commit

## 🚨 Common Violations

### Violation: Hardcoded API URL
```dart
// This will FAIL pre-commit
final response = await dio.get('/api/v1/students/');
```

**Fix:**
```dart
// Use generated client
final response = await _apiClient.studentsStudentsList();
```

### Violation: SDK Version Mismatch
```yaml
# pubspec.yaml
environment:
  sdk: ">=3.0.0 <4.0.0"  # Wrong version
```

**Fix:**
```yaml
# pubspec.yaml
environment:
  sdk: ">=3.9.0 <4.0.0"  # Match all other packages
```

## 📞 Support

For issues or questions:
1. Check this README
2. Review [bus_kiosk_easy/imperial_governance](../../bus_kiosk_easy/imperial_governance) (similar pattern)
3. Check backend pre-commit config
4. Verify OpenAPI schema exists

---

**Remember:** The system exists because AI cannot self-discipline. Technical barriers enforce constitutional principles automatically.
