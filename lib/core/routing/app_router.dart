import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:frontend_easy/features/auth/presentation/screens/login_screen.dart';
import 'package:frontend_easy/features/home/presentation/screens/home_screen.dart';
import 'package:frontend_easy/features/home/presentation/screens/boarding_events_screen.dart';
import 'package:frontend_easy/features/map/presentation/screens/map_screen.dart';
import 'package:frontend_easy/features/fleet/presentation/screens/route_map_screen.dart';
import 'package:frontend_easy/features/school/presentation/screens/dashboard_screen.dart';

/// Industry Standard: Stream to ChangeNotifier adapter for go_router
/// This is the official pattern from go_router documentation
/// https://pub.dev/documentation/go_router/latest/topics/Configuration-topic.html#redirecting
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (_) {
        notifyListeners();
      },
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

/// Application routing configuration using go_router (Industry Standard)
/// Pattern: Firebase Auth + go_router redirect
/// Reference: https://codewithandrea.com/articles/flutter-navigation-authentication-go-router/
final appRouterProvider = Provider<GoRouter>((ref) {
  final firebaseAuth = FirebaseAuth.instance;

  return GoRouter(
    initialLocation: '/login',
    debugLogDiagnostics: true,

    // Industry Standard: Listen to Firebase auth state changes
    // Router automatically rebuilds when user logs in/out
    refreshListenable: GoRouterRefreshStream(firebaseAuth.authStateChanges()),

    redirect: (BuildContext context, GoRouterState state) {
      final user = firebaseAuth.currentUser;
      final isLoggedIn = user != null;
      final isGoingToLogin = state.matchedLocation == '/login';

      // Not logged in → redirect to login (unless already there)
      if (!isLoggedIn && !isGoingToLogin) {
        return '/login';
      }

      // Logged in but on login page → redirect to home
      if (isLoggedIn && isGoingToLogin) {
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
