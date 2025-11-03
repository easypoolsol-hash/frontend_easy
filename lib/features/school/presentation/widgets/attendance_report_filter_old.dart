import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Attendance Report Filter Model
/// Holds all filter criteria for generating attendance reports
class AttendanceReportFilter {
  /// Date range for the report
  final DateTimeRange? dateRange;

  /// Bus number to filter by
  final String? busNumber;

  /// Student ID or name search query
  final String? studentQuery;

  /// Creates an attendance report filter
  const AttendanceReportFilter({
    this.dateRange,
    this.busNumber,
    this.studentQuery,
  });

  /// Creates a copy of this filter with updated values
  AttendanceReportFilter copyWith({
    DateTimeRange? dateRange,
    String? busNumber,
    String? studentQuery,
  }) {
    return AttendanceReportFilter(
      dateRange: dateRange ?? this.dateRange,
      busNumber: busNumber ?? this.busNumber,
      studentQuery: studentQuery ?? this.studentQuery,
    );
  }

  /// Returns true if any filter is active
  bool get hasFilters =>
      dateRange != null || busNumber != null || (studentQuery?.isNotEmpty ?? false);

  /// Converts filter to API query parameters
  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};

    if (dateRange != null) {
      params['start_date'] = dateRange!.start.toIso8601String().split('T')[0];
      params['end_date'] = dateRange!.end.toIso8601String().split('T')[0];
    }

    if (busNumber != null && busNumber!.isNotEmpty) {
      params['bus_number'] = busNumber;
    }

    if (studentQuery != null && studentQuery!.isNotEmpty) {
      params['student_query'] = studentQuery;
    }

    return params;
  }
}

/// Provider for attendance report filter state
final attendanceReportFilterProvider =
    StateProvider<AttendanceReportFilter>((ref) => const AttendanceReportFilter());

/// Attendance Report Filter Widget
/// Material Design 3 filter UI with date range picker, bus selection, and student search
class AttendanceReportFilterWidget extends ConsumerStatefulWidget {
  /// Creates an attendance report filter widget
  const AttendanceReportFilterWidget({super.key});

  @override
  ConsumerState<AttendanceReportFilterWidget> createState() =>
      _AttendanceReportFilterWidgetState();
}

class _AttendanceReportFilterWidgetState
    extends ConsumerState<AttendanceReportFilterWidget> {
  final _studentSearchController = TextEditingController();
  final _busNumberController = TextEditingController();

  @override
  void dispose() {
    _studentSearchController.dispose();
    _busNumberController.dispose();
    super.dispose();
  }

  Future<void> _selectDateRange(BuildContext context) async {
    final currentFilter = ref.read(attendanceReportFilterProvider);
    final now = DateTime.now();

    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: now,
      initialDateRange: currentFilter.dateRange ??
          DateTimeRange(
            start: now.subtract(const Duration(days: 7)),
            end: now,
          ),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: const Color(0xFFE6A800),
                ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      ref.read(attendanceReportFilterProvider.notifier).state =
          currentFilter.copyWith(dateRange: picked);
    }
  }

  void _clearFilters() {
    _studentSearchController.clear();
    _busNumberController.clear();
    ref.read(attendanceReportFilterProvider.notifier).state =
        const AttendanceReportFilter();
  }

  @override
  Widget build(BuildContext context) {
    final filter = ref.watch(attendanceReportFilterProvider);
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(
                  Icons.filter_list_rounded,
                  color: theme.colorScheme.primary,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'Report Filters',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                if (filter.hasFilters)
                  TextButton.icon(
                    onPressed: _clearFilters,
                    icon: const Icon(Icons.clear_rounded, size: 18),
                    label: const Text('Clear'),
                    style: TextButton.styleFrom(
                      foregroundColor: theme.colorScheme.error,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 16),

            // Date Range Picker
            InkWell(
              onTap: () => _selectDateRange(context),
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.colorScheme.outline.withValues(alpha: 0.5),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      size: 20,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Date Range',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            filter.dateRange != null
                                ? '${_formatDate(filter.dateRange!.start)} - ${_formatDate(filter.dateRange!.end)}'
                                : 'Select date range',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: filter.dateRange != null
                                  ? FontWeight.w500
                                  : FontWeight.normal,
                              color: filter.dateRange != null
                                  ? theme.colorScheme.onSurface
                                  : theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Bus Number Field
            TextField(
              controller: _busNumberController,
              decoration: InputDecoration(
                labelText: 'Bus Number',
                hintText: 'e.g., BUS-001',
                prefixIcon: Icon(
                  Icons.directions_bus_rounded,
                  color: theme.colorScheme.primary,
                ),
                suffixIcon: _busNumberController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear_rounded),
                        onPressed: () {
                          _busNumberController.clear();
                          ref
                              .read(attendanceReportFilterProvider.notifier)
                              .state = filter.copyWith(busNumber: '');
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: (value) {
                ref.read(attendanceReportFilterProvider.notifier).state =
                    filter.copyWith(busNumber: value);
              },
            ),
            const SizedBox(height: 12),

            // Student Search Field
            TextField(
              controller: _studentSearchController,
              decoration: InputDecoration(
                labelText: 'Student ID or Name',
                hintText: 'Search by student ID or name',
                prefixIcon: Icon(
                  Icons.person_search_rounded,
                  color: theme.colorScheme.primary,
                ),
                suffixIcon: _studentSearchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear_rounded),
                        onPressed: () {
                          _studentSearchController.clear();
                          ref
                              .read(attendanceReportFilterProvider.notifier)
                              .state = filter.copyWith(studentQuery: '');
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: (value) {
                ref.read(attendanceReportFilterProvider.notifier).state =
                    filter.copyWith(studentQuery: value);
              },
            ),

            // Filter Summary
            if (filter.hasFilters) ...[
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      size: 16,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _getFilterSummary(filter),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  String _getFilterSummary(AttendanceReportFilter filter) {
    final parts = <String>[];

    if (filter.dateRange != null) {
      final days = filter.dateRange!.duration.inDays + 1;
      parts.add('$days days');
    }

    if (filter.busNumber != null && filter.busNumber!.isNotEmpty) {
      parts.add('Bus: ${filter.busNumber}');
    }

    if (filter.studentQuery != null && filter.studentQuery!.isNotEmpty) {
      parts.add('Student: ${filter.studentQuery}');
    }

    return 'Report will include: ${parts.join(' • ')}';
  }
}
