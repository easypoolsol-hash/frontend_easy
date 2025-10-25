import 'package:flutter/material.dart';

/// Fleet Status Screen - Placeholder
/// TODO: Implement with PaginatedBusList API model
class FleetStatusScreen extends StatelessWidget {
  const FleetStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fleet Status'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_bus, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              'Fleet Status',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Coming soon',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
