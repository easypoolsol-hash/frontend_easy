import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/priority_level.dart';
import 'package:frontend_easy/features/school/models/student_movement_summary_individual.dart';

/// Center panel - Shows students grouped by priority
class StudentPriorityList extends StatelessWidget {
  final List<StudentMovementSummary> students;

  const StudentPriorityList({
    required this.students,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final highPriority = students.where((s) => s.priority.level == PriorityLevels.high.level).toList();
    final mediumPriority = students.where((s) => s.priority.level == PriorityLevels.medium.level).toList();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '⚠️ STUDENTS REQUIRING ATTENTION',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(height: 24),

            // High Priority
            if (highPriority.isNotEmpty) ...[
              _buildPriorityHeader(context, '🔴 HIGH PRIORITY', highPriority.length),
              const SizedBox(height: 12),
              ...highPriority.map((student) => _buildStudentCard(context, student)),
              const SizedBox(height: 16),
            ],

            // Medium Priority
            if (mediumPriority.isNotEmpty) ...[
              _buildPriorityHeader(context, '🟡 MEDIUM PRIORITY', mediumPriority.length),
              const SizedBox(height: 12),
              ...mediumPriority.map((student) => _buildStudentCard(context, student)),
            ],

            if (students.isEmpty)
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: Center(
                  child: Text('✅ No students require attention'),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriorityHeader(BuildContext context, String title, int count) {
    return Text(
      '$title ($count students)',
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildStudentCard(BuildContext context, StudentMovementSummary student) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: student.priority.level == PriorityLevels.high.level
          ? Colors.red[50]
          : Colors.amber[50],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '👤 ${student.studentName}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Chip(
                  label: Text(student.grade),
                  backgroundColor: Colors.blue[100],
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('Roll: ${student.rollNumber} • Bus: ${student.busRoute}'),
            if (student.alertMessage != null) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    const Text('⚠️'),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        student.alertMessage!,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 12),
            if (student.primaryParent != null)
              Text('📞 ${student.primaryParent!.name}: ${student.primaryParent!.phoneNumber}'),
            const SizedBox(height: 12),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Wire up call functionality
                  },
                  icon: const Icon(Icons.phone, size: 16),
                  label: const Text('Call'),
                ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Wire up SMS functionality
                  },
                  icon: const Icon(Icons.message, size: 16),
                  label: const Text('SMS'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {
                    // TODO: Show detail view
                  },
                  child: const Text('View Details'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
