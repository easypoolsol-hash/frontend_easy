import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/student_movement_row.dart';

/// Student event card - MD3 design matching backend template
/// Clean, simple card showing student status
class StudentEventCard extends StatelessWidget {
  final StudentMovementRow student;
  final VoidCallback? onTap;

  const StudentEventCard({
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
        padding: const EdgeInsets.all(12),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    student.studentName,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[900],
                        ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        student.grade,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[500],
                            ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '•',
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                      const SizedBox(width: 8),
                      Icon(Icons.directions_bus, size: 14, color: Colors.grey[500]),
                      const SizedBox(width: 4),
                      Text(
                        student.routeName ?? 'No Route',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[500],
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Status indicators
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildStatusBadge(
                  context,
                  'Pickup',
                  student.pickupStatus.isCompleted,
                  student.pickupStatus.timeText,
                ),
                const SizedBox(height: 4),
                _buildStatusBadge(
                  context,
                  'Drop-off',
                  student.dropoffStatus.isCompleted,
                  student.dropoffStatus.timeText,
                ),
              ],
            ),

            // Alert indicator
            if (student.requiresAttention) ...[
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.warning,
                  size: 16,
                  color: Colors.red[700],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: student.requiresAttention ? Colors.red[100] : Colors.green[100],
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.person,
        color: student.requiresAttention ? Colors.red[600] : Colors.green[600],
        size: 24,
      ),
    );
  }

  Widget _buildStatusBadge(
    BuildContext context,
    String label,
    bool isCompleted,
    String time,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isCompleted ? Colors.green[100] : Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isCompleted ? Icons.check_circle : Icons.circle_outlined,
            size: 12,
            color: isCompleted ? Colors.green[700] : Colors.grey[500],
          ),
          const SizedBox(width: 4),
          Text(
            isCompleted ? time : label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 11,
                  color: isCompleted ? Colors.green[800] : Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
