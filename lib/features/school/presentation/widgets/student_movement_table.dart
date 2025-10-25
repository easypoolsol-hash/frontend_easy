import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/movement_event_status.dart';
import 'package:frontend_easy/features/school/models/student_movement_row.dart';

/// Student Movement Table
/// Displays pick-up and drop-off status for all students
class StudentMovementTable extends StatelessWidget {
  final List<StudentMovementRow> students;
  final VoidCallback? onRefresh;

  const StudentMovementTable({
    super.key,
    required this.students,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with refresh button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Student Movement',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                if (onRefresh != null)
                  IconButton(
                    icon: const Icon(Icons.refresh, size: 20),
                    onPressed: onRefresh,
                    tooltip: 'Refresh',
                  ),
              ],
            ),
            const SizedBox(height: 16),

            // Table header
            _buildTableHeader(context),
            const Divider(height: 1, thickness: 1),

            // Table rows
            if (students.isEmpty)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    'No student data available',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                ),
              )
            else
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: students.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  return _StudentMovementRow(student: students[index]);
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTableHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      color: Colors.grey[50],
      child: Row(
        children: [
          // Photo column
          const SizedBox(width: 48),
          const SizedBox(width: 12),

          // Name & Grade column
          Expanded(
            flex: 3,
            child: Text(
              'Student',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
            ),
          ),

          // Bus Route column
          Expanded(
            flex: 2,
            child: Text(
              'Bus Route',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
            ),
          ),

          // Pick-up column
          Expanded(
            flex: 2,
            child: Text(
              'Pick-up',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
            ),
          ),

          // Drop-off column
          Expanded(
            flex: 2,
            child: Text(
              'Drop-off',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
            ),
          ),

          // Verification column
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}

/// Individual student movement row
class _StudentMovementRow extends StatelessWidget {
  final StudentMovementRow student;

  const _StudentMovementRow({required this.student});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      color: student.requiresAttention ? Colors.red[50] : null,
      child: Row(
        children: [
          // Student photo
          _buildStudentPhoto(),
          const SizedBox(width: 12),

          // Name & Grade
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.studentName,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  student.grade,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[600],
                      ),
                ),
                if (student.requiresAttention) ...[
                  const SizedBox(height: 2),
                  Text(
                    student.attentionReason ?? 'Requires attention',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.red[700],
                          fontSize: 11,
                        ),
                  ),
                ],
              ],
            ),
          ),

          // Bus Route
          Expanded(
            flex: 2,
            child: Text(
              student.busRoute ?? 'Not Assigned',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[700],
                  ),
            ),
          ),

          // Pick-up status
          Expanded(
            flex: 2,
            child: _buildEventStatus(
              context,
              student.pickupStatus,
              'Pick-up',
            ),
          ),

          // Drop-off status
          Expanded(
            flex: 2,
            child: _buildEventStatus(
              context,
              student.dropoffStatus,
              'Drop-off',
            ),
          ),

          // Verification method
          SizedBox(
            width: 40,
            child: Center(
              child: student.verificationMethod != null
                  ? Tooltip(
                      message: student.verificationMethod!,
                      child: const Text(
                        '✓', // Simple checkmark for verified
                        style: TextStyle(fontSize: 18, color: Color(0xFF4CAF50)),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStudentPhoto() {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
        border: Border.all(
          color: student.requiresAttention ? Colors.red : Colors.grey[300]!,
          width: 2,
        ),
      ),
      child: student.photoUrl != null
          ? ClipOval(
              child: Image.network(
                student.photoUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return _buildDefaultAvatar();
                },
              ),
            )
          : _buildDefaultAvatar(),
    );
  }

  Widget _buildDefaultAvatar() {
    return Icon(
      Icons.person,
      size: 28,
      color: Colors.grey[400],
    );
  }

  Widget _buildEventStatus(
    BuildContext context,
    MovementEventStatus status,
    String label,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: _getStatusBackgroundColor(status),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: _getStatusBorderColor(status),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                status.isCompleted ? Icons.check_circle : Icons.circle_outlined,
                size: 14,
                color: _getStatusIconColor(status),
              ),
              const SizedBox(width: 4),
              Flexible(
                child: Text(
                  status.isCompleted ? status.timeText : 'Pending',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: _getStatusTextColor(status),
                        fontWeight: status.isCompleted ? FontWeight.w600 : FontWeight.normal,
                        fontSize: 12,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          if (status.isLate) ...[
            const SizedBox(height: 2),
            Text(
              'Late',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.red[700],
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
          if (status.isOverdue) ...[
            const SizedBox(height: 2),
            Text(
              'Overdue',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.orange[700],
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ],
      ),
    );
  }

  Color _getStatusBackgroundColor(MovementEventStatus status) {
    if (status.isCompleted) {
      return Colors.green[50]!;
    } else if (status.isOverdue) {
      return Colors.orange[50]!;
    } else {
      return Colors.grey[100]!;
    }
  }

  Color _getStatusBorderColor(MovementEventStatus status) {
    if (status.isCompleted) {
      if (status.isLate) {
        return Colors.red[200]!;
      }
      return Colors.green[200]!;
    } else if (status.isOverdue) {
      return Colors.orange[200]!;
    } else {
      return Colors.grey[300]!;
    }
  }

  Color _getStatusIconColor(MovementEventStatus status) {
    if (status.isCompleted) {
      if (status.isLate) {
        return Colors.red[700]!;
      }
      return Colors.green[700]!;
    } else if (status.isOverdue) {
      return Colors.orange[700]!;
    } else {
      return Colors.grey[400]!;
    }
  }

  Color _getStatusTextColor(MovementEventStatus status) {
    if (status.isCompleted) {
      if (status.isLate) {
        return Colors.red[900]!;
      }
      return Colors.green[900]!;
    } else if (status.isOverdue) {
      return Colors.orange[900]!;
    } else {
      return Colors.grey[600]!;
    }
  }
}
