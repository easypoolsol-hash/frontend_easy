import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_refresh_provider.g.dart';

/// Auto-refresh provider for dashboard
/// Triggers refresh every 10 seconds (matches backend cache TTL)
@riverpod
class AutoRefresh extends _$AutoRefresh {
  Timer? _timer;
  static const refreshInterval = Duration(seconds: 10);

  @override
  DateTime build() {
    // Cleanup timer on dispose
    ref.onDispose(() {
      _timer?.cancel();
    });

    // Start periodic refresh
    _startTimer();

    return DateTime.now();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(refreshInterval, (timer) {
      state = DateTime.now();
    });
  }

  void forceRefresh() {
    state = DateTime.now();
  }
}
