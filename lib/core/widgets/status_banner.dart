/// Google Product Standard - System Status Banner
///
/// Honest, transparent health communication for new products
/// Shows users when using cached data, builds trust through transparency

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/core/models/system_health.dart';
import 'package:frontend_easy/core/services/health_monitor.dart';

/// Status banner widget - shows system health at top of screen
///
/// Design principles for new startups:
/// - Be honest about status (don't hide issues)
/// - Show users what's happening (transparency builds trust)
/// - Provide context (e.g., "last updated 2 minutes ago")
/// - Don't alarm users (degraded service is still functional)
class StatusBanner extends ConsumerWidget {
  const StatusBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final health = ref.watch(healthMonitorProvider);

    return health.when(
      operational: () => const SizedBox.shrink(), // No banner when all good
      degraded: (userMessage, lastSync) => _DegradedBanner(
        message: userMessage,
        lastSync: lastSync,
        onRetry: () => ref.read(healthMonitorProvider.notifier).retry(),
      ),
    );
  }
}

class _DegradedBanner extends StatelessWidget {
  final String message;
  final DateTime lastSync;
  final VoidCallback onRetry;

  const _DegradedBanner({
    required this.message,
    required this.lastSync,
    required this.onRetry,
  });

  String _formatTimeSince(DateTime time) {
    final duration = DateTime.now().difference(time);

    if (duration.inMinutes < 1) {
      return 'just now';
    } else if (duration.inMinutes < 60) {
      return '${duration.inMinutes} min ago';
    } else if (duration.inHours < 24) {
      return '${duration.inHours}h ago';
    } else {
      return '${duration.inDays}d ago';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      elevation: 2,
      color: theme.colorScheme.surfaceContainerHighest,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(
              Icons.info_outline,
              size: 20,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Last updated ${_formatTimeSince(lastSync)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: onRetry,
              child: Text(
                'Retry',
                style: TextStyle(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
