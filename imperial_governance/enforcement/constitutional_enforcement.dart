#!/usr/bin/env dart

/// CONSTITUTIONAL ENFORCEMENT SYSTEM - Frontend Easy
/// Runs all detectors in detectors/ folder and reports violations
/// Mirrors bus_kiosk_easy pattern for consistency

import 'dart:io';

void main() async {
  _printHeader();

  // Find all detector files
  final detectorsDir = Directory('imperial_governance/enforcement/detectors');
  final detectorFiles = await _findAllDetectors(detectorsDir);

  if (detectorFiles.isEmpty) {
    print('[ERROR] No detector files found in ${detectorsDir.path}');
    exit(1);
  }

  print('[INFO] Found ${detectorFiles.length} detectors:');
  for (final file in detectorFiles) {
    print('       - ${_getDetectorName(file.path)}');
  }
  print('');

  // Run each detector and collect results
  final results = <DetectorResult>[];

  for (final detectorFile in detectorFiles) {
    final result = await _runDetector(detectorFile);
    results.add(result);
  }

  // Print summary
  _printSummary(results);
}

void _printHeader() {
  print('');
  print('=' * 80);
  print('|          FRONTEND EASY - CONSTITUTIONAL ENFORCEMENT SYSTEM               |');
  print('=' * 80);
  print('');
}

void _printSummary(List<DetectorResult> results) {
  print('');
  print('=' * 80);
  print('|                              SUMMARY                                     |');
  print('=' * 80);
  print('');

  // Calculate totals
  final passedCount = results.where((r) => r.passed).length;
  final failedCount = results.where((r) => !r.passed).length;
  final totalViolations = results.fold(0, (sum, r) => sum + r.violationCount);

  // Print each detector result
  for (final result in results) {
    final status = result.passed ? '[PASS]' : '[FAIL]';
    final violations = result.passed ? '' : ' (${result.violationCount} violations)';
    print('$status ${result.detectorName}$violations');
  }

  print('');
  print('-' * 80);

  // Print totals
  final allPassed = results.every((r) => r.passed);
  if (allPassed) {
    print('[SUCCESS] All $passedCount detectors passed - Zero violations found');
    print('[SUCCESS] Constitutional compliance verified');
    print('=' * 80);
    print('');
    exit(0);
  } else {
    print('[FAILURE] $failedCount of ${results.length} detectors failed');
    print('[FAILURE] Total violations: $totalViolations');
    print('');
    print('[ACTION] Review detector outputs above for specific violations');
    print('[ACTION] Fix all violations before committing');
    print('=' * 80);
    print('');
    exit(1);
  }
}

/// Find all detector .dart files recursively
Future<List<File>> _findAllDetectors(Directory dir) async {
  final files = <File>[];

  if (!dir.existsSync()) {
    return files;
  }

  await for (final entity in dir.list(recursive: true)) {
    if (entity is File && entity.path.endsWith('.dart')) {
      files.add(entity);
    }
  }

  return files;
}

/// Run a single detector file
Future<DetectorResult> _runDetector(File detectorFile) async {
  final detectorName = _getDetectorName(detectorFile.path);

  print('[RUN] ${detectorName}...');

  try {
    final result = await Process.run(
      'dart',
      ['run', detectorFile.path],
    );

    final passed = result.exitCode == 0;
    final output = result.stdout.toString() + result.stderr.toString();

    // Print detector output with indentation
    if (output.isNotEmpty) {
      for (final line in output.split('\n')) {
        if (line.trim().isNotEmpty) {
          print('      $line');
        }
      }
    }

    // Count violations from output
    final violationCount = _countViolations(output);

    if (passed) {
      print('[DONE] $detectorName - PASSED\n');
    } else {
      print('[DONE] $detectorName - FAILED ($violationCount violations)\n');
    }

    return DetectorResult(
      detectorName: detectorName,
      passed: passed,
      violationCount: violationCount,
    );
  } catch (e) {
    print('[ERROR] Failed to run detector: $e\n');
    return DetectorResult(
      detectorName: detectorName,
      passed: false,
      violationCount: 1,
    );
  }
}

/// Extract detector name from file path
String _getDetectorName(String path) {
  final fileName = path.split(Platform.pathSeparator).last;
  return fileName
      .replaceAll('.dart', '')
      .replaceAll('_', ' ')
      .split(' ')
      .map((word) => word[0].toUpperCase() + word.substring(1))
      .join(' ');
}

/// Count violations from detector output
int _countViolations(String output) {
  var count = 0;

  // Look for violation count patterns like "15 violations" or "VIOLATIONS DETECTED: 15"
  final violationPattern = RegExp(r'(\d+)\s+violations?', caseSensitive: false);
  for (final match in violationPattern.allMatches(output)) {
    final numStr = match.group(1);
    if (numStr != null) {
      final num = int.tryParse(numStr) ?? 0;
      if (num > count) {
        count = num;
      }
    }
  }

  // Also look for "VIOLATIONS DETECTED: 15" pattern
  final detectedPattern = RegExp(r'VIOLATIONS\s+DETECTED:\s*(\d+)', caseSensitive: false);
  for (final match in detectedPattern.allMatches(output)) {
    final numStr = match.group(1);
    if (numStr != null) {
      final num = int.tryParse(numStr) ?? 0;
      if (num > count) {
        count = num;
      }
    }
  }

  return count;
}

/// Simple result holder
class DetectorResult {
  final String detectorName;
  final bool passed;
  final int violationCount;

  DetectorResult({
    required this.detectorName,
    required this.passed,
    required this.violationCount,
  });
}
