import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';
import 'package:frontend_easy/features/school/models/student_movement_row.dart';
import 'package:frontend_easy/features/school/presentation/widgets/md3_stat_card.dart';
import 'package:frontend_easy/features/school/presentation/widgets/student_event_card.dart';
import 'package:frontend_easy/features/school/providers/school_dashboard_provider.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';

/// Student filter mode
enum StudentFilter {
  all,
  pickedUp,
  droppedOff,
  pending,
  alerts,
}

extension StudentFilterExtension on StudentFilter {
  String get label {
    switch (this) {
      case StudentFilter.all:
        return 'All Students';
      case StudentFilter.pickedUp:
        return 'Picked Up';
      case StudentFilter.droppedOff:
        return 'Dropped Off';
      case StudentFilter.pending:
        return 'Pending';
      case StudentFilter.alerts:
        return 'Needs Attention';
    }
  }

  IconData get icon {
    switch (this) {
      case StudentFilter.all:
        return Icons.people;
      case StudentFilter.pickedUp:
        return Icons.check_circle;
      case StudentFilter.droppedOff:
        return Icons.school;
      case StudentFilter.pending:
        return Icons.schedule;
      case StudentFilter.alerts:
        return Icons.warning;
    }
  }
}

/// Redesigned School Dashboard - MD3 Design
/// Clean, beautiful interface matching backend template style
class SchoolDashboardRedesignedScreen extends ConsumerStatefulWidget {
  const SchoolDashboardRedesignedScreen({super.key});

  @override
  ConsumerState<SchoolDashboardRedesignedScreen> createState() =>
      _SchoolDashboardRedesignedScreenState();
}

class _SchoolDashboardRedesignedScreenState
    extends ConsumerState<SchoolDashboardRedesignedScreen> {
  StudentFilter _selectedFilter = StudentFilter.all;

  @override
  Widget build(BuildContext context) {
    final summaryAsync = ref.watch(schoolDashboardProvider);
    final studentsAsync = ref.watch(studentMovementProvider);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 2),

          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Page header
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dashboard Overview',
                                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[900],
                                      ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Real-time bus tracking and boarding statistics',
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        color: Colors.grey[500],
                                      ),
                                ),
                              ],
                            ),
                            // Last Updated tag
                            summaryAsync.when(
                              data: (summary) => Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.green[200]!),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      size: 14,
                                      color: Colors.green[700],
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      summary.lastUpdatedText,
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: Colors.green[700],
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              loading: () => Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.orange[50],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.orange[200]!),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 12,
                                      height: 12,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor: AlwaysStoppedAnimation<Color>(Colors.orange[700]!),
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      'Loading...',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: Colors.orange[700],
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              error: (error, stack) => Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.red[50],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.red[200]!),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.error,
                                      size: 14,
                                      color: Colors.red[700],
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      'Error',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: Colors.red[700],
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Stat cards
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                    child: summaryAsync.when(
                      data: (summary) => Row(
                        children: [
                          Expanded(
                            child: MD3StatCard(
                              title: 'Active Buses',
                              value: '${summary.buses.active}/${summary.buses.total}',
                              subtitle: 'Total fleet',
                              icon: Icons.directions_bus,
                              iconColor: const Color(0xFFFF9800),
                              iconBackgroundColor: const Color(0xFFFF9800),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: MD3StatCard(
                              title: 'Students Boarded',
                              value: '${(summary.students.departed) + (summary.students.inTransit) + (summary.students.onCampus)}',
                              subtitle: 'Today',
                              icon: Icons.people,
                              iconColor: Colors.green[600]!,
                              iconBackgroundColor: Colors.green[600]!,
                            ),
                          ),
                        ],
                      ),
                      loading: () => const Row(
                        children: [
                          Expanded(child: CircularProgressIndicator()),
                          SizedBox(width: 16),
                          Expanded(child: CircularProgressIndicator()),
                        ],
                      ),
                      error: (error, stack) => const Row(
                        children: [
                          Expanded(child: Text('Error loading stats')),
                          SizedBox(width: 16),
                          Expanded(child: Text('Error loading stats')),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Students list
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: studentsAsync.when(
                      data: (students) => _buildStudentsContent(_filterStudents(students), students.length),
                      loading: () => const Padding(
                        padding: EdgeInsets.all(48),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      error: (error, stack) => Padding(
                        padding: const EdgeInsets.all(48),
                        child: Center(
                          child: Column(
                            children: [
                              const Icon(Icons.error, size: 48, color: Colors.red),
                              const SizedBox(height: 16),
                              Text('Error loading students: $error'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStudentsContent(List<StudentMovementRow> students, int totalCount) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Filter chips
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[200]!),
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: StudentFilter.values.map((filter) {
                final isSelected = _selectedFilter == filter;
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    selected: isSelected,
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          filter.icon,
                          size: 16,
                          color: isSelected ? Colors.white : Colors.grey[700],
                        ),
                        const SizedBox(width: 8),
                        Text(filter.label),
                      ],
                    ),
                    onSelected: (selected) {
                      setState(() {
                        _selectedFilter = filter;
                      });
                    },
                    selectedColor: const Color(0xFFFF9800),
                    backgroundColor: Colors.grey[100],
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey[700],
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),

        // Student list (fixed height)
        SizedBox(
          height: 500,
          child: students.isEmpty
              ? _buildEmptyState()
              : RefreshIndicator(
                  onRefresh: () async {
                    ref.invalidate(studentMovementProvider);
                    await Future<void>.delayed(const Duration(seconds: 1));
                  },
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: students.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      return StudentEventCard(student: students[index]);
                    },
                  ),
                ),
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.event_busy,
            size: 64,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'No students found',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Students will appear here as they board buses',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[400],
                ),
          ),
        ],
      ),
    );
  }

  List<StudentMovementRow> _filterStudents(List<StudentMovementRow> students) {
    switch (_selectedFilter) {
      case StudentFilter.all:
        return students;
      case StudentFilter.pickedUp:
        return students.where((s) => s.pickupStatus.isCompleted).toList();
      case StudentFilter.droppedOff:
        return students.where((s) => s.dropoffStatus.isCompleted).toList();
      case StudentFilter.pending:
        return students.where((s) => s.isPending).toList();
      case StudentFilter.alerts:
        return students.where((s) => s.requiresAttention).toList();
    }
  }
}
