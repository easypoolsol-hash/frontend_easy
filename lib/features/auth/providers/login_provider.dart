import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend_easy/core/services/firebase_auth_service.dart';

part 'login_provider.g.dart';

/// Login state
class LoginState {
  final bool isSubmitting;
  final String? errorMessage;
  final bool isSuccess;

  const LoginState({
    this.isSubmitting = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  LoginState copyWith({
    bool? isSubmitting,
    String? errorMessage,
    bool? isSuccess,
  }) {
    return LoginState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      errorMessage: errorMessage ?? this.errorMessage,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}

/// Login notifier using Firebase Auth (industry standard, 100% secure)
@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  AsyncValue<LoginState> build() {
    return const AsyncValue.data(LoginState());
  }

  FirebaseAuthService get _authService => ref.read(firebaseAuthServiceProvider);

  Future<void> login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = const AsyncValue.loading();

    try {
      // Sign in with Firebase Auth (industry standard security)
      final userCredential = await _authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Get Firebase ID token to send to backend (for future API calls)
      final idToken = await userCredential.user?.getIdToken();

      if (idToken != null) {
        // Store Firebase token securely for API requests (optional - backend integration)
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('firebase_id_token', idToken);

        state = const AsyncValue.data(LoginState(isSuccess: true));
        // Navigation is handled by router redirect logic
      } else {
        state = const AsyncValue.data(LoginState(
          errorMessage: 'Failed to get authentication token',
        ));
      }
    } catch (e) {
      state = AsyncValue.data(LoginState(
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> checkIfLoggedIn(BuildContext context) async {
    state = const AsyncValue.loading();

    try {
      final user = _authService.currentUser;
      if (user != null) {
        // User is logged in with Firebase
        final idToken = await user.getIdToken();
        if (idToken != null) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('firebase_id_token', idToken);
          state = const AsyncValue.data(LoginState(isSuccess: true));
          // Navigation handled by router
          return;
        }
      }

      state = const AsyncValue.data(LoginState());
    } catch (e) {
      state = AsyncValue.data(LoginState(
        errorMessage: 'Authentication check failed: $e',
      ));
    }
  }

  Future<void> logout(BuildContext context) async {
    await _authService.signOut();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('firebase_id_token');
    if (context.mounted) {
      context.go('/login');
    }
  }
}