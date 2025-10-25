import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/models/school_dashboard_summary.dart';
import 'package:frontend_easy/features/school/models/student_movement_summary_individual.dart';
import 'package:frontend_easy/features/school/models/student_status.dart';

/// 🚨 TODO: Replace with actual backend API calls
/// Provider for school dashboard summary statistics
/// Connects to backend API endpoint: GET /api/school/dashboard/summary
final schoolDashboardSummaryProvider = FutureProvider<SchoolDashboardSummary>((ref) async {
  // TODO: Implement actual API call
  // final response = await http.get(Uri.parse('${ApiConfig.baseUrl}/school/dashboard/summary'));
  // return SchoolDashboardSummary.fromJson(json.decode(response.body));

  throw UnimplementedError('Backend API integration required');
});

/// 🚨 TODO: Replace with actual backend API calls
/// Provider for list of all students with movement data
/// Connects to backend API endpoint: GET /api/school/students/movements
final studentMovementListProvider = FutureProvider<List<StudentMovementSummary>>((ref) async {
  // TODO: Implement actual API call
  // final response = await http.get(Uri.parse('${ApiConfig.baseUrl}/school/students/movements'));
  // final List<dynamic> data = json.decode(response.body);
  // return data.map((json) => StudentMovementSummary.fromJson(json)).toList();

  throw UnimplementedError('Backend API integration required');
});

/// 🚨 TODO: Replace with actual backend API calls
/// Provider for filtered students by status
/// Connects to backend API endpoint: GET /api/school/students/movements?status={status}
final studentsByStatusProvider = FutureProvider.family<List<StudentMovementSummary>, StudentStatus?>((ref, status) async {
  // TODO: Implement actual API call
  // final statusParam = status != null ? '?status=${status.status}' : '';
  // final response = await http.get(Uri.parse('${ApiConfig.baseUrl}/school/students/movements$statusParam'));
  // final List<dynamic> data = json.decode(response.body);
  // return data.map((json) => StudentMovementSummary.fromJson(json)).toList();

  throw UnimplementedError('Backend API integration required');
});

/// 🚨 TODO: Replace with actual backend API calls
/// Provider for students requiring attention (sorted by priority)
/// Connects to backend API endpoint: GET /api/school/students/attention
final attentionStudentsProvider = FutureProvider<List<StudentMovementSummary>>((ref) async {
  // TODO: Implement actual API call
  // final response = await http.get(Uri.parse('${ApiConfig.baseUrl}/school/students/attention'));
  // final List<dynamic> data = json.decode(response.body);
  // return data.map((json) => StudentMovementSummary.fromJson(json)).toList();

  throw UnimplementedError('Backend API integration required');
});