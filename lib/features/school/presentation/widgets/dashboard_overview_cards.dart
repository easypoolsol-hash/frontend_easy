import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';

/// Dashboard Overview Metrics Cards
/// Displays high-level KPIs at the top of the dashboard
class DashboardOverviewCards extends StatelessWidget {
  final SchoolDashboardSummary summary;

  const DashboardOverviewCards({
    super.key,
    required this.summary,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Responsive grid: 4 columns on wide screens, 2 on medium, 1 on small
        final crossAxisCount = constraints.maxWidth > 1200
            ? 4
            : constraints.maxWidth > 600
                ? 2
                : 1;

        return GridView.count(
          crossAxisCount: crossAxisCount,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 2.5,
          children: [
            _buildMetricCard(
              context,
              title: 'Active Buses',
              value: '${summary.buses.active}',
              subtitle: 'of ${summary.buses.total} total',
              icon: Icons.directions_bus,
              color: Colors.blue,
              progressValue: summary.buses.total > 0
                  ? summary.buses.active / summary.buses.total
                  : 0,
            ),
            _buildMetricCard(
              context,
              title: 'Students Picked Up',
              value: '${summary.students.departed + summary.students.inTransit + summary.students.onCampus}',
              subtitle: 'of ${summary.students.total} expected',
              icon: Icons.groups,
              color: Colors.green,
              progressValue: summary.students.total > 0
                  ? (summary.students.departed + summary.students.inTransit + summary.students.onCampus) /
                      summary.students.total
                  : 0,
            ),
            _buildMetricCard(
              context,
              title: 'Students Dropped Off',
              value: '${summary.students.onCampus}',
              subtitle: 'of ${summary.students.departed + summary.students.inTransit + summary.students.onCampus} picked up',
              icon: Icons.school,
              color: Colors.purple,
              progressValue: (summary.students.departed + summary.students.inTransit + summary.students.onCampus) > 0
                  ? summary.students.onCampus /
                      (summary.students.departed + summary.students.inTransit + summary.students.onCampus)
                  : 0,
            ),
            _buildMetricCard(
              context,
              title: 'Last Updated',
              value: _formatLastUpdate(summary.lastUpdated),
              subtitle: summary.lastUpdatedText,
              icon: Icons.update,
              color: Colors.orange,
              showProgress: false,
            ),
          ],
        );
      },
    );
  }

  Widget _buildMetricCard(
    BuildContext context, {
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
    double? progressValue,
    bool showProgress = true,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Header with icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    icon,
                    size: 20,
                    color: color,
                  ),
                ),
              ],
            ),

            // Value and subtitle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[500],
                      ),
                ),
              ],
            ),

            // Progress bar
            if (showProgress && progressValue != null) ...[
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progressValue.clamp(0.0, 1.0),
                  minHeight: 6,
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _formatLastUpdate(DateTime lastUpdated) {
    final now = DateTime.now();
    final diff = now.difference(lastUpdated);

    if (diff.inSeconds < 60) {
      return 'Just now';
    } else if (diff.inMinutes < 60) {
      return '${diff.inMinutes}m ago';
    } else if (diff.inHours < 24) {
      return '${diff.inHours}h ago';
    } else {
      return '${diff.inDays}d ago';
    }
  }
}
