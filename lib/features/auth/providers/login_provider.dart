import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import 'package:frontend_easy/core/services/firebase_auth_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

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
class LoginNotifier extends StateNotifier<AsyncValue<LoginState>> {
  final FirebaseAuthService _authService;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  LoginNotifier(this._authService) : super(const AsyncValue.data(LoginState()));

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

      // Get Firebase ID token to send to backend
      final idToken = await userCredential.user?.getIdToken();

      if (idToken != null) {
        // Store token securely for API requests
        await _storage.write(key: 'firebase_id_token', value: idToken);

        state = const AsyncValue.data(LoginState(isSuccess: true));
        if (context.mounted) {
          context.go('/');
        }
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
          await _storage.write(key: 'firebase_id_token', value: idToken);
          state = const AsyncValue.data(LoginState(isSuccess: true));
          if (context.mounted) {
            context.go('/');
          }
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
    await _storage.delete(key: 'firebase_id_token');
    if (context.mounted) {
      context.go('/login');
    }
  }
}

/// Login provider - uses Firebase Auth for 100% secure authentication
final loginProvider = StateNotifierProvider<LoginNotifier, AsyncValue<LoginState>>(
  (ref) {
    final authService = ref.watch(firebaseAuthServiceProvider);
    return LoginNotifier(authService);
  },
);