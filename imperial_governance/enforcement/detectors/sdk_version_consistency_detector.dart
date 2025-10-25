#!/usr/bin/env dart

library sdk_version_consistency_detector;

import 'dart:io';
import 'package:yaml/yaml.dart';

/// 🔍 SDK VERSION CONSISTENCY DETECTOR
/// Ensures Dart SDK versions are consistent across all pubspec.yaml files
/// Prevents version drift that causes build failures
///
/// CONSTITUTIONAL PRINCIPLE: Consistency Across Codebase
/// - All packages must use the same Dart SDK version
/// - Prevents "version solving failed" errors
/// - Ensures reproducible builds

void main() async {
  print('🔍 SDK VERSION CONSISTENCY DETECTOR');
  print('=' * 80);
  print('');

  final detector = SdkVersionDetector();
  await detector.scan();

  if (detector.violations.isNotEmpty) {
    detector.reportViolations();
    exit(1);
  } else {
    print('✅ All packages use consistent SDK versions');
    print('✅ SDK version: ${detector.expectedSdkVersion}');
    print('');
    exit(0);
  }
}

class SdkVersionDetector {
  final List<SdkVersionViolation> violations = [];
  String expectedSdkVersion = '';

  Future<void> scan() async {
    print('📂 Scanning pubspec.yaml files for SDK version consistency...\n');

    // Find all pubspec.yaml files
    final pubspecFiles = await _findPubspecFiles();

    if (pubspecFiles.isEmpty) {
      print('⚠️  No pubspec.yaml files found');
      return;
    }

    print('Found ${pubspecFiles.length} pubspec.yaml files:\n');

    // Extract SDK versions
    final sdkVersions = <String, List<String>>{};

    for (final pubspecFile in pubspecFiles) {
      final sdkVersion = await _extractSdkVersion(pubspecFile);
      if (sdkVersion != null) {
        sdkVersions.putIfAbsent(sdkVersion, () => []).add(pubspecFile);
        print('  ${_relativePath(pubspecFile)}: $sdkVersion');
      }
    }

    print('');

    // Check for inconsistencies
    if (sdkVersions.isEmpty) {
      print('⚠️  No SDK versions found in pubspec files');
      return;
    }

    if (sdkVersions.length > 1) {
      print('❌ INCONSISTENT SDK VERSIONS DETECTED\n');

      // Use the most common version as expected
      var mostCommon = sdkVersions.entries.first;
      for (final entry in sdkVersions.entries) {
        if (entry.value.length > mostCommon.value.length) {
          mostCommon = entry;
        }
      }

      expectedSdkVersion = mostCommon.key;
      print('Expected SDK version: $expectedSdkVersion (used by ${mostCommon.value.length} files)\n');

      // Report violations
      for (final entry in sdkVersions.entries) {
        if (entry.key != expectedSdkVersion) {
          for (final file in entry.value) {
            violations.add(
              SdkVersionViolation(
                file: file,
                actualVersion: entry.key,
                expectedVersion: expectedSdkVersion,
              ),
            );
          }
        }
      }
    } else {
      expectedSdkVersion = sdkVersions.keys.first;
    }
  }

  Future<List<String>> _findPubspecFiles() async {
    final files = <String>[];

    // For frontend_easy, only scan frontend_easy related directories
    final dirsToScan = ['.', 'packages'];

    for (final dir in dirsToScan) {
      final directory = Directory(dir);
      if (!directory.existsSync()) continue;

      await for (final entity in directory.list(recursive: true)) {
        if (entity is File && entity.path.endsWith('pubspec.yaml')) {
          // Skip test fixtures and build artifacts
          if (!entity.path.contains('test_fixtures') &&
              !entity.path.contains('.dart_tool') &&
              !entity.path.contains('ephemeral')) {
            // Only include files that are within frontend_easy scope
            if (entity.path.contains('frontend_easy') || entity.path.startsWith('./') || entity.path.startsWith('packages/')) {
              files.add(entity.path);
            }
          }
        }
      }
    }

    return files;
  }

  Future<String?> _extractSdkVersion(String pubspecPath) async {
    try {
      final content = await File(pubspecPath).readAsString();
      final yaml = loadYaml(content) as YamlMap;

      final environment = yaml['environment'];
      if (environment is YamlMap) {
        final sdk = environment['sdk'];
        if (sdk != null) {
          return sdk.toString();
        }
      }
    } catch (e) {
      print('⚠️  Error reading $pubspecPath: $e');
    }
    return null;
  }

  String _relativePath(String path) {
    return path.replaceAll(r'\', '/').replaceAll(Directory.current.path.replaceAll(r'\', '/'), '.');
  }

  void reportViolations() {
    print('🚨 SDK VERSION VIOLATIONS');
    print('=' * 80);
    print('');

    for (final violation in violations) {
      print('❌ ${_relativePath(violation.file)}');
      print('   Current: ${violation.actualVersion}');
      print('   Expected: ${violation.expectedVersion}');
      print('');
    }

    print('=' * 80);
    print('📊 SUMMARY:');
    print('   ❌ Violations: ${violations.length}');
    print('');
    print('🔧 HOW TO FIX:');
    print('   Update all pubspec.yaml files to use:');
    print('   environment:');
    print('     sdk: "$expectedSdkVersion"');
    print('');
    print('=' * 80);
  }
}

class SdkVersionViolation {
  final String file;
  final String actualVersion;
  final String expectedVersion;

  SdkVersionViolation({
    required this.file,
    required this.actualVersion,
    required this.expectedVersion,
  });
}
