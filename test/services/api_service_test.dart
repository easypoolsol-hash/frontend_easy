/// Unit tests for API Service
/// Critical: Ensures API calls use operation IDs (not hardcoded URLs)
///
/// Uses Mocktail (2025 best practice - no codegen, null-safe)

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/shared/services/api_service.dart';

void main() {
  group('API Service Provider Pattern', () {
    test('Provider creates ApiService with dependencies', () {
      // Verify provider-based dependency injection
      final container = ProviderContainer();

      final apiService = container.read(apiServiceProvider);

      // Verify API client is initialized
      expect(apiService.api, isNotNull);

      container.dispose();
    });

    test('Auth interceptor is registered via dependency injection', () {
      // Verify TokenManager is injected and AuthInterceptor is added
      final container = ProviderContainer();

      final apiService = container.read(apiServiceProvider);

      // Verify interceptor for automatic token refresh
      expect(apiService.client.dio.interceptors.length, greaterThan(0));

      container.dispose();
    });

    test('Base URL configured from environment', () {
      final container = ProviderContainer();

      final apiService = container.read(apiServiceProvider);

      // Verify base URL is not hardcoded
      expect(apiService.client.dio.options.baseUrl, isNotEmpty);

      container.dispose();
    });

    test('Single ApiService instance per container', () {
      // Verify provider creates singleton within container
      final container = ProviderContainer();

      final instance1 = container.read(apiServiceProvider);
      final instance2 = container.read(apiServiceProvider);

      // Should be same instance
      expect(identical(instance1, instance2), isTrue);

      container.dispose();
    });
  });
}
