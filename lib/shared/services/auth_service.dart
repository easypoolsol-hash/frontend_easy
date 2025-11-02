import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Authentication Service - Fortune 500 Provider Pattern
/// Uses Firebase Auth as single source of truth
/// No token storage needed - Firebase handles it automatically
///
/// Modern Pattern:
/// - No singleton pattern
/// - Dependency injection via Riverpod
/// - Firebase Auth handles token management
/// - TokenManager handles token refresh automatically
class AuthService {
  final FirebaseAuth _firebaseAuth;

  /// Constructor with dependency injection
  AuthService(this._firebaseAuth);

  /// Check if user is authenticated
  bool get isAuthenticated => _firebaseAuth.currentUser != null;

  /// Get current user
  User? get currentUser => _firebaseAuth.currentUser;

  /// Sign out user
  /// - Clears Firebase session
  /// - TokenManager automatically clears cached token
  /// - AuthInterceptor stops adding tokens to requests
  Future<void> logout() async {
    await _firebaseAuth.signOut();
    // That's it! Firebase handles everything:
    // - Session cleared
    // - TokenManager detects null user and clears token
    // - No manual token cleanup needed
  }

  /// Listen to auth state changes
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
}

/// Provider for AuthService (Fortune 500 pattern)
final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService(FirebaseAuth.instance);
});

/// Provider for current user (reactive)
final currentUserProvider = StreamProvider<User?>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges;
});

/// Provider for auth state (boolean)
final isAuthenticatedProvider = StreamProvider<bool>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges.map((user) => user != null);
});
