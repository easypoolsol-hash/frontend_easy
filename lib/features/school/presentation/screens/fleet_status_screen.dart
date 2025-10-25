import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';
import 'package:frontend_easy/features/school/presentation/widgets/bus_fleet_panel.dart';
import 'package:frontend_easy/features/school/presentation/widgets/md3_stat_card.dart';
import 'package:frontend_easy/features/school/providers/school_dashboard_provider.dart';
import 'package:frontend_easy/shared/widgets/app_top_nav_bar.dart';

/// Fleet Status Screen
/// Shows real-time status of all buses in the fleet
class FleetStatusScreen extends ConsumerWidget {
  const FleetStatusScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(schoolDashboardProvider);
    final busesAsync = ref.watch(busFleetProvider);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          const AppTopNavBar(currentIndex: 3), // Fleet Status tab

          // Scrollable content
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(busFleetProvider);
                await Future<void>.delayed(const Duration(seconds: 1));
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Page header
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Fleet Status',
                                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[900],
                                        ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Real-time bus tracking and fleet management',
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: Colors.grey[500],
                                        ),
                                  ),
                                ],
                              ),
                              // Last Updated tag
                              summaryAsync.when(
                                data: (summary) => Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.green[50],
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.green[200]!),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        size: 14,
                                        color: Colors.green[700],
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        summary.lastUpdatedText,
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                              color: Colors.green[700],
                                              fontWeight: FontWeight.w600,
                                              fontSize: 11,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                loading: () => Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.grey[200]!),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 14,
                                        height: 14,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[600]!),
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        'Loading...',
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w600,
                                              fontSize: 11,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                error: (error, stack) => Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.red[50],
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.red[200]!),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.error,
                                        size: 14,
                                        color: Colors.red[700],
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        'Error',
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                              color: Colors.red[700],
                                              fontWeight: FontWeight.w600,
                                              fontSize: 11,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Stat cards
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                      child: summaryAsync.when(
                        data: (summary) => Row(
                          children: [
                            Expanded(
                              child: MD3StatCard(
                                title: 'Total Buses',
                                value: '${summary.buses.total}',
                                subtitle: 'Fleet size',
                                icon: Icons.directions_bus,
                                iconColor: const Color(0xFFFF9800),
                                iconBackgroundColor: const Color(0xFFFF9800),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: MD3StatCard(
                                title: 'Active',
                                value: '${summary.buses.active}',
                                subtitle: 'Currently running',
                                icon: Icons.check_circle,
                                iconColor: Colors.green[600]!,
                                iconBackgroundColor: Colors.green[600]!,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: MD3StatCard(
                                title: 'En Route',
                                value: '${summary.buses.enRoute}',
                                subtitle: 'On the way',
                                icon: Icons.navigation,
                                iconColor: Colors.blue[600]!,
                                iconBackgroundColor: Colors.blue[600]!,
                              ),
                            ),
                          ],
                        ),
                        loading: () => const Center(
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        error: (error, stack) => Center(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Text(
                              'Error loading dashboard: $error',
                              style: TextStyle(color: Colors.red[700]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Fleet list
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: busesAsync.when(
                          data: (buses) => BusFleetPanel(buses: buses),
                          loading: () => const Center(
                            child: Padding(
                              padding: EdgeInsets.all(32.0),
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          error: (error, stack) => Center(
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Text(
                                'Error loading fleet data: $error',
                                style: TextStyle(color: Colors.red[700]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
