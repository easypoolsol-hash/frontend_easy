import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';
import 'package:frontend_easy/features/school/providers/dashboard_stats_provider.dart';
import 'package:frontend_easy/features/school/providers/student_activity_provider.dart';
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
  DateTime? _selectedDate;
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final statsAsync = ref.watch(dashboardStatsProvider);
    final studentActivityAsync = ref.watch(
      studentActivityFilteredProvider(
        StudentActivityParams(
          date: _selectedDate,
          limit: 100,
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 2), // School dashboard tab
          Expanded(
            child: statsAsync.when(
              data: (stats) => _buildDashboardContent(
                context,
                stats,
                studentActivityAsync,
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 48, color: Colors.red),
                    const SizedBox(height: 16),
                    Text('Error loading dashboard: $error'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => ref.refresh(dashboardStatsProvider),
                      child: const Text('Retry'),
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
                // Date Filter
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _selectDate(context),
                    icon: const Icon(Icons.calendar_today),
                    label: Text(
                      _selectedDate == null
                          ? 'Today'
                          : '${_selectedDate!.year}-${_selectedDate!.month.toString().padLeft(2, '0')}-${_selectedDate!.day.toString().padLeft(2, '0')}',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // Clear Date Filter
                if (_selectedDate != null)
                  IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      setState(() {
                        _selectedDate = null;
                      });
                    },
                    tooltip: 'Clear date filter',
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

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 90)),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 8),
              Text('Error loading student activity: $error'),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(studentActivityFilteredProvider);
                },
                child: const Text('Retry'),
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
    // Format timestamp
    final time = '${event.timestamp.hour.toString().padLeft(2, '0')}:${event.timestamp.minute.toString().padLeft(2, '0')}';

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
          Text(
            time,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
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
}
