import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Home screen - redirects to map view
/// This is a temporary redirect until we build a proper dashboard
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Redirect to map on next frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.go('/map');
    });

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
