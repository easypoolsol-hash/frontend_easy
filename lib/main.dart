import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/core/config/firebase_options.dart';
import 'package:frontend_easy/core/routing/app_router.dart';
import 'package:frontend_easy/core/theme/app_theme.dart';
import 'package:frontend_easy/shared/services/api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase (industry standard auth)
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize API service
  ApiService().initialize();

  runApp(const ProviderScope(child: FrontendEasyApp()));
}

class FrontendEasyApp extends ConsumerWidget {
  const FrontendEasyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'EasyPool',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}
