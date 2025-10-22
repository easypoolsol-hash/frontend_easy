import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:frontend_easy/core/routing/app_router.dart';
import 'package:frontend_easy/core/theme/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: FrontendEasyApp(),
    ),
  );
}

/// Root application widget for Imperial EasyPool Frontend
/// Follows Material Design 3 principles with dark mode support
class FrontendEasyApp extends ConsumerWidget {
  const FrontendEasyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Imperial EasyPool',
      debugShowCheckedModeBanner: false,

      // Material Design 3 themes (2025 UX best practices)
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Auto dark mode at sunset

      // Routing (go_router)
      routerConfig: router,
    );
  }
}
