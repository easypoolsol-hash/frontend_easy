#!/usr/bin/env dart

/// FREEZED + JSON_SERIALIZABLE ENFORCEMENT DETECTOR
/// Ensures 2025 best practices for JSON serialization
///
/// ENFORCES:
/// - ✅ Use freezed for immutable models
/// - ✅ Use json_serializable for JSON mapping
/// - ✅ No manual toJson/fromJson implementations
/// - ❌ No built_value (deprecated 2025)
/// - ❌ No manual copyWith implementations
library;

import 'dart:io';

void main() async {
  print('[DETECTOR] Freezed + JSON Serialization Best Practices');
  print('');

  final violations = <String>[];

  // Check lib/features for models
  final libDir = Directory('lib/features');
  if (!libDir.existsSync()) {
    print('[SKIP] lib/features directory not found');
    exit(0);
  }

  // Find all model files
  await for (final entity in libDir.list(recursive: true)) {
    if (entity is File && entity.path.endsWith('.dart')) {
      final relativePath = entity.path.replaceAll('\\', '/');

      // Check if it's a model file
      if (relativePath.contains('/models/')) {
        final content = await entity.readAsString();

        // Check for violations
        final fileViolations = _checkModelFile(relativePath, content);
        violations.addAll(fileViolations);
      }
    }
  }

  // Report results
  if (violations.isEmpty) {
    print('[PASS] All model files follow freezed + json_serializable pattern');
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

List<String> _checkModelFile(String filePath, String content) {
  final violations = <String>[];

  // Skip generated files
  if (filePath.contains('.g.dart') || filePath.contains('.freezed.dart')) {
    return violations;
  }

  // Check if file defines a class (likely a model)
  if (!content.contains('class ')) {
    return violations;
  }

  // VIOLATION 1: Manual toJson/fromJson instead of json_serializable
  if (_hasManualJsonSerialization(content)) {
    violations.add('$filePath: Manual toJson/fromJson found - use @JsonSerializable instead');
  }

  // VIOLATION 2: Using built_value (deprecated)
  if (content.contains('built_value')) {
    violations.add('$filePath: built_value detected - migrate to freezed (2025 standard)');
  }

  // VIOLATION 3: Manual copyWith instead of freezed
  if (_hasManualCopyWith(content) && !content.contains('@freezed') && !content.contains('const ')) {
    violations.add('$filePath: Manual copyWith found - use @freezed for immutable models');
  }

  // VIOLATION 4: Mutable fields in models
  if (_hasMutableFields(content)) {
    violations.add('$filePath: Mutable fields detected - models should be immutable (use final or freezed)');
  }

  // RECOMMENDATION: Complex models should use freezed
  if (_isComplexModel(content) && !content.contains('@freezed') && !content.contains('@JsonSerializable')) {
    violations.add('$filePath: Complex model without @freezed or @JsonSerializable - add annotations');
  }

  return violations;
}

bool _hasManualJsonSerialization(String content) {
  // Check for manual toJson/fromJson methods (not generated)
  final hasToJson = content.contains('Map<String, dynamic> toJson()');
  final hasFromJson = content.contains('fromJson(Map<String, dynamic>');
  final isGenerated = content.contains('// GENERATED CODE') ||
                      content.contains('part of') ||
                      content.contains('@JsonSerializable');

  return (hasToJson || hasFromJson) && !isGenerated;
}

bool _hasManualCopyWith(String content) {
  // Check for manual copyWith implementation
  return content.contains('copyWith(') &&
         !content.contains('@freezed') &&
         !content.contains('// GENERATED CODE');
}

bool _hasMutableFields(String content) {
  // Check for non-final fields in classes (excluding private fields which might be for state)
  final classPattern = RegExp(r'class\s+\w+\s*\{[^}]*\}', multiLine: true, dotAll: true);
  final classes = classPattern.allMatches(content);

  for (final classMatch in classes) {
    final classBody = classMatch.group(0) ?? '';

    // Look for field declarations that are NOT final
    final fieldPattern = RegExp(r'^\s+(?!final|static|const|_)(\w+)\s+\w+\s*;', multiLine: true);
    if (fieldPattern.hasMatch(classBody)) {
      return true;
    }
  }

  return false;
}

bool _isComplexModel(String content) {
  // Consider a model complex if it has 3+ fields
  final fieldPattern = RegExp(r'^\s+final\s+\w+', multiLine: true);
  final fieldCount = fieldPattern.allMatches(content).length;
  return fieldCount >= 3;
}
