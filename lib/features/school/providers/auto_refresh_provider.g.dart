// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_refresh_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Auto-refresh provider for dashboard
/// Triggers refresh every 10 seconds (matches backend cache TTL)

@ProviderFor(AutoRefresh)
const autoRefreshProvider = AutoRefreshProvider._();

/// Auto-refresh provider for dashboard
/// Triggers refresh every 10 seconds (matches backend cache TTL)
final class AutoRefreshProvider
    extends $NotifierProvider<AutoRefresh, DateTime> {
  /// Auto-refresh provider for dashboard
  /// Triggers refresh every 10 seconds (matches backend cache TTL)
  const AutoRefreshProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'autoRefreshProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$autoRefreshHash();

  @$internal
  @override
  AutoRefresh create() => AutoRefresh();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime>(value),
    );
  }
}

String _$autoRefreshHash() => r'80f7c491bdbd9e95ab78b951d012d664e2f48f0e';

/// Auto-refresh provider for dashboard
/// Triggers refresh every 10 seconds (matches backend cache TTL)

abstract class _$AutoRefresh extends $Notifier<DateTime> {
  DateTime build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DateTime, DateTime>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime, DateTime>,
              DateTime,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
