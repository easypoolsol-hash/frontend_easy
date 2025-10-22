/// Map visualization modes for route management
/// Following 2025 UX patterns: mode-based views instead of toggle overload
enum MapMode {
  /// Overview: All routes dimmed, clustered stops, active buses only
  overview,

  /// Route Focus: Single route highlighted, others faded, full stop detail
  routeFocus,

  /// Stop Management: Routes hidden, all stops visible, search/filter enabled
  stopManagement,

  /// Live Operations: Real-time bus tracking, route context, status colors
  liveOperations,
}

extension MapModeExtension on MapMode {
  String get displayName {
    switch (this) {
      case MapMode.overview:
        return 'Overview';
      case MapMode.routeFocus:
        return 'Route Focus';
      case MapMode.stopManagement:
        return 'Stop Management';
      case MapMode.liveOperations:
        return 'Live Operations';
    }
  }

  String get description {
    switch (this) {
      case MapMode.overview:
        return 'See all routes and active buses';
      case MapMode.routeFocus:
        return 'Focus on a single route';
      case MapMode.stopManagement:
        return 'Manage bus stops';
      case MapMode.liveOperations:
        return 'Real-time bus tracking';
    }
  }
}
