import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import 'package:frontend_easy/shared/services/api_service.dart';
import 'package:frontend_easy/shared/services/auth_service.dart';

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

/// Login notifier for managing login state
class LoginNotifier extends StateNotifier<AsyncValue<LoginState>> {
  LoginNotifier() : super(const AsyncValue.data(LoginState()));

  Future<void> login({
    required String username,
    required String password,
    required BuildContext context,
  }) async {
    state = const AsyncValue.loading();

    try {
      final apiService = ApiService();

      // Session-based login for web dashboard
      // No JWT tokens - uses session cookie instead
      final response = await apiService.client.dio.post<Map<String, dynamic>>(
        '/api/v1/users/session_login/',
        data: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200 && response.data != null) {
        // Session cookie is automatically set by browser
        // No need to store tokens manually

        state = const AsyncValue.data(LoginState(isSuccess: true));
        if (context.mounted) {
          context.go('/');
        }
      } else {
        state = AsyncValue.data(LoginState(
          errorMessage: 'Login failed: HTTP ${response.statusCode}',
        ));
      }
    } catch (e) {
      state = AsyncValue.data(LoginState(
        errorMessage: 'Login error: $e',
      ));
    }
  }

  Future<void> checkIfLoggedIn(BuildContext context) async {
    state = const AsyncValue.loading();

    try {
      final isAuth = await AuthService().isAuthenticated();
      if (isAuth) {
        state = const AsyncValue.data(LoginState(isSuccess: true));
        if (context.mounted) {
          context.go('/');
        }
      } else {
        state = const AsyncValue.data(LoginState());
      }
    } catch (e) {
      state = AsyncValue.data(LoginState(
        errorMessage: 'Authentication check failed: $e',
      ));
    }
  }
}

/// Login provider
final loginProvider = StateNotifierProvider<LoginNotifier, AsyncValue<LoginState>>(
  (ref) => LoginNotifier(),
);