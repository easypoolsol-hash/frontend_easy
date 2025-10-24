# Frontend Testing Strategy

Mirrors backend industrial pattern: `backend_easy/tests/README.md`

## Test Structure (Industry Standard)

```
test/
├── integration/           # Complete flow tests
│   └── auth_flow_test.dart
├── services/             # Service layer tests
│   └── api_service_test.dart
├── providers/            # State management tests
│   └── routes_provider_test.dart
├── security/             # Critical security tests
│   └── token_separation_test.dart
└── widget_test.dart      # Default Flutter test
```

## Critical Tests (Must Pass)

### 1. Authentication Flow (`integration/auth_flow_test.dart`)
**Why Critical**: Catches token lifecycle bugs
- Login → Access API → Token Refresh → Logout
- Mirrors: `backend_easy/tests/integration/test_authentication_flow.py`

### 2. API Operation IDs (`services/api_service_test.dart`)
**Why Critical**: Prevents hardcoded URLs
- Uses `apiV1RoutesList()` NOT `dio.get('/api/v1/routes/')`
- Backend uses `openapi_helper(operation_id="...")` for same reason

### 3. Token Separation (`security/token_separation_test.dart`)
**Why Critical**: Prevents 60-day user tokens
- User tokens: 1 day (users/token_config.py)
- Kiosk tokens: 60 days (kiosks/token_config.py)
- Separate endpoints ensure no mixing

## Running Tests

```bash
# All tests
flutter test

# Integration tests only
flutter test test/integration/

# Critical security tests
flutter test test/security/

# Watch mode
flutter test --watch
```

## Test Principles (Matching Backend)

1. **Use Operation IDs**: Never hardcode `/api/v1/routes/`
2. **Test Complete Flows**: Not just units
3. **Security First**: Token separation is critical
4. **Graceful Degradation**: API errors shouldn't crash app

## Adding New Tests

Follow backend pattern:
- Backend: `tests/integration/test_X.py` → Frontend: `test/integration/X_test.dart`
- Use fixtures/providers like backend uses pytest fixtures
- Test operation IDs, not URLs

## Dependencies

- `flutter_test` (SDK) - Basic testing
- `flutter_riverpod` - For provider tests
- Mock server setup: TODO (backend uses pytest-django)
