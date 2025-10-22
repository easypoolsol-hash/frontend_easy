import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:frontend_easy/features/auth/presentation/screens/login_screen.dart';
import 'package:frontend_easy/features/home/presentation/screens/home_screen.dart';
import 'package:frontend_easy/features/home/presentation/screens/boarding_events_screen.dart';
import 'package:frontend_easy/features/fleet/presentation/screens/route_map_screen.dart';

/// Application routing configuration using go_router
/// Single source of truth for navigation
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    debugLogDiagnostics: true,
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
