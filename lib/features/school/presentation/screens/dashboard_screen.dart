import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/presentation/widgets/attendance_report_dialog.dart';
import 'package:frontend_easy/features/school/providers/dashboard_stats_provider.dart';
import 'package:frontend_easy/features/school/providers/dashboard_websocket_provider.dart';
import 'package:frontend_easy/features/school/providers/student_activity_provider.dart';
import 'package:frontend_easy/shared/utils/error_handler.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';
import 'package:frontend_easy/core/widgets/status_banner.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

/// School Dashboard Screen
/// Shows real-time boarding activity and bus fleet status
///
/// Uses Fortune 500 approach: API models directly (no custom models)
/// - DashboardStats (stats API)
/// - DashboardStudentsResponse (student activity API)
class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ========================================================================
    // DEPRECATED: WebSocket Real-Time Listeners (Commented Out for Future Use)
    // ========================================================================
    // WebSocket doesn't work reliably on Cloud Run (serverless architecture)
    // Dashboard will still work - users can manually refresh to see new data
    // WebSocket code preserved below for potential future activation
    // ========================================================================

    // // Listen to real-time WebSocket events
    // ref.listen(boardingEventsStreamProvider, (previous, next) {
    //   next.whenData((event) {
    //     // New boarding event received - refresh data
    //     ref.invalidate(studentActivityFilteredProvider);
    //
    //     // Show snackbar notification (optional)
    //     if (mounted) {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //           content: Text('${event.studentName} just boarded!'),
    //           duration: const Duration(seconds: 2),
    //           behavior: SnackBarBehavior.floating,
    //         ),
    //       );
    //     }
    //   });
    // });
    //
    // // Listen to real-time stats updates
    // ref.listen(statsUpdatesStreamProvider, (previous, next) {
    //   next.whenData((stats) {
    //     // Stats updated - refresh dashboard stats
    //     ref.invalidate(dashboardStatsProvider);
    //   });
    // });

    final statsAsync = ref.watch(dashboardStatsProvider);
    final studentActivityAsync = ref.watch(
      studentActivityFilteredProvider(
        const StudentActivityParams(
          limit: 100,
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 1), // School dashboard tab (Attendance)
          // System health status banner (shows when backend is down)
          const StatusBanner(),
          Expanded(
            child: statsAsync.when(
              data: (stats) => _buildDashboardContent(
                context,
                stats,
                studentActivityAsync,
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => _buildEmptyDashboard(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardContent(
    BuildContext context,
    dynamic stats,
    AsyncValue<DashboardStudentsResponse> studentActivityAsync,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            'School Dashboard',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Last updated: ${stats.lastUpdated}',
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
          ),
          const SizedBox(height: 24),

          // Stats Cards
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  context,
                  title: 'Active Buses',
                  value: '${stats.activeBuses}/${stats.totalBuses}',
                  icon: Icons.directions_bus,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildStatCard(
                  context,
                  title: 'Students Boarded',
                  value: '${stats.studentsBoardedToday}',
                  icon: Icons.people,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),

          // Filters Section
          _buildFilters(context),
          const SizedBox(height: 16),

          // Boarding Events List
          _buildBoardingEventsList(studentActivityAsync),
        ],
      ),
    );
  }

  Widget _buildFilters(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Filters',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                // Today's Activity Label
                const Text(
                  "Today's Boarding Activity",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                // Download Report Button
                FilledButton.tonalIcon(
                  onPressed: () => showAttendanceReportDialog(context),
                  icon: const Icon(Icons.download_rounded, size: 18),
                  label: const Text('Download Report'),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
                const SizedBox(width: 8),
                // Manual Refresh Button
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    ref.invalidate(studentActivityFilteredProvider);
                    ref.invalidate(dashboardStatsProvider);
                  },
                  tooltip: 'Refresh data',
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Search Field
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by name or student ID',
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {});
                        },
                      )
                    : null,
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildBoardingEventsList(
    AsyncValue<DashboardStudentsResponse> studentActivityAsync,
  ) {
    return studentActivityAsync.when(
      data: (response) {
        // Apply client-side search filter
        final searchQuery = _searchController.text.toLowerCase();
        final filteredStudents = searchQuery.isEmpty
            ? response.results.toList()
            : response.results.where((student) {
                return student.studentName.toLowerCase().contains(searchQuery) ||
                    student.schoolStudentId.toLowerCase().contains(searchQuery);
              }).toList();

        if (filteredStudents.isEmpty) {
          return const Card(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Center(
                child: Column(
                  children: [
                    Icon(Icons.inbox, size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'No boarding events found',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boarding Activity (${filteredStudents.length} students)',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ...filteredStudents.map((student) => _buildStudentRow(student)),
          ],
        );
      },
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stack) => Card(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Icon(Icons.cloud_off_outlined, size: 48, color: Colors.grey),
              const SizedBox(height: 12),
              const Text(
                'Unable to load student activity',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                ErrorHandler.getUserFriendlyMessage(error),
                style: const TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  ref.invalidate(studentActivityFilteredProvider);
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Try Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStudentRow(StudentActivity student) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            student.studentName.isNotEmpty
                ? student.studentName[0].toUpperCase()
                : '?',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(
          student.studentName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text('Grade ${student.grade} • ID: ${student.schoolStudentId}'),
            if (student.busNumber != null)
              Text(
                'Bus ${student.busNumber}${student.routeName != null ? ' • ${student.routeName}' : ''}',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
          ],
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '${student.eventCount} ${student.eventCount == 1 ? 'event' : 'events'}',
            style: TextStyle(
              color: Colors.green.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        children: [
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Events Today',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                ...student.events.map((event) => _buildEventTile(event)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventTile(BoardingEventNested event) {
    // Format timestamp - Convert UTC to local time (IST)
    final localTime = event.timestamp.toLocal();
    final time = '${localTime.hour.toString().padLeft(2, '0')}:${localTime.minute.toString().padLeft(2, '0')}';
    final date = '${localTime.day.toString().padLeft(2, '0')}/${localTime.month.toString().padLeft(2, '0')}/${localTime.year}';

    // Get event icon and color based on event type
    IconData icon;
    Color color;
    switch (event.eventType.toLowerCase()) {
      case 'boarding':
        icon = Icons.login;
        color = Colors.green;
        break;
      case 'pickup':
        icon = Icons.person_add;
        color = Colors.blue;
        break;
      case 'dropoff':
        icon = Icons.person_remove;
        color = Colors.orange;
        break;
      default:
        icon = Icons.event;
        color = Colors.grey;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.eventType,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  'Kiosk: ${event.kioskId}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color, size: 24),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              value,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  /// Graceful degraded state when backend is unavailable
  /// Shows empty dashboard with helpful message instead of blocking page
  Widget _buildEmptyDashboard(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          // Empty stats cards row
          Row(
            children: [
              Expanded(
                child: _buildStatCard(
                  context,
                  title: 'Students Boarded',
                  value: '--',
                  icon: Icons.groups,
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildStatCard(
                  context,
                  title: 'Buses Active',
                  value: '--',
                  icon: Icons.directions_bus,
                  color: theme.colorScheme.secondary,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildStatCard(
                  context,
                  title: 'Routes Active',
                  value: '--',
                  icon: Icons.route,
                  color: theme.colorScheme.tertiary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Empty student activity section
          Expanded(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.access_time, color: theme.colorScheme.onSurface),
                        const SizedBox(width: 8),
                        Text(
                          'Recent Student Activity',
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () => ref.refresh(dashboardStatsProvider),
                          icon: const Icon(Icons.refresh),
                          tooltip: 'Retry loading data',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cloud_queue,
                            size: 64,
                            color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Waiting for live data...',
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Dashboard will update when backend reconnects',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
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
