import 'package:flutter/material.dart';

/// School Dashboard Screen - Placeholder
/// TODO: Implement with DashboardStats and DashboardStudentsResponse API models
class SchoolDashboardRedesignedScreen extends StatelessWidget {
  const SchoolDashboardRedesignedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School Dashboard'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.dashboard, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              'School Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Coming soon - Optimized for 4000+ students',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              'Backend APIs Ready:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('✅ GET /api/v1/dashboard/stats/ (cached 10s)'),
            Text('✅ GET /api/v1/dashboard/students/ (paginated)'),
            SizedBox(height: 10),
            Text('🔒 Protected with IsSchoolAdmin permission'),
          ],
        ),
      ),
    );
  }
}
