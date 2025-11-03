// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_report_filter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for attendance report filter state

@ProviderFor(AttendanceReportFilterNotifier)
const attendanceReportFilterProvider =
    AttendanceReportFilterNotifierProvider._();

/// Provider for attendance report filter state
final class AttendanceReportFilterNotifierProvider
    extends
        $NotifierProvider<
          AttendanceReportFilterNotifier,
          AttendanceReportFilter
        > {
  /// Provider for attendance report filter state
  const AttendanceReportFilterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceReportFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceReportFilterNotifierHash();

  @$internal
  @override
  AttendanceReportFilterNotifier create() => AttendanceReportFilterNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AttendanceReportFilter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AttendanceReportFilter>(value),
    );
  }
}

String _$attendanceReportFilterNotifierHash() =>
    r'95b4dbac7ac2c780482317902649cd95b4edbcd8';

/// Provider for attendance report filter state

abstract class _$AttendanceReportFilterNotifier
    extends $Notifier<AttendanceReportFilter> {
  AttendanceReportFilter build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AttendanceReportFilter, AttendanceReportFilter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AttendanceReportFilter, AttendanceReportFilter>,
              AttendanceReportFilter,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
