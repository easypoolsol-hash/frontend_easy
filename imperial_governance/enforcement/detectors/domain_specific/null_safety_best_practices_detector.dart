#!/usr/bin/env dart

/// NULL-SAFETY BEST PRACTICES DETECTOR (2025)
/// Ensures modern Dart null-safety patterns
///
/// ENFORCES:
/// - ✅ Use null-aware operators (?., ??, ??=)
/// - ✅ No manual null checks where null-aware operators work
/// - ✅ Use AsyncValue for async state (no manual loading/error states)
/// - ❌ No old-style if (x != null) pattern for simple access
/// - ❌ No unnecessary null checks on non-nullable types
library;

import 'dart:io';

void main() async {
  print('[DETECTOR] Null-Safety Best Practices (2025)');
  print('');

  final violations = <String>[];

  // Check lib/features for code files
  final libDir = Directory('lib/features');
  if (!libDir.existsSync()) {
    print('[SKIP] lib/features directory not found');
    exit(0);
  }

  // Find all Dart files
  await for (final entity in libDir.list(recursive: true)) {
    if (entity is File && entity.path.endsWith('.dart')) {
      final relativePath = entity.path.replaceAll('\\', '/');

      // Skip generated files
      if (relativePath.contains('.g.dart') || relativePath.contains('.freezed.dart')) {
        continue;
      }

      final content = await entity.readAsString();
      final fileViolations = _checkNullSafety(relativePath, content);
      violations.addAll(fileViolations);
    }
  }

  // Report results
  if (violations.isEmpty) {
    print('[PASS] All code follows null-safety best practices');
    exit(0);
  } else {
    print('[FAIL] Found ${violations.length} violations:\n');
    for (final violation in violations) {
      print('  ❌ $violation');
    }
    print('');
    print('VIOLATIONS DETECTED: ${violations.length}');
    exit(1);
  }
}

List<String> _checkNullSafety(String filePath, String content) {
  final violations = <String>[];

  // VIOLATION 1: Manual null check that could use null-aware operator
  // Pattern: if (x != null) { ... x.property ... }
  final manualNullCheckPattern = RegExp(
    r'if\s*\(\s*(\w+)\s*!=\s*null\s*\)\s*\{[^}]*\1\.',
    multiLine: true,
  );
  if (manualNullCheckPattern.hasMatch(content)) {
    final matches = manualNullCheckPattern.allMatches(content);
    for (final match in matches) {
      final line = _getLineNumber(content, match.start);
      violations.add('$filePath:$line: Manual null check - use null-aware operator ?. instead');
    }
  }

  // VIOLATION 2: Unnecessary null check on already non-nullable type
  // This is harder to detect statically, so we look for obvious patterns
  final unnecessaryCheckPattern = RegExp(
    r'if\s*\(\s*(\w+)\s*!=\s*null\s*\)\s*\{[^}]*required\s+\1',
    multiLine: true,
  );
  if (unnecessaryCheckPattern.hasMatch(content)) {
    final matches = unnecessaryCheckPattern.allMatches(content);
    for (final match in matches) {
      final line = _getLineNumber(content, match.start);
      violations.add('$filePath:$line: Unnecessary null check on required parameter');
    }
  }

  // VIOLATION 3: Not using ?? for default values
  // Pattern: x != null ? x : defaultValue  →  should be  x ?? defaultValue
  final ternaryNullPattern = RegExp(
    r'(\w+)\s*!=\s*null\s*\?\s*\1\s*:\s*',
    multiLine: true,
  );
  if (ternaryNullPattern.hasMatch(content)) {
    final matches = ternaryNullPattern.allMatches(content);
    for (final match in matches) {
      final line = _getLineNumber(content, match.start);
      violations.add('$filePath:$line: Use ?? operator instead of ternary for null coalescing');
    }
  }

  // VIOLATION 4: Not using AsyncValue for FutureProvider/StreamProvider
  // Pattern: Provider<Future<X>> instead of FutureProvider
  if (content.contains('Provider<Future<')) {
    violations.add('$filePath: Use FutureProvider instead of Provider<Future<T>> for async data');
  }

  // VIOLATION 5: Manual loading/error states instead of AsyncValue
  if (_hasManualAsyncStates(content)) {
    violations.add('$filePath: Use AsyncValue (AsyncValue.when/map) instead of manual loading/error states');
  }

  return violations;
}

bool _hasManualAsyncStates(String content) {
  // Check for manual isLoading, hasError patterns
  final hasManualLoading = content.contains('bool isLoading') ||
                          content.contains('bool _isLoading') ||
                          content.contains('var isLoading') ||
                          content.contains('var _isLoading') ||
                          content.contains('final isLoading') ||
                          content.contains('final _isLoading');

  final hasManualError = content.contains('String? errorMessage') ||
                        content.contains('String? _errorMessage') ||
                        content.contains('var errorMessage') ||
                        content.contains('var _errorMessage') ||
                        content.contains('final errorMessage') ||
                        content.contains('final _errorMessage') ||
                        content.contains('bool hasError') ||
                        content.contains('bool _hasError');

  // If both exist and AsyncValue is used, it's likely proper AsyncValue usage
  final usesAsyncValue = content.contains('AsyncValue') &&
                        (content.contains('AsyncValue.when') ||
                         content.contains('AsyncValue.map'));

  // Only flag if manual state management exists AND AsyncValue is not used properly
  return hasManualLoading && hasManualError && !usesAsyncValue;
}

int _getLineNumber(String content, int position) {
  return content.substring(0, position).split('\n').length;
}
