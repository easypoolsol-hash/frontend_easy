import 'package:flutter/material.dart';
import 'package:frontend_easy_api/frontend_easy_api.dart' as api;

/// Reusable bus selector widget with autocomplete search
/// Supports search by bus number, license plate, and route name
class BusSelectorWidget extends StatelessWidget {
  /// List of buses to display
  final List<api.Bus> buses;

  /// Callback when a bus is selected
  final void Function(api.Bus?) onBusSelected;

  /// Width of the widget
  final double width;

  /// Label text for the field
  final String labelText;

  /// Hint text for the search field
  final String hintText;

  /// Whether to show route info in the dropdown
  final bool showRouteInfo;

  /// Creates a bus selector widget with searchable autocomplete
  const BusSelectorWidget({
    required this.buses,
    required this.onBusSelected,
    this.width = 300,
    this.labelText = 'Search Bus',
    this.hintText = 'Search by bus number, license plate, or route',
    this.showRouteInfo = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (buses.isEmpty) {
      return SizedBox(
        width: width,
        child: const TextField(
          enabled: false,
          decoration: InputDecoration(
            labelText: 'No buses available',
            border: OutlineInputBorder(),
            isDense: true,
            prefixIcon: Icon(Icons.directions_bus, size: 20),
          ),
        ),
      );
    }

    return SizedBox(
      width: width,
      child: Autocomplete<api.Bus>(
        displayStringForOption: (bus) {
          if (showRouteInfo) {
            final routeInfo = bus.routeName != null ? ' • ${bus.routeName}' : '';
            return '${bus.busNumber} - ${bus.licensePlate}$routeInfo';
          }
          return '${bus.busNumber} - ${bus.licensePlate}';
        },
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text.isEmpty) {
            return buses; // Show all buses when no search text
          }
          final searchText = textEditingValue.text.toLowerCase();
          return buses.where((bus) {
            // Search by bus number, license plate, or route name
            return bus.busNumber.toLowerCase().contains(searchText) ||
                   bus.licensePlate.toLowerCase().contains(searchText) ||
                   (bus.routeName?.toLowerCase().contains(searchText) ?? false);
          });
        },
        onSelected: (api.Bus bus) {
          onBusSelected(bus);
        },
        fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
          return TextField(
            controller: controller,
            focusNode: focusNode,
            decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              prefixIcon: const Icon(Icons.search, size: 20),
              suffixIcon: controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        controller.clear();
                        onBusSelected(null);
                      },
                    )
                  : null,
              border: const OutlineInputBorder(),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            ),
          );
        },
        optionsViewBuilder: (context, onSelected, options) {
          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              elevation: 4.0,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 300, maxWidth: 400),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final api.Bus bus = options.elementAt(index);
                    final routeInfo = showRouteInfo ? (bus.routeName ?? 'No Route') : null;

                    return ListTile(
                      dense: true,
                      leading: const Icon(Icons.directions_bus, size: 20),
                      title: Text(
                        'Bus ${bus.busNumber}',
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        showRouteInfo && routeInfo != null
                            ? '${bus.licensePlate} • $routeInfo'
                            : bus.licensePlate,
                        style: const TextStyle(fontSize: 12),
                      ),
                      onTap: () {
                        onSelected(bus);
                      },
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
