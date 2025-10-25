import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/presentation/widgets/status_summary_cards.dart';
import 'package:frontend_easy/features/school/presentation/widgets/summary_panel.dart';
import 'package:frontend_easy/features/school/presentation/widgets/student_priority_list.dart';
import 'package:frontend_easy/features/school/presentation/widgets/action_panel.dart';
import 'package:frontend_easy/features/school/providers/student_movement_provider.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';

/// School Dashboard Screen
/// Shows student movement tracking and safety monitoring for school admin
class SchoolDashboardScreen extends ConsumerWidget {
  const SchoolDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(schoolDashboardSummaryProvider);
    final attentionStudentsAsync = ref.watch(attentionStudentsProvider);

    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 2), // School tab

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Text(
                      'School Dashboard',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Student Movement & Safety Monitoring',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Handle async states
                    summaryAsync.when(
                      loading: () => const Center(child: CircularProgressIndicator()),
                      error: (error, stack) => Center(
                        child: Text('Error loading dashboard: $error'),
                      ),
                      data: (summary) => attentionStudentsAsync.when(
                        loading: () => const Center(child: CircularProgressIndicator()),
                        error: (error, stack) => Center(
                          child: Text('Error loading students: $error'),
                        ),
                        data: (attentionStudents) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Status Summary Cards
                            StatusSummaryCards(summary: summary),
                            const SizedBox(height: 24),

                            // Main Content - 3 Column Layout (Desktop) / Stack (Mobile)
                            LayoutBuilder(
                              builder: (context, constraints) {
                                if (constraints.maxWidth > 1200) {
                                  // Desktop: 3 columns
                                  return Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Left Panel - Stats (25%)
                                      Expanded(
                                        flex: 25,
                                        child: SummaryPanel(summary: summary),
                                      ),
                                      const SizedBox(width: 16),

                                      // Center Panel - Priority List (50%)
                                      Expanded(
                                        flex: 50,
                                        child: StudentPriorityList(students: attentionStudents),
                                      ),
                                      const SizedBox(width: 16),

                                      // Right Panel - Actions (25%)
                                      const Expanded(
                                        flex: 25,
                                        child: ActionPanel(),
                                      ),
                                    ],
                                  );
                                } else {
                                  // Mobile/Tablet: Stack vertically
                                  return Column(
                                    children: [
                                      SummaryPanel(summary: summary),
                                      const SizedBox(height: 16),
                                      StudentPriorityList(students: attentionStudents),
                                      const SizedBox(height: 16),
                                      const ActionPanel(),
                                    ],
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
