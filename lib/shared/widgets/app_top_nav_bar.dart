import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:frontend_easy/shared/services/auth_service.dart';

/// Reusable top navigation bar
class AppTopNavBar extends StatelessWidget {
  final int currentIndex;

  const AppTopNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
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
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(6),
              ),
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
            _buildNavButton(context, 'Events', Icons.event, 1),
            const SizedBox(width: 4),
            _buildNavButton(context, 'Students', Icons.people, 2),
            const SizedBox(width: 4),
            _buildNavButton(context, 'Fleet', Icons.directions_bus, 3),
            const SizedBox(width: 8),
            // Logout button
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
              onPressed: () => _showLogoutDialog(context),
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
        context.go('/');
        break;
      case 1:
        context.go('/boarding');
        break;
      case 2:
        context.go('/school');
        break;
      case 3:
        context.go('/fleet-status');
        break;
    }
  }

  Future<void> _showLogoutDialog(BuildContext context) async {
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
      // Use AuthService to handle logout logic
      await AuthService().logout();

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
