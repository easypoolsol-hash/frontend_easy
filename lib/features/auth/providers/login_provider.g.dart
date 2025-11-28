// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Login notifier using Firebase Auth (industry standard, 100% secure)

@ProviderFor(LoginNotifier)
const loginProvider = LoginNotifierProvider._();

/// Login notifier using Firebase Auth (industry standard, 100% secure)
final class LoginNotifierProvider
    extends $NotifierProvider<LoginNotifier, AsyncValue<LoginState>> {
  /// Login notifier using Firebase Auth (industry standard, 100% secure)
  const LoginNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginNotifierHash();

  @$internal
  @override
  LoginNotifier create() => LoginNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<LoginState> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<LoginState>>(value),
    );
  }
}

String _$loginNotifierHash() => r'6f83412325c3c2206c4e909a8687fe28b9cd1482';

/// Login notifier using Firebase Auth (industry standard, 100% secure)

abstract class _$LoginNotifier extends $Notifier<AsyncValue<LoginState>> {
  AsyncValue<LoginState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<LoginState>, AsyncValue<LoginState>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<LoginState>, AsyncValue<LoginState>>,
              AsyncValue<LoginState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
