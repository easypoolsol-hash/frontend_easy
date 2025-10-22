import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/fleet/presentation/screens/route_map_screen.dart';

/// Application routing configuration using go_router
/// Single source of truth for navigation
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) => const MaterialPage(
          child: RouteMapScreen(),
        ),
      ),
      // Future routes:
      // - /routes (route list)
      // - /routes/:id (route detail)
      // - /stops (stop management)
      // - /buses (bus management)
      // - /analytics (reporting)
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
