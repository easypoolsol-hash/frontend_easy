import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:frontend_easy/features/school/providers/students_provider.dart';
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
    final studentsAsync = ref.watch(
      studentsListProvider(
        const StudentListParams(page: 1),
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
                      ref.invalidate(studentsListProvider);
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
              child: studentsAsync.when(
                data: (paginatedStudents) => _buildContent(
                  context,
                  paginatedStudents.results.toList(),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) {
                  // Print error for debugging
                  print('Error loading students: $error');
                  print('Stack trace: $stack');
                  return _buildError(context, 'Failed to load students: ${error.toString()}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    List<StudentList> students, // Using StudentList (lightweight) not Student
  ) {
    // Extract unique grades and buses
    final uniqueGrades = students
        .map((s) => s.grade)
        .toSet()
        .toList()
      ..sort();

    final uniqueBuses = students
        .map((s) => s.busNumber)
        .where((busNumber) => busNumber.isNotEmpty)
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
        final matchesName = student.decryptedName.toLowerCase().contains(query);
        final matchesId = student.studentId.toLowerCase().contains(query);
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

  Widget _buildStudentCard(BuildContext context, StudentList student) {
    final theme = Theme.of(context);
    final busNumber = student.busNumber;
    final hasAssignedBus = busNumber.isNotEmpty;

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: theme.colorScheme.primaryContainer,
          child: Text(
            student.decryptedName.isNotEmpty ? student.decryptedName[0].toUpperCase() : '?',
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          student.decryptedName,
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
                  'ID: ${student.studentId}',
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
            if (hasAssignedBus) ...[
              const SizedBox(height: 2),
              Row(
                children: [
                  Icon(Icons.directions_bus, size: 14, color: Colors.grey[600]),
                  const SizedBox(width: 4),
                  Text(
                    'Bus $busNumber',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Student Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 16),
                _buildDetailRow(Icons.person, 'Full Name', student.decryptedName),
                _buildDetailRow(Icons.badge, 'Student ID', student.studentId),
                _buildDetailRow(Icons.school, 'Grade/Class', 'Grade ${student.grade}'),
                if (student.section != null)
                  _buildDetailRow(Icons.class_, 'Section', student.section!),
                if (hasAssignedBus)
                  _buildDetailRow(Icons.directions_bus, 'Bus License Plate', busNumber),
                // Note: StudentList doesn't include enrollmentDate (lightweight model)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.grey[700]),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
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
                ref.invalidate(studentsListProvider);
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
