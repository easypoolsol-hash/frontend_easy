import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/movement_event_status.dart';
import 'package:frontend_easy/features/school/models/student_movement_row.dart';

/// Redesigned Student Event Card - MD3 Design
/// Shows pickup and dropoff side by side
class StudentEventCardRedesigned extends StatelessWidget {
  final StudentMovementRow student;
  final VoidCallback? onTap;

  const StudentEventCardRedesigned({
    required this.student,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: student.requiresAttention ? Colors.red[50] : Colors.grey[50],
          borderRadius: BorderRadius.circular(12),
          border: student.requiresAttention
              ? Border.all(color: Colors.red[200]!, width: 1)
              : null,
        ),
        child: Row(
          children: [
            // Student avatar
            _buildAvatar(),
            const SizedBox(width: 16),

            // Student info
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        student.studentName,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[900],
                            ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue[200]!),
                        ),
                        child: Text(
                          student.schoolStudentId,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.blue[700],
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.school, size: 12, color: Colors.grey[500]),
                      const SizedBox(width: 4),
                      Text(
                        student.grade,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                      ),
                      const SizedBox(width: 12),
                      Icon(Icons.directions_bus, size: 12, color: Colors.grey[500]),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          student.busNumber ?? 'Not Assigned',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.grey[600],
                                fontSize: 12,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.route, size: 12, color: Colors.grey[500]),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          student.routeName ?? 'Not Assigned',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.grey[500],
                                fontSize: 11,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 16),

            // Pickup and Dropoff side by side
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Pickup
                  Expanded(
                    child: _buildEventStatus(
                      context,
                      'Pickup',
                      student.pickupStatus,
                      Icons.arrow_upward,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Dropoff
                  Expanded(
                    child: _buildEventStatus(
                      context,
                      'Drop-off',
                      student.dropoffStatus,
                      Icons.arrow_downward,
                    ),
                  ),
                ],
              ),
            ),

            // Alert indicator (fixed width to not disturb layout)
            SizedBox(
              width: 32,
              child: student.requiresAttention
                  ? Icon(
                      Icons.warning_rounded,
                      size: 20,
                      color: Colors.red[700],
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: student.requiresAttention ? Colors.red[100] : Colors.green[100],
        shape: BoxShape.circle,
      ),
      child: student.photoUrl != null
          ? ClipOval(
              child: Image.network(
                student.photoUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => _buildDefaultIcon(),
              ),
            )
          : _buildDefaultIcon(),
    );
  }

  Widget _buildDefaultIcon() {
    return Icon(
      Icons.person,
      color: student.requiresAttention ? Colors.red[600] : Colors.green[600],
      size: 28,
    );
  }

  Widget _buildEventStatus(
    BuildContext context,
    String label,
    MovementEventStatus status,
    IconData icon,
  ) {
    final isCompleted = status.isCompleted;
    final isOverdue = status.isOverdue;
    final isLate = status.isLate;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Icon
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: _getStatusColor(isCompleted, isOverdue, isLate).withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            isCompleted ? Icons.check : icon,
            size: 16,
            color: _getStatusColor(isCompleted, isOverdue, isLate),
          ),
        ),
        const SizedBox(height: 4),
        // Time or label
        Text(
          isCompleted ? status.timeText : '-',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: _getStatusColor(isCompleted, isOverdue, isLate),
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Color _getStatusColor(bool isCompleted, bool isOverdue, bool isLate) {
    if (isCompleted) {
      return isLate ? Colors.orange[700]! : Colors.green[700]!;
    } else if (isOverdue) {
      return Colors.red[700]!;
    } else {
      return Colors.grey[400]!;
    }
  }
}
