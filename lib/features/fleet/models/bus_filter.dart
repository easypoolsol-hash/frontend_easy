/// Bus filter model for map visualization
class BusFilter {
  /// Show all buses
  final bool showAll;

  /// Selected bus ID to focus on (null = show all)
  final String? selectedBusId;

  /// Creates a bus filter
  const BusFilter({
    this.showAll = true,
    this.selectedBusId,
  });

  /// Copy with new values
  BusFilter copyWith({
    bool? showAll,
    String? selectedBusId,
  }) {
    return BusFilter(
      showAll: showAll ?? this.showAll,
      selectedBusId: selectedBusId ?? this.selectedBusId,
    );
  }

  /// Reset to show all buses
  BusFilter reset() => const BusFilter(showAll: true);

  /// Focus on a specific bus
  BusFilter focusOn(String busId) => BusFilter(
        showAll: false,
        selectedBusId: busId,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BusFilter &&
          runtimeType == other.runtimeType &&
          showAll == other.showAll &&
          selectedBusId == other.selectedBusId;

  @override
  int get hashCode => showAll.hashCode ^ selectedBusId.hashCode;
}
