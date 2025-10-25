#!/usr/bin/env dart

library zero_drift_api_detector;

import 'dart:io';

import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

/// 🛡️ ZERO-DRIFT API ENFORCEMENT - Frontend Easy
/// Prevents API drift by detecting hardcoded API URLs and raw HTTP calls
/// Ensures all API calls use the generated client from OpenAPI specification
///
/// CONSTITUTIONAL PRINCIPLE: Single Source of Truth (SSOT)
/// - Backend OpenAPI spec → Git pre-commit hook → Auto-generate Flutter client
/// - ALL API calls MUST use generated client methods
/// - NEVER hardcode URLs, paths, or endpoints
class ZeroDriftApiDetector extends RecursiveAstVisitor<void> {
  final List<DriftViolation> violations = [];
  String currentFilePath = '';

  /// Main detection entry point
  static Future<void> detectApiDrift() async {
    print('🛡️  ZERO-DRIFT GUARDIAN - Constitutional API Enforcement');
    print('=' * 80);

    try {
      final detector = ZeroDriftApiDetector();
      await detector._scanServiceFiles();

      if (detector.violations.isNotEmpty) {
        detector._reportViolations();
        exit(1); // Fail build on violations
      } else {
        print('✅ ZERO-DRIFT VERIFIED: All API calls use generated client');
        print('✅ Constitutional integrity maintained');
      }
    } catch (e) {
      print('❌ Zero-drift detection failed: $e');
      exit(1);
    }
  }

  /// Scan service files for API drift violations
  Future<void> _scanServiceFiles() async {
    print('📂 Scanning service files for hardcoded API calls...\n');

    // Scan main service directories for frontend_easy
    // Include providers, services, repositories, data layers
    final serviceDirs = [
      'lib/services',
      'lib/repositories',
      'lib/data',
      'lib/api',
      'lib/features',  // Scan all feature modules for providers/services
      'lib/shared',    // Scan shared services
    ];

    var filesScanned = 0;
    for (final dir in serviceDirs) {
      final scanCount = await _scanDirectory(dir);
      filesScanned += scanCount;
    }

    print('📊 Scanned $filesScanned files for API drift\n');

    // Validate generated client uses json_serializable
    await _validateGeneratedClientSerialization();
  }

  /// Scan directory for Dart files
  Future<int> _scanDirectory(String dirPath) async {
    final directory = Directory(dirPath);
    if (!directory.existsSync()) return 0;

    var count = 0;
    await for (final entity in directory.list(recursive: true)) {
      if (entity is File &&
          entity.path.endsWith('.dart') &&
          !entity.path.contains('.g.dart') &&
          !entity.path.contains('.freezed.dart') &&
          !entity.path.contains('.mocks.dart') &&
          !entity.path.contains('test')) {
        await _analyzeFile(entity.path);
        count++;
      }
    }
    return count;
  }

  /// Analyze individual Dart file
  Future<void> _analyzeFile(String filePath) async {
    currentFilePath = filePath;

    try {
      final content = await File(filePath).readAsString();
      final parseResult = parseString(
        content: content,
        featureSet: FeatureSet.latestLanguageVersion(),
        path: filePath,
      );

      if (parseResult.errors.isNotEmpty) {
        print('⚠️  Parse errors in $filePath, skipping');
        return;
      }

      // Visit AST nodes to check for violations
      parseResult.unit.accept(this);
    } catch (e) {
      print('⚠️  Error analyzing $filePath: $e');
    }
  }

  // ===================
  // VIOLATION DETECTION
  // ===================

  @override
  void visitSimpleStringLiteral(SimpleStringLiteral node) {
    super.visitSimpleStringLiteral(node);
    _checkHardcodedApiUrl(node);
  }

  @override
  void visitMethodInvocation(MethodInvocation node) {
    super.visitMethodInvocation(node);
    _checkRawDioCall(node);
  }

  @override
  void visitNamedExpression(NamedExpression node) {
    super.visitNamedExpression(node);
    _checkBaseUrlOverride(node);
  }

  /// Check for hardcoded API URLs in string literals
  void _checkHardcodedApiUrl(SimpleStringLiteral node) {
    final value = node.value;

    // Pattern: '/api/v1/...' or '/api/v2/...'
    if (RegExp(r'^/api/v\d+/').hasMatch(value)) {
      // Allow in config files
      if (currentFilePath.contains('config') ||
          currentFilePath.contains('constant')) {
        return;
      }

      violations.add(
        DriftViolation(
          file: currentFilePath,
          line: node.offset,
          rule: 'no_hardcoded_api_urls',
          message: 'Hardcoded API URL detected: "$value"',
          severity: ViolationSeverity.error,
          suggestion: 'Use generated API client method instead.\n'
              '   Example: _apiClient.studentsStudentsList()\n'
              '   Generated client methods from frontend_easy_api package\n'
              '   - Check packages/frontend_easy_api/doc/ for all endpoints',
        ),
      );
    }
  }

  /// Check for raw Dio HTTP calls bypassing the API client
  void _checkRawDioCall(MethodInvocation node) {
    final methodName = node.methodName.name;

    // Detect: dio.request(), dio.get(), dio.post(), etc.
    if (['request', 'get', 'post', 'put', 'delete', 'patch']
        .contains(methodName)) {
      final target = node.target;
      if (target != null) {
        final targetStr = target.toString();

        // Check if it's a Dio instance (dio, _dio, client, _client, etc.)
        if (RegExp(r'^_?dio$|^_?client$').hasMatch(targetStr)) {
          // Allow in API client implementation itself
          if (currentFilePath.contains('frontend_easy_api') ||
              currentFilePath.contains('packages/frontend_easy_api') ||
              currentFilePath.contains('generated')) {
            return;
          }

          violations.add(
            DriftViolation(
              file: currentFilePath,
              line: node.offset,
              rule: 'no_raw_dio_calls',
              message: 'Raw Dio.$methodName() call detected - bypassing API client',
              severity: ViolationSeverity.error,
              suggestion: 'Use _apiClient instead of raw Dio calls.\n'
                  '   ❌ Bad:  dio.request("/api/v1/...")\n'
                  '   ✅ Good: _apiClient.studentsStudentsList()',
            ),
          );
        }
      }
    }
  }

  /// Check for Dio baseUrl overrides (suspicious)
  void _checkBaseUrlOverride(NamedExpression node) {
    final paramName = node.name.label.name;

    if (paramName == 'baseUrl') {
      // Allow in app initialization/config
      if (currentFilePath.contains('main.dart') ||
          currentFilePath.contains('config') ||
          currentFilePath.contains('dio_factory') ||
          currentFilePath.contains('api_client')) {
        return;
      }

      violations.add(
        DriftViolation(
          file: currentFilePath,
          line: node.offset,
          rule: 'suspicious_baseurl_override',
          message: 'Dio baseUrl override detected in service code',
          severity: ViolationSeverity.warning,
          suggestion: 'baseUrl should only be configured during app initialization.\n'
              '   Move this to main.dart or a DioFactory class.',
        ),
      );
    }
  }

  /// Validate that generated client uses json_serializable (2025 best practice)
  Future<void> _validateGeneratedClientSerialization() async {
    print('🔍 Validating generated client serialization format...\n');

    // Check if API client package exists
    final apiPackageDir = Directory('packages/frontend_easy_api');
    if (!apiPackageDir.existsSync()) {
      print('⚠️  Warning: packages/frontend_easy_api not found');
      print('    Run backend pre-commit hook to generate client\n');
      return;
    }

    // Check pubspec for json_serializable
    final pubspecFile = File('packages/frontend_easy_api/pubspec.yaml');
    if (pubspecFile.existsSync()) {
      final pubspecContent = await pubspecFile.readAsString();
      if (pubspecContent.contains('json_serializable')) {
        print('✅ API client uses json_serializable (2025 best practice)');
      } else if (pubspecContent.contains('built_value')) {
        print('⚠️  Warning: API client uses built_value (consider json_serializable)');
      }
    }

    print('🔍 Serialization validation complete\n');
  }

  /// Report all violations found
  void _reportViolations() {
    print('🚨 CONSTITUTIONAL VIOLATIONS DETECTED');
    print('=' * 80);
    print('');

    final errors =
        violations.where((v) => v.severity == ViolationSeverity.error).toList();
    final warnings = violations
        .where((v) => v.severity == ViolationSeverity.warning)
        .toList();

    // Report errors first
    for (final violation in errors) {
      _printViolation(violation);
    }

    // Then warnings
    for (final violation in warnings) {
      _printViolation(violation);
    }

    print('=' * 80);
    print('📊 SUMMARY:');
    print('   ❌ Errors: ${errors.length}');
    print('   ⚠️  Warnings: ${warnings.length}');
    print('');

    if (errors.isNotEmpty) {
      print('🚨 ZERO-DRIFT BREACH: Fix violations before committing');
      print('');
      print('📚 CONSTITUTIONAL REQUIREMENT:');
      print('   All API calls MUST use the generated client from frontend_easy_api');
      print('   This ensures zero drift between backend and frontend');
      print('');
      print('🔧 HOW TO FIX:');
      print('   1. Import: import \'package:frontend_easy_api/frontend_easy_api.dart\';');
      print('   2. Use: _apiClient = FrontendEasyApi(dio: dio).getApiApi();');
      print('   3. Call: await _apiClient.methodName(params);');
      print('');
    }

    print('=' * 80);
  }

  void _printViolation(DriftViolation v) {
    final icon = v.severity == ViolationSeverity.error ? '❌' : '⚠️';
    final severityStr = v.severity.name.toUpperCase();

    print('$icon $severityStr: ${v.rule}');
    print('   📄 File: ${v.file}');
    print('   💬 ${v.message}');
    if (v.suggestion.isNotEmpty) {
      print('   💡 Suggestion:');
      for (final line in v.suggestion.split('\n')) {
        print('      $line');
      }
    }
    print('');
  }
}

// ===================
// DATA CLASSES
// ===================

enum ViolationSeverity { error, warning, info }

class DriftViolation {
  final String file;
  final int line;
  final String rule;
  final String message;
  final ViolationSeverity severity;
  final String suggestion;

  DriftViolation({
    required this.file,
    required this.line,
    required this.rule,
    required this.message,
    required this.severity,
    required this.suggestion,
  });
}

/// Main entry point for zero-drift API detection
void main() async {
  await ZeroDriftApiDetector.detectApiDrift();
}
