import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/core/config/api_config.dart';
import 'package:frontend_easy/core/services/token_manager.dart';
import 'package:dio/dio.dart';

/// Historical bus location data state
class BusHistoryState {
  final List<Map<String, dynamic>> locations;
  final bool isLoading;
  final String? error;
  final String? selectedBusId;
  final DateTime? selectedDate;
  final int currentIndex;

  BusHistoryState({
    this.locations = const [],
    this.isLoading = false,
    this.error,
    this.selectedBusId,
    this.selectedDate,
    this.currentIndex = 0,
  });

  BusHistoryState copyWith({
    List<Map<String, dynamic>>? locations,
    bool? isLoading,
    String? error,
    String? selectedBusId,
    DateTime? selectedDate,
    int? currentIndex,
  }) {
    return BusHistoryState(
      locations: locations ?? this.locations,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      selectedBusId: selectedBusId ?? this.selectedBusId,
      selectedDate: selectedDate ?? this.selectedDate,
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  /// Get the current location based on currentIndex
  Map<String, dynamic>? get currentLocation {
    if (locations.isEmpty || currentIndex >= locations.length) {
      return null;
    }
    return locations[currentIndex];
  }

  /// Get the timestamp of the current location
  DateTime? get currentTimestamp {
    final location = currentLocation;
    if (location == null) return null;

    try {
      final properties = location['properties'] as Map<String, dynamic>?;
      final timestampStr = properties?['timestamp'] as String?;
      if (timestampStr != null) {
        return DateTime.parse(timestampStr);
      }
    } catch (e) {
      // Invalid timestamp format
    }
    return null;
  }

  /// Get time range for the slider
  DateTimeRange? get timeRange {
    if (locations.isEmpty) return null;

    try {
      final firstProps = locations.first['properties'] as Map<String, dynamic>?;
      final lastProps = locations.last['properties'] as Map<String, dynamic>?;

      final firstTime = firstProps?['timestamp'] as String?;
      final lastTime = lastProps?['timestamp'] as String?;

      if (firstTime != null && lastTime != null) {
        return DateTimeRange(
          start: DateTime.parse(firstTime),
          end: DateTime.parse(lastTime),
        );
      }
    } catch (e) {
      // Invalid data format
    }
    return null;
  }
}

/// Simple DateTimeRange class
class DateTimeRange {
  final DateTime start;
  final DateTime end;

  DateTimeRange({required this.start, required this.end});

  Duration get duration => end.difference(start);
}

/// Bus history notifier using Riverpod 3.0 Notifier pattern
class BusHistoryNotifier extends Notifier<BusHistoryState> {
  late final TokenManager _tokenManager;
  late final Dio _dio;

  @override
  BusHistoryState build() {
    _tokenManager = ref.watch(tokenManagerProvider);
    _dio = Dio(BaseOptions(baseUrl: ApiConfig.baseUrl));
    return BusHistoryState();
  }

  /// Fetch historical locations for a specific bus and date
  Future<void> fetchHistory(String busId, DateTime date) async {
    state = state.copyWith(
      isLoading: true,
      error: null,
      selectedBusId: busId,
      selectedDate: date,
    );

    try {
      final token = await _tokenManager.getToken();
      if (token == null) {
        throw Exception('Not authenticated');
      }

      // Format date as YYYY-MM-DD
      final dateStr = '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';

      if (kDebugMode) {
        print('Fetching history for bus: $busId, date: $dateStr');
      }

      final response = await _dio.get(
        '/api/v1/locations/history/',
        queryParameters: {
          'bus_id': busId,
          'date': dateStr,
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (kDebugMode) {
        print('History response status: ${response.statusCode}');
        print('History response data: ${response.data}');
      }

      if (response.statusCode == 200) {
        final geoJson = response.data as Map<String, dynamic>;
        final features = (geoJson['features'] as List<dynamic>?)
                ?.map((e) => e as Map<String, dynamic>)
                .toList() ??
            [];

        if (kDebugMode) {
          print('Fetched ${features.length} location points');
        }

        state = state.copyWith(
          locations: features,
          isLoading: false,
          currentIndex: 0,
        );
      } else {
        throw Exception('Failed to fetch history: ${response.statusCode}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching history: $e');
      }
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  /// Set the playback position by index
  void setIndex(int index) {
    if (index >= 0 && index < state.locations.length) {
      state = state.copyWith(currentIndex: index);
    }
  }

  /// Set the playback position by timestamp
  void setTimestamp(DateTime timestamp) {
    // Find the closest location to the given timestamp
    int closestIndex = 0;
    Duration minDifference = const Duration(days: 1);

    for (int i = 0; i < state.locations.length; i++) {
      try {
        final location = state.locations[i];
        final properties = location['properties'] as Map<String, dynamic>?;
        final timestampStr = properties?['timestamp'] as String?;

        if (timestampStr != null) {
          final locationTime = DateTime.parse(timestampStr);
          final difference = (locationTime.difference(timestamp)).abs();

          if (difference < minDifference) {
            minDifference = difference;
            closestIndex = i;
          }
        }
      } catch (e) {
        continue;
      }
    }

    state = state.copyWith(currentIndex: closestIndex);
  }

  /// Clear history data
  void clearHistory() {
    state = BusHistoryState();
  }
}

/// Bus history provider using Riverpod 3.0 NotifierProvider
final busHistoryProvider = NotifierProvider<BusHistoryNotifier, BusHistoryState>(() {
  return BusHistoryNotifier();
});
