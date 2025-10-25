import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';

/// Status Summary Cards - Top row showing key metrics
/// Displays alerts, buses, and students statistics
class StatusSummaryCards extends StatelessWidget {
  final SchoolDashboardSummary summary;

  const StatusSummaryCards({
    required this.summary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Alerts Card
        Expanded(
          child: _buildCard(
            context: context,
            icon: '⚠️',
            title: 'ALERTS',
            value: '${summary.alertCount}',
            subtitle: 'Students Require Attention',
            color: Colors.red,
            details: '🔴 High: ${summary.alerts.high}  🟡 Medium: ${summary.alerts.medium}',
          ),
        ),
        const SizedBox(width: 16),

        // Buses Card
        Expanded(
          child: _buildCard(
            context: context,
            icon: '🚌',
            title: 'BUSES',
            value: '${summary.buses.active}/${summary.buses.total}',
            subtitle: 'Active',
            color: Colors.blue,
            details: '✅ Arrived: ${summary.buses.arrived}  🚌 En Route: ${summary.buses.enRoute}',
            progress: summary.buses.arrivalPercentage / 100,
          ),
        ),
        const SizedBox(width: 16),

        // Students Card
        Expanded(
          child: _buildCard(
            context: context,
            icon: '👥',
            title: 'STUDENTS',
            value: '${summary.students.accountedFor}/${summary.students.total}',
            subtitle: 'Accounted For',
            color: Colors.green,
            details: '✅ Departed: ${summary.students.departed}  📍 On Campus: ${summary.students.onCampus}',
            progress: summary.students.arrivalPercentage / 100,
          ),
        ),
      ],
    );
  }

  Widget _buildCard({
    required BuildContext context,
    required String icon,
    required String title,
    required String value,
    required String subtitle,
    required Color color,
    required String details,
    double? progress,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(icon, style: const TextStyle(fontSize: 24)),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey[600],
              ),
            ),
            if (progress != null) ...[
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: progress,
                backgroundColor: color.withOpacity(0.2),
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ],
            const SizedBox(height: 12),
            Text(
              details,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
