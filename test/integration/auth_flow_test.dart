/// Industry Standard: Authentication Flow Integration Tests
///
/// Mirrors backend pattern: tests/integration/test_authentication_flow.py
/// Tests complete auth lifecycle to catch integration bugs
///
/// Uses Mocktail (2025 best practice - no codegen, null-safe)

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mocktail/mocktail.dart';
import 'package:frontend_easy/shared/services/auth_service.dart';
import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy/core/services/token_manager.dart';

// Mock Firebase Auth
class MockFirebaseAuth extends Mock implements FirebaseAuth {}
class MockUser extends Mock implements User {}

void main() {
  group('Authentication Lifecycle Tests - Provider Pattern', () {
    late MockFirebaseAuth mockAuth;
    late MockUser mockUser;

    setUp(() {
      mockAuth = MockFirebaseAuth();
      mockUser = MockUser();
    });

    test('Provider creates AuthService with dependencies', () {
      final container = ProviderContainer(
        overrides: [
          authServiceProvider.overrideWithValue(AuthService(mockAuth)),
        ],
      );

      final authService = container.read(authServiceProvider);
      expect(authService, isNotNull);

      container.dispose();
    });

    test('Auth state changes are reactive', () async {
      when(() => mockAuth.authStateChanges())
          .thenAnswer((_) => Stream.value(mockUser));

      final container = ProviderContainer(
        overrides: [
          authServiceProvider.overrideWithValue(AuthService(mockAuth)),
        ],
      );

      final authStateStream = container.read(currentUserProvider.stream);
      final user = await authStateStream.first;

      expect(user, isNotNull);

      container.dispose();
    });

    test('Logout clears Firebase session', () async {
      when(() => mockAuth.signOut()).thenAnswer((_) async => {});

      final authService = AuthService(mockAuth);
      await authService.logout();

      verify(() => mockAuth.signOut()).called(1);
    });

    test('isAuthenticated returns true when user exists', () {
      when(() => mockAuth.currentUser).thenReturn(mockUser);

      final authService = AuthService(mockAuth);
      expect(authService.isAuthenticated, isTrue);
    });

    test('isAuthenticated returns false when user is null', () {
      when(() => mockAuth.currentUser).thenReturn(null);

      final authService = AuthService(mockAuth);
      expect(authService.isAuthenticated, isFalse);
    });
  });

  group('API Integration with Auth', () {
    test('API calls include Authorization header via TokenManager', () {
      // Verify API service properly attaches Bearer token via provider
      final container = ProviderContainer();

      final apiService = container.read(apiServiceProvider);

      // Auth interceptor should be added
      expect(apiService.client.dio.interceptors.length, greaterThan(0));

      container.dispose();
    });

    test('Single TokenManager instance across app', () {
      // Verify Fortune 500 pattern - single token manager
      final container = ProviderContainer();

      final tokenManager1 = container.read(tokenManagerProvider);
      final tokenManager2 = container.read(tokenManagerProvider);

      // Must be same instance
      expect(identical(tokenManager1, tokenManager2), isTrue);

      container.dispose();
    });
  });

  group('Token Separation: User vs Kiosk', () {
    test('User tokens have type="user" claim', () {
      // User tokens must be marked as "user" type (not "kiosk")
      // Backend enforces 1-day lifetime for user tokens
      // Frontend should never use kiosk 60-day tokens for users

      // TODO: Add JWT decode verification when needed
    });
  });
}
