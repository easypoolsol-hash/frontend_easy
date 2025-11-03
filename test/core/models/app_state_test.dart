/// Tests for AppState model (freezed + json_serializable)
///
/// This demonstrates Google Product Standard testing for custom models.

import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_easy/core/models/app_state.dart';

void main() {
  group('AppState Model Tests - Google Product Standard 2025', () {
    test('creates instance with required fields', () {
      final state = AppState(
        userId: 'user123',
        isOnline: true,
      );

      expect(state.userId, 'user123');
      expect(state.isOnline, true);
      expect(state.isDarkMode, false); // default value
      expect(state.unreadNotifications, 0); // default value
    });

    test('creates instance with all fields', () {
      final state = AppState(
        userId: 'user456',
        isOnline: false,
        isDarkMode: true,
        unreadNotifications: 5,
      );

      expect(state.userId, 'user456');
      expect(state.isOnline, false);
      expect(state.isDarkMode, true);
      expect(state.unreadNotifications, 5);
    });

    test('copyWith creates new instance with updated fields', () {
      final original = AppState(
        userId: 'user123',
        isOnline: true,
      );

      final updated = original.copyWith(
        isOnline: false,
        unreadNotifications: 3,
      );

      // Original unchanged
      expect(original.userId, 'user123');
      expect(original.isOnline, true);
      expect(original.unreadNotifications, 0);

      // Updated has changes
      expect(updated.userId, 'user123'); // unchanged
      expect(updated.isOnline, false); // updated
      expect(updated.unreadNotifications, 3); // updated
    });

    test('equality works correctly (freezed)', () {
      final state1 = AppState(
        userId: 'user123',
        isOnline: true,
        isDarkMode: false,
        unreadNotifications: 2,
      );

      final state2 = AppState(
        userId: 'user123',
        isOnline: true,
        isDarkMode: false,
        unreadNotifications: 2,
      );

      final state3 = AppState(
        userId: 'user123',
        isOnline: false, // different
        isDarkMode: false,
        unreadNotifications: 2,
      );

      expect(state1, equals(state2)); // same values
      expect(state1, isNot(equals(state3))); // different values
    });

    test('hashCode works correctly (freezed)', () {
      final state1 = AppState(
        userId: 'user123',
        isOnline: true,
        unreadNotifications: 2,
      );

      final state2 = AppState(
        userId: 'user123',
        isOnline: true,
        unreadNotifications: 2,
      );

      expect(state1.hashCode, equals(state2.hashCode));
    });

    test('toJson serializes correctly (json_serializable)', () {
      final state = AppState(
        userId: 'user123',
        isOnline: true,
        isDarkMode: true,
        unreadNotifications: 5,
      );

      final json = state.toJson();

      expect(json['userId'], 'user123');
      expect(json['isOnline'], true);
      expect(json['isDarkMode'], true);
      expect(json['unreadNotifications'], 5);
    });

    test('fromJson deserializes correctly (json_serializable)', () {
      final json = {
        'userId': 'user456',
        'isOnline': false,
        'isDarkMode': true,
        'unreadNotifications': 10,
      };

      final state = AppState.fromJson(json);

      expect(state.userId, 'user456');
      expect(state.isOnline, false);
      expect(state.isDarkMode, true);
      expect(state.unreadNotifications, 10);
    });

    test('round-trip serialization (toJson -> fromJson)', () {
      final original = AppState(
        userId: 'user789',
        isOnline: true,
        isDarkMode: false,
        unreadNotifications: 3,
      );

      final json = original.toJson();
      final deserialized = AppState.fromJson(json);

      expect(deserialized, equals(original));
    });

    test('handles default values in JSON', () {
      final json = {
        'userId': 'user123',
        'isOnline': true,
        // isDarkMode and unreadNotifications omitted
      };

      final state = AppState.fromJson(json);

      expect(state.userId, 'user123');
      expect(state.isOnline, true);
      expect(state.isDarkMode, false); // default
      expect(state.unreadNotifications, 0); // default
    });
  });
}
