// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_monitor.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Health monitor - checks backend connectivity
///
/// Pattern: Periodic polling (30s) to detect issues
/// Updates SystemHealth state for UI consumption

@ProviderFor(HealthMonitor)
const healthMonitorProvider = HealthMonitorProvider._();

/// Health monitor - checks backend connectivity
///
/// Pattern: Periodic polling (30s) to detect issues
/// Updates SystemHealth state for UI consumption
final class HealthMonitorProvider
    extends $NotifierProvider<HealthMonitor, SystemHealth> {
  /// Health monitor - checks backend connectivity
  ///
  /// Pattern: Periodic polling (30s) to detect issues
  /// Updates SystemHealth state for UI consumption
  const HealthMonitorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'healthMonitorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$healthMonitorHash();

  @$internal
  @override
  HealthMonitor create() => HealthMonitor();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SystemHealth value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SystemHealth>(value),
    );
  }
}

String _$healthMonitorHash() => r'6919c688bec5fff541dc0b612a28f3ff1ff591b9';

/// Health monitor - checks backend connectivity
///
/// Pattern: Periodic polling (30s) to detect issues
/// Updates SystemHealth state for UI consumption

abstract class _$HealthMonitor extends $Notifier<SystemHealth> {
  SystemHealth build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SystemHealth, SystemHealth>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SystemHealth, SystemHealth>,
              SystemHealth,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
