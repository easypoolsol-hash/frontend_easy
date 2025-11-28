import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;
import 'package:frontend_easy/features/fleet/providers/sos_alerts_provider.dart';
import 'package:intl/intl.dart';

/// SOS Alert Banner - Critical Emergency Notification
///
/// Design principles:
/// - Maximum visibility (red, pulsing animation)
/// - Clear information (bus number, time, location)
/// - Quick actions (acknowledge, view details)
/// - Non-dismissible until acknowledged (safety critical)
class SosAlertBanner extends ConsumerStatefulWidget {
  const SosAlertBanner({super.key});

  @override
  ConsumerState<SosAlertBanner> createState() => _SosAlertBannerState();
}

class _SosAlertBannerState extends ConsumerState<SosAlertBanner>
    with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    // Pulsing animation for urgency
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else {
      return DateFormat('HH:mm').format(time.toLocal());
    }
  }

  @override
  Widget build(BuildContext context) {
    final sosAlertsAsync = ref.watch(sosAlertsProvider);

    return sosAlertsAsync.when(
      data: (alerts) {
        // Only show active alerts (not acknowledged or resolved)
        final activeAlerts = alerts
            .where((alert) =>
                alert.status == api.SOSAlertStatusEnum.active &&
                alert.acknowledgedAt == null)
            .toList();

        if (activeAlerts.isEmpty) {
          return const SizedBox.shrink();
        }

        // Show the most recent alert
        final alert = activeAlerts.first;

        return AnimatedBuilder(
          animation: _pulseAnimation,
          builder: (context, child) {
            return Opacity(
              opacity: _pulseAnimation.value,
              child: child,
            );
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red.shade700,
                  Colors.red.shade600,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withValues(alpha: 0.5),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    // Emergency icon (pulsing)
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.warning_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Alert details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                'SOS ALERT',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.2,
                                    ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.3),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  _formatTime(alert.createdAt),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Bus ${alert.busNumber ?? "Unknown"} - ${alert.busLicensePlate ?? "No plate"}',
                            style:
                                Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          if (alert.message != null &&
                              alert.message!.isNotEmpty) ...[
                            const SizedBox(height: 2),
                            Text(
                              alert.message!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Colors.white.withValues(alpha: 0.9),
                                  ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ],
                      ),
                    ),

                    // Action buttons
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // View details button
                        IconButton(
                          onPressed: () {
                            _showAlertDetails(context, alert);
                          },
                          icon: const Icon(Icons.info_outline),
                          color: Colors.white,
                          tooltip: 'View details',
                        ),

                        // Acknowledge button
                        ElevatedButton.icon(
                          onPressed: () async {
                            await _acknowledgeAlert(alert);
                          },
                          icon: const Icon(Icons.check, size: 18),
                          label: const Text('Acknowledge'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.red.shade700,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }

  Future<void> _acknowledgeAlert(api.SOSAlert alert) async {
    final success =
        await ref.read(acknowledgeSosAlertProvider(alert.alertId).future);

    if (success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('SOS alert for Bus ${alert.busNumber} acknowledged'),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  void _showAlertDetails(BuildContext context, api.SOSAlert alert) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.warning_rounded, color: Colors.red.shade700),
            const SizedBox(width: 8),
            const Text('SOS Alert Details'),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _detailRow('Bus Number', alert.busNumber ?? 'Unknown'),
              _detailRow('License Plate', alert.busLicensePlate ?? 'N/A'),
              _detailRow('Kiosk ID', alert.kioskId),
              _detailRow('Time', DateFormat('MMM dd, yyyy HH:mm:ss')
                  .format(alert.createdAt.toLocal())),
              if (alert.latitude != null && alert.longitude != null)
                _detailRow('Location',
                    '${alert.latitude!.toStringAsFixed(6)}, ${alert.longitude!.toStringAsFixed(6)}'),
              if (alert.message != null && alert.message!.isNotEmpty)
                _detailRow('Message', alert.message!),
              const SizedBox(height: 16),
              Text(
                'Status: ${alert.status?.name.toUpperCase() ?? "UNKNOWN"}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade700,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
          if (alert.status == api.SOSAlertStatusEnum.active)
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await _acknowledgeAlert(alert);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade700,
                foregroundColor: Colors.white,
              ),
              child: const Text('Acknowledge'),
            ),
        ],
      ),
    );
  }

  Widget _detailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
