import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Auto-refresh notifier for dashboard
/// Triggers refresh every 30 seconds
class AutoRefreshNotifier extends StateNotifier<DateTime> {
  Timer? _timer;
  final Duration refreshInterval;

  AutoRefreshNotifier({
    this.refreshInterval = const Duration(seconds: 30),
  }) : super(DateTime.now()) {
    _startTimer();
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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

/// Provider for auto-refresh functionality
final autoRefreshProvider = StateNotifierProvider<AutoRefreshNotifier, DateTime>((ref) {
  return AutoRefreshNotifier();
});
