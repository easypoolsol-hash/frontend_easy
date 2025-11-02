import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Centralized Token Manager
/// Single source of truth for Firebase ID tokens across the entire app
/// Handles automatic refresh, caching, and token expiry
///
/// Industry Pattern (Google/Netflix):
/// - One token manager for entire app
/// - Automatic refresh before expiry
/// - All services (HTTP, WebSocket) use same token
/// - No duplicate token requests
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

  /// Refresh token from Firebase
  Future<String?> _refreshToken() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return null;

    try {
      // Get fresh token from Firebase
      final token = await user.getIdToken(false); // false = use cache if valid
      if (token != null) {
        _cachedToken = token;
        _tokenExpiry = DateTime.now().add(const Duration(hours: 1));

        // Schedule automatic refresh before expiry
        _scheduleTokenRefresh();

        return token;
      }
    } catch (e) {
      // Token refresh failed - clear cached token
      _clearToken();
    }

    return null;
  }

  /// Force refresh token (use sparingly)
  Future<String?> forceRefreshToken() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return null;

    try {
      final token = await user.getIdToken(true); // true = force refresh
      if (token != null) {
        _cachedToken = token;
        _tokenExpiry = DateTime.now().add(const Duration(hours: 1));
        _scheduleTokenRefresh();
        return token;
      }
    } catch (e) {
      _clearToken();
    }

    return null;
  }

  /// Check if cached token is still valid
  bool _isTokenValid() {
    if (_tokenExpiry == null) return false;

    // Add 5-minute buffer to avoid edge cases
    final expiryWithBuffer = _tokenExpiry!.subtract(const Duration(minutes: 5));
    return DateTime.now().isBefore(expiryWithBuffer);
  }

  /// Schedule automatic token refresh before expiry
  void _scheduleTokenRefresh() {
    _refreshTimer?.cancel();

    if (_tokenExpiry != null) {
      final refreshAt = _tokenExpiry!.subtract(_refreshBeforeExpiry);
      final delay = refreshAt.difference(DateTime.now());

      if (delay.isNegative) {
        // Token expires soon - refresh immediately
        _refreshToken();
      } else {
        // Schedule refresh
        _refreshTimer = Timer(delay, () async {
          await _refreshToken();
        });
      }
    }
  }

  /// Clear cached token
  void _clearToken() {
    _cachedToken = null;
    _tokenExpiry = null;
    _refreshTimer?.cancel();
    _refreshTimer = null;
  }

  /// Dispose resources
  void dispose() {
    _refreshTimer?.cancel();
  }
}

/// Provider for TokenManager (singleton)
final tokenManagerProvider = Provider<TokenManager>((ref) {
  final manager = TokenManager(FirebaseAuth.instance);

  // Clean up on dispose
  ref.onDispose(() {
    manager.dispose();
  });

  return manager;
});

/// Provider for current token (auto-refreshing)
final currentTokenProvider = FutureProvider<String?>((ref) async {
  final tokenManager = ref.watch(tokenManagerProvider);
  return await tokenManager.getToken();
});
