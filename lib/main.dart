import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:frontend_easy/core/routing/app_router.dart';
import 'package:frontend_easy/core/theme/app_theme.dart';
import 'package:frontend_easy/shared/services/api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiService().initialize();

  final prefs = await SharedPreferences.getInstance();
  final accessToken = prefs.getString('access_token');
  if (accessToken != null && accessToken.isNotEmpty) {
    ApiService().client.dio.options.headers['Authorization'] = 'Bearer $accessToken';
  }

  runApp(const ProviderScope(child: FrontendEasyApp()));
}

class FrontendEasyApp extends ConsumerWidget {
  const FrontendEasyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Imperial EasyPool',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}
