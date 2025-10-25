import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/fleet/providers/bus_locations_provider.dart';

/// Widget for selecting a specific bus to focus on the map
class BusSelectorWidget extends ConsumerWidget {
  /// Currently selected bus ID
  final String? selectedBusId;

  /// Callback when bus selection changes
  final void Function(String? busId) onBusSelected;

  /// Callback when user wants to focus on selected bus
  final VoidCallback? onFocusRequested;

  /// Creates a bus selector widget
  const BusSelectorWidget({
    required this.selectedBusId,
    required this.onBusSelected,
    this.onFocusRequested,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final busLocationsAsync = ref.watch(busLocationsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Bus Selection',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            if (selectedBusId != null && onFocusRequested != null)
              TextButton.icon(
                onPressed: onFocusRequested,
                icon: const Icon(Icons.my_location, size: 16),
                label: const Text('Focus'),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        busLocationsAsync.when(
          data: (busLocations) {
            if (busLocations.isEmpty) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('No active buses available'),
              );
            }

            return Column(
              children: [
                // "Show All" option
                RadioListTile<String?>(
                  title: const Text('Show All Buses'),
                  value: null,
                  groupValue: selectedBusId,
                  onChanged: onBusSelected,
                  dense: true,
                ),
                const Divider(height: 1),
                // Individual buses
                ...busLocations.map((busFeature) {
                  final properties = busFeature['properties'] as Map<String, dynamic>;
                  final busId = properties['id']?.toString() ?? 'unknown';
                  final busName = properties['name']?.toString() ?? 'Bus $busId';
                  final status = properties['status']?.toString() ?? 'unknown';

                  return RadioListTile<String?>(
                    title: Text(busName),
                    subtitle: Text(
                      status,
                      style: TextStyle(
                        color: status.toLowerCase() == 'active'
                            ? Colors.green
                            : Colors.red,
                        fontSize: 12,
                      ),
                    ),
                    value: busId,
                    groupValue: selectedBusId,
                    onChanged: onBusSelected,
                    dense: true,
                    secondary: Icon(
                      Icons.directions_bus,
                      color: status.toLowerCase() == 'active'
                          ? Colors.green
                          : Colors.grey,
                    ),
                  );
                }),
              ],
            );
          },
          loading: () => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stack) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Failed to load buses',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ),
      ],
    );
  }
}
