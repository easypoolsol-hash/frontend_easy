import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A timeline slider that visually shows data gaps
///
/// Single Responsibility: Render a time-based slider with visual indicators
/// for periods where data is missing
class TimelineSliderWithGaps extends StatelessWidget {
  /// All location data points with timestamps
  final List<Map<String, dynamic>> locations;

  /// Start time of the timeline
  final DateTime startTime;

  /// End time of the timeline
  final DateTime endTime;

  /// Current timestamp position
  final DateTime currentTimestamp;

  /// Callback when user changes slider position
  final void Function(DateTime timestamp) onChanged;

  /// Color for segments with data (default: blue)
  final Color dataColor;

  /// Color for segments without data (default: gray)
  final Color gapColor;

  /// Minimum gap duration to show as a visual gap (default: 5 minutes)
  final Duration minimumGapDuration;

  /// Show GPS points only mode (collapse gaps in timeline)
  final bool showGpsPointsOnly;

  const TimelineSliderWithGaps({
    required this.locations,
    required this.startTime,
    required this.endTime,
    required this.currentTimestamp,
    required this.onChanged,
    this.dataColor = Colors.blue,
    this.gapColor = Colors.grey,
    this.minimumGapDuration = const Duration(minutes: 5),
    this.showGpsPointsOnly = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Convert UTC times to IST for display
    final istStartTime = startTime.toLocal();
    final istCurrentTime = currentTimestamp.toLocal();
    final istEndTime = endTime.toLocal();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Time labels
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat('HH:mm:ss').format(istStartTime),
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Column(
              children: [
                Text(
                  DateFormat('HH:mm:ss').format(istCurrentTime),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                if (showGpsPointsOnly)
                  Text(
                    'Point ${_findCurrentPointIndex() + 1} of ${locations.length}',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
              ],
            ),
            Text(
              DateFormat('HH:mm:ss').format(istEndTime),
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        const SizedBox(height: 8),

        // Visual timeline with gaps
        Stack(
          children: [
            // Background track showing gaps (only in timeline mode)
            if (!showGpsPointsOnly) _buildGapVisualization(context)
            else _buildPointsOnlyTrack(context),

            // Slider on top
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 8,
                activeTrackColor: Colors.transparent, // Use custom track below
                inactiveTrackColor: Colors.transparent,
                thumbColor: Theme.of(context).colorScheme.primary,
                overlayColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
              ),
              child: Slider(
                value: showGpsPointsOnly ? _pointIndexToSliderValue() : _timestampToSliderValue(currentTimestamp),
                min: 0,
                max: 1,
                onChanged: (value) {
                  if (showGpsPointsOnly) {
                    final pointIndex = _sliderValueToPointIndex(value);
                    final timestamp = _pointIndexToTimestamp(pointIndex);
                    if (timestamp != null) {
                      onChanged(timestamp);
                    }
                  } else {
                    final timestamp = _sliderValueToTimestamp(value);
                    onChanged(timestamp);
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Build visual representation of data gaps
  Widget _buildGapVisualization(BuildContext context) {
    final gaps = _findDataGaps();

    return LayoutBuilder(
      builder: (context, constraints) {
        final totalDuration = endTime.difference(startTime).inSeconds.toDouble();
        final trackWidth = constraints.maxWidth;

        return SizedBox(
          height: 8,
          child: Stack(
            children: [
              // Background - assume all data exists (solid blue)
              Container(
                height: 8,
                decoration: BoxDecoration(
                  color: dataColor,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),

              // Overlay gaps in light grey
              ...gaps.map((gap) {
                final gapStart = gap['start'] as DateTime;
                final gapEnd = gap['end'] as DateTime;

                final startOffset = gapStart.difference(startTime).inSeconds / totalDuration;
                final gapDuration = gapEnd.difference(gapStart).inSeconds / totalDuration;

                return Positioned(
                  left: trackWidth * startOffset,
                  width: trackWidth * gapDuration,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: gapColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                );
              }),
            ],
          ),
        );
      },
    );
  }

  /// Find gaps in the data (periods with no location updates)
  List<Map<String, DateTime>> _findDataGaps() {
    if (locations.isEmpty) {
      return [
        {'start': startTime, 'end': endTime}
      ];
    }

    final gaps = <Map<String, DateTime>>[];
    DateTime? lastTimestamp;

    for (final location in locations) {
      try {
        final properties = location['properties'] as Map<String, dynamic>?;
        final timestampStr = properties?['timestamp'] as String?;

        if (timestampStr != null) {
          final timestamp = DateTime.parse(timestampStr);

          // Check for gap from last timestamp
          if (lastTimestamp != null) {
            final gap = timestamp.difference(lastTimestamp);
            if (gap > minimumGapDuration) {
              gaps.add({
                'start': lastTimestamp,
                'end': timestamp,
              });
            }
          } else {
            // Gap from start to first data point
            final gap = timestamp.difference(startTime);
            if (gap > minimumGapDuration) {
              gaps.add({
                'start': startTime,
                'end': timestamp,
              });
            }
          }

          lastTimestamp = timestamp;
        }
      } catch (e) {
        continue;
      }
    }

    // Gap from last data point to end
    if (lastTimestamp != null) {
      final gap = endTime.difference(lastTimestamp);
      if (gap > minimumGapDuration) {
        gaps.add({
          'start': lastTimestamp,
          'end': endTime,
        });
      }
    }

    return gaps;
  }

  /// Convert timestamp to slider value (0.0 to 1.0)
  double _timestampToSliderValue(DateTime timestamp) {
    final totalDuration = endTime.difference(startTime).inSeconds.toDouble();
    if (totalDuration <= 0) return 0;

    final elapsed = timestamp.difference(startTime).inSeconds.toDouble();
    return (elapsed / totalDuration).clamp(0.0, 1.0);
  }

  /// Convert slider value (0.0 to 1.0) to timestamp
  DateTime _sliderValueToTimestamp(double value) {
    final totalDuration = endTime.difference(startTime).inSeconds;
    final elapsed = (totalDuration * value).round();
    return startTime.add(Duration(seconds: elapsed));
  }

  /// Build solid track for GPS points only mode
  Widget _buildPointsOnlyTrack(BuildContext context) {
    return Container(
      height: 8,
      decoration: BoxDecoration(
        color: dataColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  /// Find current point index based on current timestamp
  int _findCurrentPointIndex() {
    for (int i = 0; i < locations.length; i++) {
      try {
        final properties = locations[i]['properties'] as Map<String, dynamic>?;
        final timestampStr = properties?['timestamp'] as String?;
        if (timestampStr != null) {
          final timestamp = DateTime.parse(timestampStr);
          if (timestamp.isAtSameMomentAs(currentTimestamp) ||
              timestamp.isAfter(currentTimestamp)) {
            return i;
          }
        }
      } catch (e) {
        continue;
      }
    }
    return locations.isEmpty ? 0 : locations.length - 1;
  }

  /// Convert point index to slider value (0.0 to 1.0)
  /// In points mode, slider represents point indices, not time
  double _pointIndexToSliderValue() {
    if (locations.isEmpty) return 0;
    final index = _findCurrentPointIndex();
    final maxIndex = math.max(1, locations.length - 1);
    return index / maxIndex;
  }

  /// Convert slider value to point index
  /// In points mode, slider value directly maps to point index
  int _sliderValueToPointIndex(double value) {
    if (locations.isEmpty) return 0;
    final index = (value * (locations.length - 1)).round();
    return index.clamp(0, locations.length - 1);
  }

  /// Get timestamp for a specific point index
  DateTime? _pointIndexToTimestamp(int index) {
    if (index < 0 || index >= locations.length) return null;
    try {
      final properties = locations[index]['properties'] as Map<String, dynamic>?;
      final timestampStr = properties?['timestamp'] as String?;
      if (timestampStr != null) {
        return DateTime.parse(timestampStr);
      }
    } catch (e) {
      // Invalid timestamp
    }
    return null;
  }
}
