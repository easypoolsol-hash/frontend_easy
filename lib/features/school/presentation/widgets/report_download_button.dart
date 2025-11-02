import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend_easy/features/school/presentation/widgets/attendance_report_filter.dart';
import 'package:frontend_easy/features/school/services/report_download_service.dart';

/// Report format options
enum ReportFormat {
  /// Excel format (.xlsx)
  excel,

  /// PDF format (.pdf)
  pdf,
}

/// Extension for ReportFormat to get display properties
extension ReportFormatExtension on ReportFormat {
  /// Display name for the format
  String get displayName {
    switch (this) {
      case ReportFormat.excel:
        return 'Excel';
      case ReportFormat.pdf:
        return 'PDF';
    }
  }

  /// Icon for the format
  IconData get icon {
    switch (this) {
      case ReportFormat.excel:
        return Icons.table_chart_rounded;
      case ReportFormat.pdf:
        return Icons.picture_as_pdf_rounded;
    }
  }

  /// File extension
  String get extension {
    switch (this) {
      case ReportFormat.excel:
        return 'xlsx';
      case ReportFormat.pdf:
        return 'pdf';
    }
  }

  /// Color for the format
  Color get color {
    switch (this) {
      case ReportFormat.excel:
        return const Color(0xFF217346); // Excel green
      case ReportFormat.pdf:
        return const Color(0xFFD32F2F); // PDF red
    }
  }
}

/// Report Download Button Widget
/// Material Design 3 button with Excel/PDF format selection
class ReportDownloadButton extends ConsumerStatefulWidget {
  /// Creates a report download button
  const ReportDownloadButton({super.key});

  @override
  ConsumerState<ReportDownloadButton> createState() => _ReportDownloadButtonState();
}

class _ReportDownloadButtonState extends ConsumerState<ReportDownloadButton> {
  bool _isDownloading = false;

  Future<void> _showFormatSelectionDialog() async {
    final filter = ref.read(attendanceReportFilterProvider);

    if (!filter.hasFilters) {
      _showNoFiltersDialog();
      return;
    }

    final format = await showDialog<ReportFormat>(
      context: context,
      builder: (context) => const _FormatSelectionDialog(),
    );

    if (format != null && mounted) {
      await _downloadReport(format);
    }
  }

  void _showNoFiltersDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.filter_alt_off_rounded, size: 48),
        title: const Text('No Filters Applied'),
        content: const Text(
          'Please apply at least one filter (date range, bus number, or student) before downloading a report.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<void> _downloadReport(ReportFormat format) async {
    setState(() {
      _isDownloading = true;
    });

    try {
      final filter = ref.read(attendanceReportFilterProvider);
      final service = ref.read(reportDownloadServiceProvider);

      final success = await service.downloadAttendanceReport(
        filter: filter,
        format: format,
      );

      if (mounted) {
        if (success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: Theme.of(context).colorScheme.onInverseSurface,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Report downloaded successfully (${format.displayName})',
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.green.shade700,
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 3),
            ),
          );
        } else {
          _showErrorDialog('Download failed. Please try again.');
        }
      }
    } catch (e) {
      if (mounted) {
        _showErrorDialog('Error: ${e.toString()}');
      }
    } finally {
      if (mounted) {
        setState(() {
          _isDownloading = false;
        });
      }
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          Icons.error_outline_rounded,
          size: 48,
          color: Theme.of(context).colorScheme.error,
        ),
        title: const Text('Download Failed'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final filter = ref.watch(attendanceReportFilterProvider);

    return FilledButton.icon(
      onPressed: _isDownloading ? null : _showFormatSelectionDialog,
      icon: _isDownloading
          ? SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  theme.colorScheme.onPrimary,
                ),
              ),
            )
          : const Icon(Icons.download_rounded),
      label: Text(_isDownloading ? 'Downloading...' : 'Download Report'),
      style: FilledButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: filter.hasFilters ? 2 : 0,
      ),
    );
  }
}

/// Format Selection Dialog
class _FormatSelectionDialog extends StatelessWidget {
  const _FormatSelectionDialog();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(
                  Icons.file_download_rounded,
                  color: theme.colorScheme.primary,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Text(
                  'Select Report Format',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Excel Option
            _FormatOptionCard(
              format: ReportFormat.excel,
              onTap: () => Navigator.of(context).pop(ReportFormat.excel),
            ),
            const SizedBox(height: 12),

            // PDF Option
            _FormatOptionCard(
              format: ReportFormat.pdf,
              onTap: () => Navigator.of(context).pop(ReportFormat.pdf),
            ),
            const SizedBox(height: 24),

            // Cancel Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Cancel'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Format Option Card
class _FormatOptionCard extends StatelessWidget {
  final ReportFormat format;
  final VoidCallback onTap;

  const _FormatOptionCard({
    required this.format,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: theme.colorScheme.outlineVariant,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Icon
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: format.color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                format.icon,
                color: format.color,
                size: 32,
              ),
            ),
            const SizedBox(width: 16),

            // Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    format.displayName,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _getFormatDescription(format),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),

            // Arrow
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  String _getFormatDescription(ReportFormat format) {
    switch (format) {
      case ReportFormat.excel:
        return 'Download as .xlsx spreadsheet (editable)';
      case ReportFormat.pdf:
        return 'Download as .pdf document (read-only)';
    }
  }
}
