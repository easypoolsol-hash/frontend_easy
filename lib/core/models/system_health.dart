/// Google Product Standard - System Health Model
///
/// For new startups: Be honest about status, don't fake metrics
/// Shows real-time connectivity and data freshness

import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_health.freezed.dart';
part 'system_health.g.dart';

/// System health status - honest approach for new products
///
/// - Operational: All systems working, fresh data
/// - Degraded: Using cached data, backend issues
@freezed
sealed class SystemHealth with _$SystemHealth {
  /// All systems operational - fresh data from backend
  const factory SystemHealth.operational() = Operational;

  /// Degraded service - using cached data
  ///
  /// Shows users what's happening without alarming them.
  /// Still functional with cached data.
  const factory SystemHealth.degraded({
    required String userMessage,
    required DateTime lastSuccessfulSync,
  }) = Degraded;

  factory SystemHealth.fromJson(Map<String, dynamic> json) =>
      _$SystemHealthFromJson(json);
}
