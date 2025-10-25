import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';

/// Left panel showing detailed statistics breakdown
class SummaryPanel extends StatelessWidget {
  final SchoolDashboardSummary summary;

  const SummaryPanel({
    required this.summary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '📊 QUICK STATS',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(height: 24),

            // Buses breakdown
            _buildSection(
              context,
              'BUSES',
              [
                '✅ Arrived: ${summary.buses.arrived}',
                '🚌 En Route: ${summary.buses.enRoute}',
                '⏰ Delayed: ${summary.buses.delayed}',
                '🔧 Inactive: ${summary.buses.inactive}',
              ],
            ),

            const Divider(height: 24),

            // Students breakdown
            _buildSection(
              context,
              'STUDENTS BY STATUS',
              [
                '✅ Departed: ${summary.students.departed}',
                '📍 On Campus: ${summary.students.onCampus}',
                '⚠️ Attention: ${summary.students.attention}',
                '🏠 Absent: ${summary.students.absent}',
                '🚌 In Transit: ${summary.students.inTransit}',
              ],
            ),

            const Divider(height: 24),

            // Grade breakdown
            _buildSection(
              context,
              'BY GRADE',
              summary.gradeStats.entries.map((e) {
                final stats = e.value;
                return '${stats.statusIndicator} ${stats.gradeName}: ${stats.percentage.toStringAsFixed(0)}%';
              }).toList(),
            ),

            const SizedBox(height: 16),
            Text(
              summary.lastUpdatedText,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(item),
        )),
      ],
    );
  }
}
