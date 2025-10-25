import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/shared_models.dart';
import 'package:frontend_easy/features/school/models/student_boarding_timeline.dart';

/// Student Timeline Card - Shows all boarding events
/// Flexible design that works for any number of scans per day
class StudentTimelineCard extends StatelessWidget {
  final StudentBoardingTimeline student;
  final VoidCallback? onTap;

  const StudentTimelineCard({
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  // Name and ID
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          student.studentName,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[900],
                              ),
                          overflow: TextOverflow.ellipsis,
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

                  // Grade
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
                    ],
                  ),

                  // Current bus and route (if on bus)
                  if (student.currentBusNumber != null) ...[
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.directions_bus, size: 12, color: Colors.grey[500]),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            student.currentBusNumber!,
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (student.currentRouteName != null) ...[
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.route, size: 12, color: Colors.grey[500]),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            student.currentRouteName!,
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
                ],
              ),
            ),

            const SizedBox(width: 16),

            // Boarding events timeline (horizontal)
            Expanded(
              flex: 3,
              child: _buildEventsTimeline(context),
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
        color: student.requiresAttention
            ? Colors.red[100]
            : student.isOnBus
                ? Colors.orange[100]
                : Colors.green[100],
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
      color: student.requiresAttention
          ? Colors.red[600]
          : student.isOnBus
              ? Colors.orange[600]
              : Colors.green[600],
      size: 28,
    );
  }

  Widget _buildEventsTimeline(BuildContext context) {
    if (student.events.isEmpty) {
      return Center(
        child: Text(
          'No activity',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[400],
                fontSize: 11,
              ),
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(student.events.length, (index) {
          final event = student.events[index];
          final isBoarding = index.isEven; // Even index = boarding, odd = alighting

          return Row(
            children: [
              _buildEventDot(context, event, isBoarding, index),
              if (index < student.events.length - 1)
                Container(
                  width: 20,
                  height: 2,
                  color: Colors.grey[300],
                ),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildEventDot(BuildContext context, BoardingEventRecord event, bool isBoarding, int index) {
    final color = isBoarding ? Colors.green[600]! : Colors.blue[600]!;
    final icon = isBoarding ? Icons.arrow_upward : Icons.arrow_downward;

    return Tooltip(
      message: '${isBoarding ? 'Boarded' : 'Alighted'} at ${event.timeText}\n${event.busNumber}\n${event.routeName}',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              shape: BoxShape.circle,
              border: Border.all(color: color, width: 2),
            ),
            child: Icon(
              icon,
              size: 12,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            event.timeText,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
