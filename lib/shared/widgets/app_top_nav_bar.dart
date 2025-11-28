import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:frontend_easy/shared/services/auth_service.dart';
import 'package:frontend_easy/features/fleet/providers/sos_alerts_provider.dart';

/// Reusable top navigation bar
class AppTopNavBar extends ConsumerWidget {
  final int currentIndex;

  const AppTopNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            // Logo
            SizedBox(
              width: 48,
              height: 48,
              child: const _LogoWidget(),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'EasyPool',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Navigation buttons
            _buildNavButton(context, 'Map', Icons.map, 0),
            const SizedBox(width: 4),
            _buildNavButton(context, 'Attendance', Icons.people, 1),
            const SizedBox(width: 12),
            // SOS Notification Bell
            _buildSOSNotificationBell(context, ref),
            const SizedBox(width: 8),
            // Logout button
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
              onPressed: () => _showLogoutDialog(context, ref),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String label, IconData icon, int index) {
    final isSelected = currentIndex == index;
    return TextButton.icon(
      onPressed: () => _onItemTapped(context, index),
      icon: Icon(
        icon,
        color: isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onSurfaceVariant,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: isSelected
            ? Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3)
            : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/school');
        break;
    }
  }

  Widget _buildSOSNotificationBell(BuildContext context, WidgetRef ref) {
    final sosAlertsAsync = ref.watch(sosAlertsRestProvider);

    return sosAlertsAsync.when(
      data: (alerts) {
        final activeCount = alerts.where((a) => a.status?.name == 'active').length;

        return Badge(
          isLabelVisible: activeCount > 0,
          label: Text(activeCount.toString()),
          backgroundColor: Colors.red,
          child: IconButton(
            icon: Icon(
              Icons.notifications,
              color: activeCount > 0
                ? Colors.red
                : Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            tooltip: activeCount > 0
              ? '$activeCount active SOS alert${activeCount > 1 ? 's' : ''}'
              : 'No active SOS alerts',
            onPressed: () => _showSOSAlertsDialog(context, ref, alerts),
          ),
        );
      },
      loading: () => IconButton(
        icon: Icon(Icons.notifications_outlined),
        onPressed: null,
      ),
      error: (_, __) => IconButton(
        icon: Icon(Icons.notifications_off_outlined),
        tooltip: 'Unable to load SOS alerts',
        onPressed: null,
      ),
    );
  }

  Future<void> _showSOSAlertsDialog(BuildContext context, WidgetRef ref, List<dynamic> alerts) async {
    if (alerts.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No SOS alerts')),
      );
      return;
    }

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.warning_amber, color: Colors.red),
            const SizedBox(width: 8),
            Text('SOS Alerts (${alerts.length})'),
          ],
        ),
        content: SizedBox(
          width: 400,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: alerts.length,
            itemBuilder: (context, index) {
              final alert = alerts[index];
              return ListTile(
                leading: Icon(
                  Icons.emergency,
                  color: alert.status?.name == 'active' ? Colors.red : Colors.grey,
                ),
                title: Text('Student: ${alert.studentName ?? 'Unknown'}'),
                subtitle: Text(
                  'Bus: ${alert.busLicensePlate ?? 'Unknown'}\n'
                  'Status: ${alert.status?.name.toUpperCase() ?? 'Unknown'}',
                ),
                isThreeLine: true,
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
          if (alerts.any((a) => a.status?.name == 'active'))
            FilledButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
                context.go('/home'); // Navigate to map to handle SOS alerts
              },
              icon: const Icon(Icons.map),
              label: const Text('View on Map'),
            ),
        ],
      ),
    );
  }

  Future<void> _showLogoutDialog(BuildContext context, WidgetRef ref) async {
    final shouldLogout = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Logout'),
          ),
        ],
      ),
    );

    if (shouldLogout == true && context.mounted) {
      // Use provider-based auth service (Fortune 500 pattern)
      final authService = ref.read(authServiceProvider);
      await authService.logout();

      // Navigate to login
      if (context.mounted) {
        context.go('/login');
      }
    }
  }
}

/// Logo widget that gracefully handles missing logo files
class _LogoWidget extends StatelessWidget {
  const _LogoWidget();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) => const Icon(
        Icons.school,
        color: Colors.blue,
        size: 18,
      ),
    );
  }
}
