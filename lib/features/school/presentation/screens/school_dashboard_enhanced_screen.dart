import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/presentation/widgets/bus_fleet_panel.dart';
import 'package:frontend_easy/features/school/presentation/widgets/dashboard_overview_cards.dart';
import 'package:frontend_easy/features/school/presentation/widgets/student_movement_table.dart';
import 'package:frontend_easy/features/school/providers/school_dashboard_provider.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';

class SchoolDashboardEnhancedScreen extends ConsumerWidget {
  const SchoolDashboardEnhancedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(schoolDashboardProvider);
    final busesAsync = ref.watch(busFleetProvider);
    final studentsAsync = ref.watch(studentMovementProvider);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 2),
          Expanded(
            child: summaryAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, stack) => Center(child: Text('Error: $err')),
              data: (summary) => busesAsync.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
                data: (buses) => studentsAsync.when(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => Center(child: Text('Error: $err')),
                  data: (students) => RefreshIndicator(
                    onRefresh: () async {
                      ref.invalidate(schoolDashboardProvider);
                      ref.invalidate(busFleetProvider);
                      ref.invalidate(studentMovementProvider);
                    },
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildHeader(context, summary),
                            const SizedBox(height: 24),
                            DashboardOverviewCards(summary: summary),
                            const SizedBox(height: 24),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                if (constraints.maxWidth > 1200) {
                                  return Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: BusFleetPanel(buses: buses),
                                      ),
                                      const SizedBox(width: 24),
                                      Expanded(
                                        flex: 7,
                                        child: StudentMovementTable(students: students),
                                      ),
                                    ],
                                  );
                                } else {
                                  return Column(
                                    children: [
                                      BusFleetPanel(buses: buses),
                                      const SizedBox(height: 24),
                                      StudentMovementTable(students: students),
                                    ],
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, summary) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'School Dashboard',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              'Real-time student movement & bus tracking',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.green[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(Icons.circle, size: 8, color: Colors.green[600]),
              const SizedBox(width: 6),
              Text(
                'Live',
                style: TextStyle(
                  color: Colors.green[700],
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
