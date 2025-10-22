# Frontend Architecture Constitution

**Purpose:** Ensure AI-written code follows best practices and doesn't drift.

## 🏛️ **CONSTITUTIONAL PRINCIPLES**

### **1. JSON Serialization (CRITICAL)**
- ✅ **ALWAYS** use `json_serializable` for model classes
- ❌ **NEVER** write manual `fromJson` or `toJson`
- ✅ Use generated API client from `bus_kiosk_api` package
- ❌ **NEVER** parse JSON manually with `Map<String, dynamic>`

### **2. API Communication (CRITICAL)**
- ✅ **ALWAYS** use `bus_kiosk_api` package (OpenAPI generated)
- ❌ **NEVER** make manual HTTP calls with `dio` or `http` directly
- ✅ Use `ApiService` wrapper for configuration
- ❌ **NEVER** hardcode URLs or endpoints

### **3. State Management (CRITICAL)**
- ✅ **ALWAYS** use Riverpod for global/shared state
- ✅ Use `ConsumerWidget` or `ConsumerStatefulWidget`
- ❌ **NEVER** use `setState` for global state
- ❌ **NEVER** use InheritedWidget or Provider package

### **4. Architecture (ENFORCED)**
- ✅ **ALWAYS** follow feature-based structure:
  ```
  lib/
  ├─ core/        (config, theme, routing)
  ├─ features/    (business features)
  │  └─ [feature]/
  │     ├─ models/
  │     ├─ providers/
  │     └─ presentation/
  │        ├─ screens/
  │        └─ widgets/
  └─ shared/      (reusable across features)
  ```
- ❌ **NEVER** create files in `lib/` root (except main.dart)
- ❌ **NEVER** mix presentation and business logic in same file

### **5. Code Organization (ENFORCED)**
- ✅ **ALWAYS** single responsibility per file
- ✅ Max 300 lines per file (prefer 150-200)
- ❌ **NEVER** create "god classes" or "utility classes"
- ❌ **NEVER** use `utils/` folder (anti-pattern)

### **6. Libraries & Tools (ALLOWED LIST)**

**Allowed:**
- `flutter_riverpod` (state management)
- `go_router` (routing)
- `flutter_map` (maps)
- `dio` (only via ApiService wrapper)
- `json_annotation` + `json_serializable` (JSON)
- `shared_preferences` (local storage)
- `freezed` (immutable models - if needed)

**Forbidden:**
- ❌ `provider` (use riverpod instead)
- ❌ `bloc` (use riverpod instead)
- ❌ `get_it` (use riverpod instead)
- ❌ `http` package (use generated API client)
- ❌ Manual JSON parsing

### **7. Material Design 3 (ENFORCED)**
- ✅ **ALWAYS** use MD3 widgets and theme
- ✅ Use `AppTheme.lightTheme` / `AppTheme.darkTheme`
- ❌ **NEVER** hardcode colors (use theme)
- ❌ **NEVER** use deprecated Material 2 widgets

---

## 🚨 **VIOLATION RESPONSE**

**If AI violates these principles:**
1. STOP immediately
2. Identify the violation
3. Revert to constitutional compliance
4. Continue work

**For human developers:**
- Pre-commit hooks will catch violations
- CI/CD will enforce architecture rules
- Code review will verify compliance

---

## 📊 **ENFORCEMENT**

**Automated:**
- `analysis_options.yaml` - Strict linting
- Pre-commit - Format and analyze
- CI/CD - Architecture tests

**Manual:**
- Code review checklist
- Architecture decision records (ADRs)

---

## 🔄 **UPDATES**

This document is living. Update when:
- New architectural patterns adopted
- New libraries approved
- Best practices change

**Last Updated:** 2025-10-22
**Version:** 1.0.0
