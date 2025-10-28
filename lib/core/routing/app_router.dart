import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:frontend_easy/features/auth/presentation/screens/login_screen.dart';
import 'package:frontend_easy/features/home/presentation/screens/home_screen.dart';
import 'package:frontend_easy/features/home/presentation/screens/boarding_events_screen.dart';
import 'package:frontend_easy/features/map/presentation/screens/map_screen.dart';
import 'package:frontend_easy/features/fleet/presentation/screens/route_map_screen.dart';
import 'package:frontend_easy/features/school/presentation/screens/dashboard_screen.dart';
import 'package:frontend_easy/core/services/firebase_auth_service.dart';

/// Helper class to convert Stream to Listenable for GoRouter
class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

/// Application routing configuration using go_router
/// Single source of truth for navigation with authentication guards
final appRouterProvider = Provider<GoRouter>((ref) {
  // Watch auth state to trigger router rebuilds
  final authState = ref.watch(authStateProvider);
  final authService = ref.watch(firebaseAuthServiceProvider);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    refreshListenable: GoRouterRefreshStream(authService.authStateChanges),
    redirect: (context, state) {
      // Get current auth state synchronously
      final isAuthenticated = authState.value != null;
      final isLoginPage = state.matchedLocation == '/login';

      // If not authenticated and not on login page, redirect to login
      if (!isAuthenticated && !isLoginPage) {
        return '/login';
      }

      // If authenticated and on login page, redirect to home
      if (isAuthenticated && isLoginPage) {
        return '/';
      }

      // No redirect needed
      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        pageBuilder: (context, state) => const MaterialPage(
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: '/map',
        name: 'map',
        pageBuilder: (context, state) => const MaterialPage(
          child: MapScreen(),
        ),
      ),
      GoRoute(
        path: '/fleet',
        name: 'fleet',
        pageBuilder: (context, state) => const MaterialPage(
          child: RouteMapScreen(),
        ),
      ),
      GoRoute(
        path: '/boarding',
        name: 'boarding',
        pageBuilder: (context, state) => const MaterialPage(
          child: BoardingEventsScreen(),
        ),
      ),
      GoRoute(
        path: '/school',
        name: 'school',
        pageBuilder: (context, state) => const MaterialPage(
          child: DashboardScreen(),
        ),
      ),
      // Future routes:
      // - /routes (route list)
      // - /routes/:id (route detail)
      // - /stops (stop management)
      // - /buses (bus management)
      // - /analytics (reporting)
      // - /settings (system configuration)
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      child: Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(
          child: Text('Page not found: ${state.uri}'),
        ),
      ),
    ),
  );
});
