import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/core/config/api_config.dart';
import 'package:frontend_easy/features/school/presentation/widgets/attendance_report_filter.dart';
import 'package:frontend_easy/features/school/presentation/widgets/report_download_button.dart';
import 'package:url_launcher/url_launcher.dart';

/// Report Download Service
/// Handles downloading attendance reports in various formats
/// Web-only: Opens download URL in browser, backend sets Content-Disposition header
class ReportDownloadService {
  /// Downloads an attendance report with the specified filter and format
  /// Backend returns file with proper headers, browser auto-downloads
  /// Returns true if download was initiated successfully
  Future<bool> downloadAttendanceReport({
    required AttendanceReportFilter filter,
    required ReportFormat format,
  }) async {
    try {
      // Build query parameters from filter
      final params = filter.toQueryParams();
      final startDate = params['start_date'] as String?;
      final endDate = params['end_date'] as String?;
      final busNumber = params['bus_number'] as String?;
      final studentQuery = params['student_query'] as String?;

      // Build download URL with query parameters
      final downloadUrl = Uri.parse('${ApiConfig.baseUrl}/api/v1/reports/attendance/').replace(
        queryParameters: {
          if (startDate != null) 'start_date': startDate,
          if (endDate != null) 'end_date': endDate,
          if (busNumber != null) 'bus_number': busNumber,
          if (studentQuery != null) 'student_query': studentQuery,
          'format': format.extension,
        },
      );

      // Launch URL in browser - browser will handle download
      // Backend must set: Content-Disposition: attachment; filename="report.xlsx"
      if (await canLaunchUrl(downloadUrl)) {
        await launchUrl(downloadUrl, mode: LaunchMode.platformDefault);
        return true;
      }

      return false;
    } catch (e) {
      rethrow;
    }
  }
}

/// Provider for ReportDownloadService
final reportDownloadServiceProvider = Provider<ReportDownloadService>((ref) {
  return ReportDownloadService();
});
