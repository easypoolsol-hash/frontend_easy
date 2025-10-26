import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/fleet/providers/bus_locations_provider.dart';

/// Widget for selecting multiple buses to focus on the map
class BusSelectorWidget extends ConsumerWidget {
  /// Currently selected bus IDs
  final List<String> selectedBusIds;

  /// Callback when bus selection changes
  final void Function(List<String> busIds) onBusSelected;

  /// Creates a bus selector widget
  const BusSelectorWidget({
    required this.selectedBusIds,
    required this.onBusSelected,
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
                CheckboxListTile(
                  title: const Text('Show All Buses'),
                  value: selectedBusIds.isEmpty,
                  onChanged: (checked) {
                    if (checked == true) {
                      onBusSelected([]);
                    }
                  },
                  dense: true,
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                const Divider(height: 1),
                // Individual buses
                ...busLocations.map((busFeature) {
                  final properties = busFeature['properties'] as Map<String, dynamic>;
                  final busId = properties['id']?.toString() ?? 'unknown';
                  final busName = properties['name']?.toString() ?? 'Bus $busId';
                  final status = properties['status']?.toString() ?? 'unknown';

                  return CheckboxListTile(
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
                    value: selectedBusIds.contains(busId),
                    onChanged: (checked) {
                      final newSelection = List<String>.from(selectedBusIds);
                      if (checked == true) {
                        newSelection.add(busId);
                      } else {
                        newSelection.remove(busId);
                      }
                      onBusSelected(newSelection);
                    },
                    dense: true,
                    controlAffinity: ListTileControlAffinity.leading,
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
