import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

/// Attendance Report Filter Model
/// Holds all filter criteria for generating attendance reports
class AttendanceReportFilter {
  /// Date range for the report
  final DateTimeRange? dateRange;

  /// Bus numbers to filter by (multi-select)
  final List<String> busNumbers;

  /// Student IDs to filter by (multi-select)
  final List<String> studentIds;

  /// Creates an attendance report filter
  const AttendanceReportFilter({
    this.dateRange,
    this.busNumbers = const [],
    this.studentIds = const [],
  });

  /// Creates a copy of this filter with updated values
  AttendanceReportFilter copyWith({
    DateTimeRange? dateRange,
    List<String>? busNumbers,
    List<String>? studentIds,
  }) {
    return AttendanceReportFilter(
      dateRange: dateRange ?? this.dateRange,
      busNumbers: busNumbers ?? this.busNumbers,
      studentIds: studentIds ?? this.studentIds,
    );
  }

  /// Returns true if any filter is active
  bool get hasFilters =>
      dateRange != null || busNumbers.isNotEmpty || studentIds.isNotEmpty;

  /// Converts filter to API query parameters
  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};

    if (dateRange != null) {
      params['start_date'] = dateRange!.start.toIso8601String().split('T')[0];
      params['end_date'] = dateRange!.end.toIso8601String().split('T')[0];
    }

    if (busNumbers.isNotEmpty) {
      params['bus_numbers'] = busNumbers.join(',');
    }

    if (studentIds.isNotEmpty) {
      params['student_ids'] = studentIds.join(',');
    }

    return params;
  }
}

/// Provider for attendance report filter state
final attendanceReportFilterProvider =
    StateProvider<AttendanceReportFilter>((ref) => const AttendanceReportFilter());

/// Attendance Report Filter Widget
/// Beautiful Material Design 3 UI with table_calendar and dropdown_search
class AttendanceReportFilterWidget extends ConsumerStatefulWidget {
  /// Creates an attendance report filter widget
  const AttendanceReportFilterWidget({super.key});

  @override
  ConsumerState<AttendanceReportFilterWidget> createState() =>
      _AttendanceReportFilterWidgetState();
}

class _AttendanceReportFilterWidgetState
    extends ConsumerState<AttendanceReportFilterWidget> {
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  DateTime _focusedDay = DateTime.now();
  bool _showCalendar = false;

  // Mock data for dropdowns (will be replaced with API later)
  final List<String> _mockBuses = [
    'BUS-001',
    'BUS-002',
    'BUS-003',
    'BUS-004',
    'BUS-005',
  ];

  final List<String> _mockStudents = [
    'STD-001 - John Doe',
    'STD-002 - Jane Smith',
    'STD-003 - Michael Brown',
    'STD-004 - Emily Davis',
    'STD-005 - Chris Wilson',
  ];

  void _clearFilters() {
    setState(() {
      _rangeStart = null;
      _rangeEnd = null;
      _focusedDay = DateTime.now();
      _showCalendar = false;
    });
    ref.read(attendanceReportFilterProvider.notifier).state =
        const AttendanceReportFilter();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;

      if (_rangeStart == null) {
        // First selection - start date
        _rangeStart = selectedDay;
        _rangeEnd = null;
      } else if (_rangeEnd == null && selectedDay.isAfter(_rangeStart!)) {
        // Second selection - end date (must be after start)
        _rangeEnd = selectedDay;

        // Update filter
        ref.read(attendanceReportFilterProvider.notifier).state =
            ref.read(attendanceReportFilterProvider).copyWith(
                  dateRange: DateTimeRange(start: _rangeStart!, end: _rangeEnd!),
                );

        // Close calendar after complete selection
        _showCalendar = false;
      } else {
        // Reset if invalid selection (e.g., end before start)
        _rangeStart = selectedDay;
        _rangeEnd = null;
      }
    });
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
          mainAxisSize: MainAxisSize.min,
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

            // Compact Date Range Selector - Two side-by-side buttons
            Row(
              children: [
                // Start Date Button
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      setState(() {
                        _rangeStart = null;
                        _rangeEnd = null;
                        _showCalendar = !_showCalendar;
                      });
                    },
                    icon: Icon(
                      Icons.calendar_today_rounded,
                      size: 18,
                      color: theme.colorScheme.primary,
                    ),
                    label: Text(
                      _rangeStart != null
                          ? _formatDate(_rangeStart!)
                          : 'Start Date',
                      style: TextStyle(
                        fontWeight: _rangeStart != null
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.arrow_forward, size: 16),
                const SizedBox(width: 8),
                // End Date Button
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      if (_rangeStart == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please select start date first'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      } else {
                        setState(() => _showCalendar = !_showCalendar);
                      }
                    },
                    icon: Icon(
                      Icons.event_rounded,
                      size: 18,
                      color: _rangeEnd != null
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                    label: Text(
                      _rangeEnd != null ? _formatDate(_rangeEnd!) : 'End Date',
                      style: TextStyle(
                        fontWeight:
                            _rangeEnd != null ? FontWeight.w600 : FontWeight.normal,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Beautiful Compact Calendar (table_calendar library)
            if (_showCalendar) ...[
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.colorScheme.outline.withValues(alpha: 0.3),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TableCalendar<DateTime>(
                  firstDay: DateTime(2020),
                  lastDay: DateTime.now(),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    // Highlight days in range
                    if (_rangeStart != null && _rangeEnd != null) {
                      return day.isAfter(_rangeStart!.subtract(const Duration(days: 1))) &&
                          day.isBefore(_rangeEnd!.add(const Duration(days: 1)));
                    }
                    return isSameDay(_rangeStart, day);
                  },
                  rangeStartDay: _rangeStart,
                  rangeEndDay: _rangeEnd,
                  calendarFormat: CalendarFormat.month,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  // Beautiful header with year/month selector
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: theme.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    leftChevronIcon: Icon(
                      Icons.chevron_left,
                      color: theme.colorScheme.primary,
                    ),
                    rightChevronIcon: Icon(
                      Icons.chevron_right,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  // Beautiful day cells with Material Design 3 colors
                  calendarStyle: CalendarStyle(
                    // Selected day (start)
                    selectedDecoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    selectedTextStyle: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                    // Range start
                    rangeStartDecoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    rangeStartTextStyle: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                    // Range end
                    rangeEndDecoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    rangeEndTextStyle: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                    // Days within range
                    withinRangeDecoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                      shape: BoxShape.circle,
                    ),
                    withinRangeTextStyle: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                    // Today
                    todayDecoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      shape: BoxShape.circle,
                    ),
                    todayTextStyle: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                    // Hide outside month days
                    outsideDaysVisible: false,
                  ),
                  onDaySelected: _onDaySelected,
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
                ),
              ),
            ],

            const SizedBox(height: 12),

            // Bus Multi-Select Dropdown
            DropdownSearch<String>.multiSelection(
              items: (filter, infiniteScrollProps) => _mockBuses,
              selectedItems: filter.busNumbers,
              popupProps: PopupPropsMultiSelection.menu(
                showSearchBox: true,
                searchFieldProps: TextFieldProps(
                  decoration: InputDecoration(
                    hintText: 'Search buses...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                menuProps: const MenuProps(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  elevation: 4,
                ),
                itemBuilder: (context, busNumber, isSelected, isDisabled) {
                  return ListTile(
                    leading: Icon(
                      Icons.directions_bus_rounded,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(busNumber),
                    trailing: isSelected
                        ? Icon(
                            Icons.check_circle,
                            color: theme.colorScheme.primary,
                          )
                        : null,
                  );
                },
              ),
              dropdownBuilder: (context, selectedItems) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.directions_bus_rounded,
                        color: theme.colorScheme.primary,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          selectedItems.isEmpty
                              ? 'Select Buses'
                              : '${selectedItems.length} bus(es) selected',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: selectedItems.isNotEmpty
                                ? FontWeight.w600
                                : FontWeight.normal,
                            color: selectedItems.isEmpty
                                ? theme.colorScheme.onSurfaceVariant
                                : theme.colorScheme.onSurface,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ],
                  ),
                );
              },
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              onChanged: (selectedBuses) {
                ref.read(attendanceReportFilterProvider.notifier).state =
                    filter.copyWith(busNumbers: selectedBuses);
              },
            ),

            const SizedBox(height: 12),

            // Student Multi-Select Dropdown
            DropdownSearch<String>.multiSelection(
              items: (filter, infiniteScrollProps) => _mockStudents,
              selectedItems: filter.studentIds,
              popupProps: PopupPropsMultiSelection.menu(
                showSearchBox: true,
                searchFieldProps: TextFieldProps(
                  decoration: InputDecoration(
                    hintText: 'Search students...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                menuProps: const MenuProps(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  elevation: 4,
                ),
                itemBuilder: (context, studentInfo, isSelected, isDisabled) {
                  return ListTile(
                    leading: Icon(
                      Icons.person_rounded,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(studentInfo),
                    trailing: isSelected
                        ? Icon(
                            Icons.check_circle,
                            color: theme.colorScheme.primary,
                          )
                        : null,
                  );
                },
              ),
              dropdownBuilder: (context, selectedItems) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_search_rounded,
                        color: theme.colorScheme.primary,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          selectedItems.isEmpty
                              ? 'Select Students'
                              : '${selectedItems.length} student(s) selected',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: selectedItems.isNotEmpty
                                ? FontWeight.w600
                                : FontWeight.normal,
                            color: selectedItems.isEmpty
                                ? theme.colorScheme.onSurfaceVariant
                                : theme.colorScheme.onSurface,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ],
                  ),
                );
              },
              decoratorProps: DropDownDecoratorProps(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              onChanged: (selectedStudents) {
                ref.read(attendanceReportFilterProvider.notifier).state =
                    filter.copyWith(studentIds: selectedStudents);
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

    if (filter.busNumbers.isNotEmpty) {
      parts.add('${filter.busNumbers.length} bus(es)');
    }

    if (filter.studentIds.isNotEmpty) {
      parts.add('${filter.studentIds.length} student(s)');
    }

    return 'Report will include: ${parts.join(' • ')}';
  }
}
