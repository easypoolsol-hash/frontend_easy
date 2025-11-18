import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:frontend_easy/features/fleet/providers/buses_provider.dart';
import 'package:frontend_easy/features/school/providers/student_activity_provider.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart';

/// Registered Buses Detail View
/// Shows all buses with filter chips for class and bus filtering
class RegisteredBusesDetail extends ConsumerStatefulWidget {
  const RegisteredBusesDetail({super.key});

  @override
  ConsumerState<RegisteredBusesDetail> createState() => _RegisteredBusesDetailState();
}

class _RegisteredBusesDetailState extends ConsumerState<RegisteredBusesDetail> {
  String? _selectedBus;
  String? _selectedGrade;

  @override
  Widget build(BuildContext context) {
    final busesAsync = ref.watch(busesProvider);
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
                    Icons.directions_bus,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Registered Buses',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: () {
                      ref.invalidate(busesProvider);
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
              child: busesAsync.when(
                data: (buses) => studentActivityAsync.when(
                  data: (studentActivity) => _buildContent(
                    context,
                    buses,
                    studentActivity.results.toList(),
                  ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => _buildError(context, 'Failed to load students'),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => _buildError(context, 'Failed to load buses'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    List<Bus> buses,
    List<StudentActivity> students,
  ) {
    // Extract unique grades
    final uniqueGrades = students
        .map((s) => s.grade)
        .toSet()
        .toList()
      ..sort();

    // Filter students by selected grade and bus
    final filteredStudents = students.where((student) {
      if (_selectedGrade != null && student.grade != _selectedGrade) {
        return false;
      }
      if (_selectedBus != null && student.busNumber != _selectedBus) {
        return false;
      }
      return true;
    }).toList();

    // Create a map of bus number to student count
    final busStudentCounts = <String, int>{};
    for (var student in filteredStudents) {
      if (student.busNumber != null) {
        busStudentCounts[student.busNumber!] = (busStudentCounts[student.busNumber!] ?? 0) + 1;
      }
    }

    // Filter buses if a specific bus is selected
    final displayBuses = _selectedBus == null
        ? buses
        : buses.where((bus) => bus.busNumber == _selectedBus).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Filter Chips Section
        _buildFilterChips(context, buses, uniqueGrades),

        const Divider(height: 1),

        // Buses List
        Expanded(
          child: displayBuses.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.directions_bus_outlined, size: 64, color: Colors.grey[400]),
                      const SizedBox(height: 16),
                      Text(
                        'No buses found',
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: displayBuses.length,
                  itemBuilder: (context, index) {
                    final bus = displayBuses[index];
                    final studentCount = busStudentCounts[bus.busNumber] ?? 0;
                    final busStudents = filteredStudents
                        .where((s) => s.busNumber == bus.busNumber)
                        .toList();

                    return _buildBusCard(context, bus, studentCount, busStudents);
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildFilterChips(BuildContext context, List<Bus> buses, List<String> uniqueGrades) {
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
              if (_selectedBus != null || _selectedGrade != null)
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      _selectedBus = null;
                      _selectedGrade = null;
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
              ...buses.map((bus) => FilterChip(
                    label: Text(bus.busNumber),
                    selected: _selectedBus == bus.busNumber,
                    onSelected: (selected) {
                      setState(() => _selectedBus = selected ? bus.busNumber : null);
                    },
                    showCheckmark: false,
                    selectedColor: theme.colorScheme.primaryContainer,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBusCard(
    BuildContext context,
    Bus bus,
    int studentCount,
    List<StudentActivity> students,
  ) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Icon(
            Icons.directions_bus,
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        title: Text(
          bus.busNumber,
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
                  'License: ${bus.licensePlate}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
            if (bus.routeName != null) ...[
              const SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.route, size: 14, color: Colors.grey[600]),
                  const SizedBox(width: 4),
                  Text(
                    'Route: ${bus.routeName}',
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
            color: studentCount > 0 ? Colors.green.shade100 : Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '$studentCount ${studentCount == 1 ? 'student' : 'students'}',
            style: TextStyle(
              color: studentCount > 0 ? Colors.green.shade900 : Colors.grey.shade700,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        children: [
          if (students.isEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'No students boarded on ${DateFormat('MMM d, yyyy').format(DateTime.now())} for this bus',
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
                    'Students Boarded on ${DateFormat('MMMM d, yyyy').format(DateTime.now())}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                  ...students.map((student) => _buildStudentItem(student)),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStudentItem(StudentActivity student) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: Text(
              student.studentName.isNotEmpty ? student.studentName[0].toUpperCase() : '?',
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.studentName,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  'Grade ${student.grade} • ID: ${student.schoolStudentId}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '${student.eventCount} ${student.eventCount == 1 ? 'event' : 'events'}',
              style: TextStyle(fontSize: 11, color: Colors.blue.shade900),
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
                ref.invalidate(busesProvider);
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
