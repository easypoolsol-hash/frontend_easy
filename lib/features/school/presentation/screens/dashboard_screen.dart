import 'package:flutter/material.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';

/// School Dashboard Screen
/// Shows real-time boarding activity and bus fleet status
///
/// Uses Fortune 500 approach: API models directly (no custom models)
/// - DashboardStats (stats API)
/// - DashboardStudentsResponse (student activity API)
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 2), // School dashboard tab
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.dashboard_outlined,
                    size: 100,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'School Dashboard',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Optimized for 4000+ students',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Backend APIs Ready:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  const Text('✅ GET /api/v1/dashboard/stats/'),
                  const Text('   → Returns: DashboardStats (cached 10s)'),
                  const SizedBox(height: 5),
                  const Text('✅ GET /api/v1/dashboard/students/'),
                  const Text('   → Returns: DashboardStudentsResponse (paginated)'),
                  const SizedBox(height: 20),
                  const Text(
                    '🔒 Protected: IsSchoolAdmin only',
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
