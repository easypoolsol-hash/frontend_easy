import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:frontend_easy/features/school/providers/student_activity_provider.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

/// Registered Students Detail View
/// Shows all students with filter chips for class and bus filtering
class RegisteredStudentsDetail extends ConsumerStatefulWidget {
  const RegisteredStudentsDetail({super.key});

  @override
  ConsumerState<RegisteredStudentsDetail> createState() => _RegisteredStudentsDetailState();
}

class _RegisteredStudentsDetailState extends ConsumerState<RegisteredStudentsDetail> {
  String? _selectedBus;
  String? _selectedGrade;
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final studentActivityAsync = ref.watch(
      studentActivityFilteredProvider(
        const StudentActivityParams(limit: 500),
      ),
    );

    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 900, maxHeight: 700),
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.people,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Registered Students',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: () {
                      ref.invalidate(studentActivityFilteredProvider);
                    },
                    tooltip: 'Refresh',
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                    tooltip: 'Close',
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: studentActivityAsync.when(
                data: (studentActivity) => _buildContent(
                  context,
                  studentActivity.results.toList(),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => _buildError(context, 'Failed to load students'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    List<StudentActivity> students,
  ) {
    // Extract unique grades and buses
    final uniqueGrades = students
        .map((s) => s.grade)
        .toSet()
        .toList()
      ..sort();

    final uniqueBuses = students
        .where((s) => s.busNumber != null)
        .map((s) => s.busNumber!)
        .toSet()
        .toList()
      ..sort();

    // Filter students by selected grade, bus, and search query
    final filteredStudents = students.where((student) {
      // Grade filter
      if (_selectedGrade != null && student.grade != _selectedGrade) {
        return false;
      }

      // Bus filter
      if (_selectedBus != null && student.busNumber != _selectedBus) {
        return false;
      }

      // Search filter
      if (_searchQuery.isNotEmpty) {
        final query = _searchQuery.toLowerCase();
        final matchesName = student.studentName.toLowerCase().contains(query);
        final matchesId = student.schoolStudentId.toLowerCase().contains(query);
        if (!matchesName && !matchesId) {
          return false;
        }
      }

      return true;
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Filter Chips Section
        _buildFilterChips(context, uniqueGrades, uniqueBuses),

        const Divider(height: 1),

        // Students List
        Expanded(
          child: filteredStudents.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people_outline, size: 64, color: Colors.grey[400]),
                      const SizedBox(height: 16),
                      Text(
                        'No students found',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: filteredStudents.length,
                  itemBuilder: (context, index) {
                    final student = filteredStudents[index];
                    return _buildStudentCard(context, student);
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildFilterChips(BuildContext context, List<String> uniqueGrades, List<String> uniqueBuses) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.filter_list, size: 20),
              const SizedBox(width: 8),
              const Text(
                'Filters',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              if (_selectedBus != null || _selectedGrade != null || _searchQuery.isNotEmpty)
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      _selectedBus = null;
                      _selectedGrade = null;
                      _searchQuery = '';
                    });
                  },
                  icon: const Icon(Icons.clear_all, size: 16),
                  label: const Text('Clear all'),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    minimumSize: const Size(0, 32),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),

          // Search field
          TextField(
            decoration: const InputDecoration(
              hintText: 'Search by name or student ID',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              isDense: true,
            ),
            onChanged: (value) {
              setState(() => _searchQuery = value);
            },
          ),
          const SizedBox(height: 16),

          // Grade filters
          if (uniqueGrades.isNotEmpty) ...[
            const Text(
              'Class/Grade',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilterChip(
                  label: const Text('All Grades'),
                  selected: _selectedGrade == null,
                  onSelected: (selected) {
                    setState(() => _selectedGrade = null);
                  },
                  showCheckmark: false,
                  selectedColor: theme.colorScheme.primaryContainer,
                ),
                ...uniqueGrades.map((grade) => FilterChip(
                      label: Text('Grade $grade'),
                      selected: _selectedGrade == grade,
                      onSelected: (selected) {
                        setState(() => _selectedGrade = selected ? grade : null);
                      },
                      showCheckmark: false,
                      selectedColor: theme.colorScheme.primaryContainer,
                    )),
              ],
            ),
            const SizedBox(height: 16),
          ],

          // Bus filters
          if (uniqueBuses.isNotEmpty) ...[
            const Text(
              'Bus Number',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilterChip(
                  label: const Text('All Buses'),
                  selected: _selectedBus == null,
                  onSelected: (selected) {
                    setState(() => _selectedBus = null);
                  },
                  showCheckmark: false,
                  selectedColor: theme.colorScheme.primaryContainer,
                ),
                ...uniqueBuses.map((bus) => FilterChip(
                      label: Text(bus),
                      selected: _selectedBus == bus,
                      onSelected: (selected) {
                        setState(() => _selectedBus = selected ? bus : null);
                      },
                      showCheckmark: false,
                      selectedColor: theme.colorScheme.primaryContainer,
                    )),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStudentCard(BuildContext context, StudentActivity student) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: theme.colorScheme.primaryContainer,
          child: Text(
            student.studentName.isNotEmpty ? student.studentName[0].toUpperCase() : '?',
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          student.studentName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.badge, size: 14, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(
                  'ID: ${student.schoolStudentId}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                const SizedBox(width: 12),
                Icon(Icons.school, size: 14, color: Colors.grey[600]),
                const SizedBox(width: 4),
                Text(
                  'Grade ${student.grade}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
            if (student.busNumber != null) ...[
              const SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.directions_bus, size: 14, color: Colors.grey[600]),
                  const SizedBox(width: 4),
                  Text(
                    'Bus ${student.busNumber}${student.routeName != null ? ' • ${student.routeName}' : ''}',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ],
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: student.eventCount > 0 ? Colors.green.shade100 : Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '${student.eventCount} ${student.eventCount == 1 ? 'event' : 'events'}',
            style: TextStyle(
              color: student.eventCount > 0 ? Colors.green.shade900 : Colors.grey.shade700,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        children: [
          if (student.events.isEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'No boarding events on ${DateFormat('MMM d, yyyy').format(DateTime.now())}',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Boarding Events on ${DateFormat('MMMM d, yyyy').format(DateTime.now())}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                  ...student.events.reversed.map((event) => _buildEventItem(event)),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildEventItem(BoardingEventNested event) {
    // Format timestamp - Convert UTC to local time
    final localTime = event.timestamp.toLocal();
    final time = '${localTime.hour.toString().padLeft(2, '0')}:${localTime.minute.toString().padLeft(2, '0')}';

    // Get event icon and color
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

  Widget _buildError(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              message,
              style: const TextStyle(fontSize: 16),
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
    );
  }
}
