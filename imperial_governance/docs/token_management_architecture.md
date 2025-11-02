# Token Management Architecture - Fortune 500 Pattern

## Executive Summary

This document explains the **correct way** to implement token management in the frontend application to prevent authentication failures (403 Forbidden errors). It covers the issue we faced, why it happened, and the architectural solution we implemented.

---

## The Problem We Faced

### Issue Description
**403 Forbidden errors** were occurring on the map feature despite users being authenticated. Some parts of the application worked fine while others failed with authentication errors.

### Root Cause
Multiple `TokenManager` instances were being created:
- **HTTP requests** had one TokenManager instance
- **WebSocket connections** had a different TokenManager instance
- Each instance fetched tokens independently from Firebase
- Different services ended up with **different tokens** at different times
- Some tokens were fresh, others were stale → **403 errors**

### Example of Wrong Code (What We Had Before)

```dart
// ❌ WRONG: Singleton pattern with internal TokenManager
class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;

  void initialize() {
    final tokenManager = TokenManager(FirebaseAuth.instance); // NEW INSTANCE!
    _api.dio.interceptors.add(AuthInterceptor(tokenManager));
  }
}

// ❌ WRONG: WebSocket creating its own TokenManager
class DashboardWebSocketService {
  final tokenManager = TokenManager(FirebaseAuth.instance); // DIFFERENT INSTANCE!
}
```

**Result:** HTTP and WebSocket had **separate** TokenManager instances → different tokens → authentication failures.

---

## The Solution - Fortune 500 Pattern

### Architecture Overview

We implemented **Provider-Based Dependency Injection** using Riverpod, following patterns used by Google, Netflix, and other Fortune 500 companies.

### Key Principles

1. **Single Source of Truth**: Exactly ONE TokenManager instance for the entire application
2. **Dependency Injection**: All services receive TokenManager via constructor
3. **No Singleton Pattern**: Services don't create their own dependencies
4. **Provider-Based**: Riverpod manages lifecycle and dependencies

---

## Correct Way to Implement

### 1. TokenManager - Single Source of Truth

**File:** `lib/core/services/token_manager.dart`

```dart
/// Centralized Token Manager
/// Single source of truth for Firebase ID tokens across the entire app
class TokenManager {
  final FirebaseAuth _firebaseAuth;
  String? _cachedToken;
  DateTime? _tokenExpiry;
  Timer? _refreshTimer;

  /// Firebase tokens expire in 1 hour - refresh at 55 minutes
  static const _refreshBeforeExpiry = Duration(minutes: 55);

  TokenManager(this._firebaseAuth) {
    // Listen to auth state changes
    _firebaseAuth.authStateChanges().listen((user) {
      if (user == null) {
        _clearToken();
      }
    });
  }

  /// Get current valid token (with automatic refresh)
  /// This is the ONLY method services should call
  Future<String?> getToken() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      _clearToken();
      return null;
    }

    // Return cached token if still valid
    if (_cachedToken != null && _isTokenValid()) {
      return _cachedToken;
    }

    // Token expired or doesn't exist - refresh it
    return await _refreshToken();
  }

  // ... (automatic refresh logic, caching, etc.)
}

/// Provider for TokenManager (singleton within provider scope)
final tokenManagerProvider = Provider<TokenManager>((ref) {
  final manager = TokenManager(FirebaseAuth.instance);

  ref.onDispose(() {
    manager.dispose();
  });

  return manager;
});
```

**Why This Works:**
- ✅ ONE instance created by `tokenManagerProvider`
- ✅ Automatic caching prevents duplicate Firebase calls
- ✅ Smart refresh at 55 minutes prevents expiry
- ✅ Shared across ALL services

---

### 2. ApiService - Dependency Injection

**File:** `lib/shared/services/api_service.dart`

```dart
/// ✅ CORRECT: Provider-based dependency injection
class ApiService {
  final TokenManager _tokenManager;
  late final FrontendEasyApi _api;

  // Constructor receives TokenManager (dependency injection)
  ApiService(this._tokenManager) {
    _api = FrontendEasyApi(basePathOverride: ApiConfig.baseUrl);
    _api.dio.interceptors.add(AuthInterceptor(_tokenManager));
  }

  ApiApi get api => _api.getApiApi();
  KioskActivationApi get kioskApi => _api.getKioskActivationApi();
  FrontendEasyApi get client => _api;
}

/// Provider creates ApiService with injected TokenManager
final apiServiceProvider = Provider<ApiService>((ref) {
  final tokenManager = ref.watch(tokenManagerProvider); // Same instance!
  return ApiService(tokenManager);
});
```

**Why This Works:**
- ✅ TokenManager injected via constructor
- ✅ `ref.watch(tokenManagerProvider)` returns THE SAME instance
- ✅ No internal creation of dependencies

---

### 3. WebSocket Service - Same Pattern

**File:** `lib/features/school/services/dashboard_websocket_service.dart`

```dart
/// ✅ CORRECT: Receives TokenManager via constructor
class DashboardWebSocketService {
  final String baseUrl;
  final TokenManager tokenManager; // Injected dependency

  DashboardWebSocketService({
    required this.baseUrl,
    required this.tokenManager, // Dependency injection
  });

  Future<void> connect() async {
    // Uses THE SAME TokenManager as HTTP requests
    final token = await tokenManager.getToken();
    final uri = Uri.parse('$wsUrl/ws/dashboard/?token=$token');
    _channel = WebSocketChannel.connect(uri);
  }
}
```

**Provider:**

```dart
/// ✅ CORRECT: Injects TokenManager from provider
final dashboardWebSocketServiceProvider = Provider<DashboardWebSocketService>((ref) {
  final tokenManager = ref.watch(tokenManagerProvider); // Same instance!

  return DashboardWebSocketService(
    baseUrl: ApiConfig.baseUrl,
    tokenManager: tokenManager,
  );
});
```

**Why This Works:**
- ✅ HTTP and WebSocket use **identical** TokenManager instance
- ✅ Both services always have the **same token**
- ✅ No 403 errors from stale tokens

---

### 4. Using Services in Providers

**File:** `lib/features/fleet/providers/routes_provider.dart`

```dart
/// ✅ CORRECT: Use ref.watch(apiServiceProvider)
final routesProvider = FutureProvider<List<api.Route>>((ref) async {
  try {
    // Get ApiService from provider (not singleton)
    final apiService = ref.watch(apiServiceProvider).api;
    final response = await apiService.apiV1RoutesList(isActive: true);
    return response.data?.results.toList() ?? [];
  } catch (e) {
    return [];
  }
});
```

**Why This Works:**
- ✅ `ref.watch(apiServiceProvider)` gets the same ApiService instance
- ✅ ApiService has the same TokenManager
- ✅ Consistent token across all API calls

---

## Wrong Ways to Implement (Anti-Patterns)

### ❌ Anti-Pattern 1: Singleton with Internal Dependencies

```dart
// ❌ WRONG: Creates multiple TokenManager instances
class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() => _instance;

  void initialize() {
    // Each call creates a NEW TokenManager instance!
    final tokenManager = TokenManager(FirebaseAuth.instance);
    _api.dio.interceptors.add(AuthInterceptor(tokenManager));
  }
}
```

**Why This Fails:**
- Each service creates its own TokenManager
- Multiple instances = multiple tokens
- Tokens get out of sync → 403 errors

---

### ❌ Anti-Pattern 2: Direct TokenManager Creation

```dart
// ❌ WRONG: Creating TokenManager directly
class MyService {
  final tokenManager = TokenManager(FirebaseAuth.instance); // NEW INSTANCE!

  Future<void> doSomething() async {
    final token = await tokenManager.getToken();
    // This token may be different from other services!
  }
}
```

**Why This Fails:**
- Not using the provider-managed instance
- Creates separate instance with separate cache
- No coordination with other services

---

### ❌ Anti-Pattern 3: Singleton Usage in Providers

```dart
// ❌ WRONG: Using singleton instead of provider
final routesProvider = FutureProvider<List<api.Route>>((ref) async {
  final apiService = ApiService().api; // Singleton - WRONG!
  // Should use: ref.watch(apiServiceProvider)
});
```

**Why This Fails:**
- Bypasses Riverpod dependency injection
- Can't override in tests
- Breaks provider dependency graph

---

## Constitutional Rules

These rules are enforced in `imperial_governance/constitutional_core/constitutions/state_management_constitution.yaml`:

### Mandatory Requirements

1. **EXACTLY ONE TokenManager instance per application**
   - TokenManager MUST be provided via `tokenManagerProvider`
   - All services MUST use `ref.watch(tokenManagerProvider)`
   - NEVER create `new TokenManager()` instances directly

2. **Provider-based dependency injection for all services**
   - Services MUST receive dependencies via constructor
   - Services MUST be created by providers
   - No singleton pattern for services requiring TokenManager

3. **Forbidden Patterns**
   - `ApiService._()` with internal `TokenManager()`
   - `final tokenManager = TokenManager(FirebaseAuth.instance)`
   - Singleton pattern for services with dependencies

4. **Required Patterns**
   - `ref.watch(tokenManagerProvider)` in all services
   - Constructor injection for dependencies
   - Single TokenManager shared across HTTP + WebSocket

---

## Testing Requirements

All tests MUST verify:

1. ✅ Single TokenManager instance across app
2. ✅ HTTP and WebSocket share same token
3. ✅ No duplicate token requests to Firebase
4. ✅ Automatic refresh before expiry
5. ✅ 401/403 handling with token refresh

**Example Test:**

```dart
test('CRITICAL: Single TokenManager instance for entire app', () {
  final container = ProviderContainer();

  final instance1 = container.read(tokenManagerProvider);
  final instance2 = container.read(tokenManagerProvider);

  // MUST be same instance - not different instances
  expect(identical(instance1, instance2), isTrue,
    reason: 'Multiple TokenManager instances cause stale tokens and 403 errors');

  container.dispose();
});
```

---

## Benefits of This Architecture

### 1. No Authentication Failures
- ✅ All services use the same fresh token
- ✅ No 403 errors from stale tokens
- ✅ Consistent authentication state

### 2. Performance Optimization
- ✅ Automatic token caching
- ✅ No duplicate Firebase token requests
- ✅ Smart refresh before expiry (55 minutes)

### 3. Maintainability
- ✅ Single source of truth
- ✅ Clear dependency graph
- ✅ Easy to test with provider overrides
- ✅ No hidden dependencies

### 4. Industry Standard
- ✅ Follows Google/Netflix patterns
- ✅ Provider-based dependency injection
- ✅ Constitutional enforcement prevents drift

---

## Migration Guide

### If You Have Old Singleton Code

**Before:**
```dart
class MyService {
  final apiService = ApiService().api;
}
```

**After:**
```dart
final myServiceProvider = Provider<MyService>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return MyService(apiService);
});

class MyService {
  final ApiService _apiService;
  MyService(this._apiService);
}
```

---

## Common Questions

### Q: Why can't I use `ApiService()` singleton?
**A:** Singletons create hidden dependencies and can't be injected. This prevents proper dependency injection and makes testing difficult.

### Q: Why do I need providers for everything?
**A:** Providers ensure ONE instance of TokenManager is shared across all services. Without providers, each service would create its own instance.

### Q: What if I need ApiService outside a provider?
**A:** Use `ProviderContainer` to access providers programmatically, or refactor to use provider pattern throughout.

### Q: How do I test services with dependencies?
**A:** Use provider overrides to inject mocks:

```dart
final container = ProviderContainer(
  overrides: [
    tokenManagerProvider.overrideWithValue(mockTokenManager),
  ],
);

final apiService = container.read(apiServiceProvider);
```

---

## Summary

### ✅ Correct Way
1. ONE TokenManager via `tokenManagerProvider`
2. Services receive TokenManager via constructor
3. Providers inject dependencies using `ref.watch()`
4. All code uses `ref.watch(apiServiceProvider)`

### ❌ Wrong Way
1. Singleton pattern with internal dependencies
2. Direct `TokenManager()` creation
3. Services creating their own dependencies
4. Using `ApiService()` instead of provider

### Result
- **No 403 errors** - All services share same token
- **Better performance** - Automatic caching and refresh
- **Easier testing** - Provider overrides for mocks
- **Constitutional protection** - Drift prevention rules

---

## References

- Constitutional Rules: `imperial_governance/constitutional_core/constitutions/state_management_constitution.yaml`
- TokenManager Implementation: `lib/core/services/token_manager.dart`
- ApiService Implementation: `lib/shared/services/api_service.dart`
- Test Suite: `test/services/token_manager_test.dart`
