import 'package:flutter/material.dart';
import 'package:frontend_easy/features/school/models/bus_fleet_status.dart';

/// Bus Fleet Status Panel
/// Displays real-time status of all buses in the fleet
class BusFleetPanel extends StatelessWidget {
  final List<BusFleetStatus> buses;

  const BusFleetPanel({
    super.key,
    required this.buses,
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
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fleet Status',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                _buildFleetSummary(context),
              ],
            ),
            const SizedBox(height: 16),

            // Bus list
            if (buses.isEmpty)
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    'No buses available',
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
                itemCount: buses.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  return _BusFleetItem(bus: buses[index]);
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildFleetSummary(BuildContext context) {
    final activeCount = buses.where((b) => b.status == BusOperationalStatus.active || b.status == BusOperationalStatus.enRoute).length;
    final totalCount = buses.length;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue[200]!),
      ),
      child: Text(
        '$activeCount / $totalCount Active',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.blue[700],
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}

/// Individual bus fleet item row
class _BusFleetItem extends StatelessWidget {
  final BusFleetStatus bus;

  const _BusFleetItem({required this.bus});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Row(
        children: [
          // Status indicator
          _buildStatusIndicator(),
          const SizedBox(width: 12),

          // Bus info
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bus.busNumber,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  bus.routeName,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey[600],
                      ),
                ),
              ],
            ),
          ),

          // Student count
          Expanded(
            flex: 2,
            child: _buildStudentCount(context),
          ),

          // ETA or last update
          Expanded(
            flex: 2,
            child: _buildTimeInfo(context),
          ),

          // Status badge
          _buildStatusBadge(context),
        ],
      ),
    );
  }

  Widget _buildStatusIndicator() {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _getStatusColor(),
      ),
    );
  }

  Widget _buildStudentCount(BuildContext context) {
    final percentage = bus.completionPercentage.toInt();
    final isComplete = percentage >= 100;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${bus.studentsBoarded}/${bus.studentsExpected}',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: LinearProgressIndicator(
                  value: percentage / 100,
                  minHeight: 4,
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    isComplete ? Colors.green : Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              '$percentage%',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey[600],
                    fontSize: 10,
                  ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTimeInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (bus.status == BusOperationalStatus.enRoute && bus.eta != null)
          Text(
            bus.etaText,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: bus.isLate ? Colors.red[700] : Colors.orange[700],
                ),
          )
        else
          Text(
            bus.lastUpdateText,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        if (bus.currentLocation != null) ...[
          const SizedBox(height: 2),
          Text(
            bus.currentLocation!,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[500],
                  fontSize: 10,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ],
    );
  }

  Widget _buildStatusBadge(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: _getStatusColor().withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _getStatusColor().withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            bus.status.icon,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(width: 4),
          Text(
            bus.status.label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: _getStatusColor(),
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    switch (bus.status) {
      case BusOperationalStatus.active:
        return const Color(0xFF10B981); // Green
      case BusOperationalStatus.arrived:
        return const Color(0xFF3B82F6); // Blue
      case BusOperationalStatus.enRoute:
        return const Color(0xFFF59E0B); // Amber
      case BusOperationalStatus.delayed:
        return const Color(0xFFEF4444); // Red
      case BusOperationalStatus.inactive:
        return const Color(0xFF6B7280); // Gray
      case BusOperationalStatus.unknown:
        return const Color(0xFF9CA3AF); // Light gray
    }
  }
}
