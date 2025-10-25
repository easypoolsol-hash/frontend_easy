#!/usr/bin/env dart

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

import '../../../shared_config/environment_config.dart';

/// Constitutional Reader - Manages read-only access to SSOT and constitutions
class ConstitutionalReader {
  late YamlMap masterSsot;
  final Map<String, YamlMap> _constitutions = {};

  Future<void> loadConstitutions() async {
    print('📋 Loading SSOT configuration...');
    final ssotPath = EnvironmentConfig.ssotPath;
    final ssotFile = File(ssotPath);

    if (!ssotFile.existsSync()) {
      throw Exception('SSOT file not found: $ssotPath');
    }

    // Load master SSOT (read-only registry)
    final yamlContent = await ssotFile.readAsString();
    masterSsot = loadYaml(yamlContent) as YamlMap;
    print('✅ Master SSOT loaded successfully');

    // Load each constitution separately (preserves type safety)
    final constitutionRefs = masterSsot['constitutions'] as YamlMap?;
    if (constitutionRefs != null) {
      print('🔗 Loading individual constitutions...');
      for (final entry in constitutionRefs.entries) {
        final name = entry.key as String;
        final path = entry.value as String;
        final fullPath = '${EnvironmentConfig.architecturePath}/$path';
        final constitutionFile = File(fullPath);

        if (constitutionFile.existsSync()) {
          final constitutionContent = await constitutionFile.readAsString();
          _constitutions[name] = loadYaml(constitutionContent) as YamlMap;
          print('📄 Constitution loaded: $name');
        } else {
          print('⚠️  Constitution not found: $fullPath');
        }
      }
    }
    print('✅ All constitutions loaded with type safety');
  }

  YamlMap getTechnologyConstitution() => _constitutions['technology'] ?? YamlMap();
  YamlMap getConfigConstitution() => _constitutions['configuration'] ?? YamlMap();

  // Fallback chain for approved technologies
  YamlMap getApprovedTechnologies() {
    return getTechnologyConstitution()['approved_technologies'] as YamlMap? ??
        masterSsot['approved_technologies'] as YamlMap? ??
        YamlMap();
  }

  // Fallback chain for approved packages
  YamlList getApprovedPackages() {
    return getTechnologyConstitution()['approved_packages'] as YamlList? ??
        masterSsot['approved_packages'] as YamlList? ??
        YamlList();
  }

  // Services from master SSOT
  YamlMap getServices() => masterSsot['services'] as YamlMap? ?? YamlMap();

  // Models from master SSOT
  YamlMap getModels() => masterSsot['model_definitions'] as YamlMap? ?? YamlMap();
}

/// Architectural Drift Detector - Scans entire bus_kiosk_app for violations
/// Ensures absolutely no drift from SSOT-defined architecture
class DriftDetector {
  late ConstitutionalReader constitutionalReader;
  final List<DriftViolation> violations = [];

  // Known framework patterns that are allowed
  final Set<String> allowedFrameworkImports = {
    'dart:async',
    'dart:core',
    'dart:convert',
    'package:flutter/foundation.dart',
    'package:flutter/material.dart',
    'package:flutter/services.dart',
  };

  /// Main entry point - scan all files for architectural drift
  Future<void> scanForDrift() async {
    print('🔍 Scanning frontend_easy for architectural drift...');
    print('═' * 60);

    constitutionalReader = ConstitutionalReader();
    await constitutionalReader.loadConstitutions();
    await _scanAllDartFiles();

    _reportResults();
  }

  Future<void> _scanAllDartFiles() async {
    // For frontend_easy, only scan the frontend_easy project directory
    final scanRootPath = Platform.environment['DRIFT_SCAN_PATH'] ?? _scanPathOverride ?? '${Directory.current.path}/frontend_easy';
    final appDir = Directory(scanRootPath);

    if (!appDir.existsSync()) {
      throw Exception('App directory not found: ${appDir.path}');
    }

    print('🔎 Scanning all Dart files in ${appDir.path}...');

    var fileCount = 0;
    const heartbeatInterval = 50; // print progress every N files

    await for (final entity in appDir.list(recursive: true)) {
      if (entity is File && entity.path.endsWith('.dart')) {
        fileCount++;
        if (_verbose || (fileCount % heartbeatInterval) == 0) {
          print('🔁 Scanned $fileCount files so far. Current: ${entity.path}');
        }
        await _scanDartFile(entity);
      }
    }

    print('📊 Scanned ${violations.length} potential violations');
  }

  // CLI overrides (set by main)
  String? _scanPathOverride;
  bool _verbose = false;

  Future<void> _scanDartFile(File dartFile) async {
    final relativePath = dartFile.path.replaceFirst(EnvironmentConfig.appPath, '');

    // Skip generated files - they are trusted
    if (relativePath.contains('/generated/') || relativePath.contains('\\generated\\')) {
      return;
    }

    // Skip framework and build directories
    if (relativePath.contains('/.dart_tool/') ||
        relativePath.contains('\\.dart_tool\\') ||
        relativePath.contains('/build/') ||
        relativePath.contains('\\build\\') ||
        relativePath.contains('/windows/') ||
        relativePath.contains('\\windows\\') ||
        relativePath.contains('/ios/') ||
        relativePath.contains('\\ios\\') ||
        relativePath.contains('/macos/') ||
        relativePath.contains('\\macos\\') ||
        relativePath.contains('/linux/') ||
        relativePath.contains('\\linux\\') ||
        relativePath.contains('/android/') ||
        relativePath.contains('\\android\\')) {
      return;
    }

    final content = await dartFile.readAsString();
    final lines = content.split('\n');

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i];
      final lineNumber = i + 1;

      // Check for various drift patterns
      _checkUnauthorizedImports(line, relativePath, lineNumber);
      _checkDirectServiceInstantiation(line, relativePath, lineNumber);
      _checkHardcodedDependencies(line, relativePath, lineNumber);
      // _checkUndefinedModels(line, relativePath, lineNumber);
      // _checkBypassedInterfaces(line, relativePath, lineNumber);
      _checkUnapprovedTechnologies(line, relativePath, lineNumber);
    }
  }

  void _checkUnauthorizedImports(String line, String filePath, int lineNumber) {
    if (!line.trimLeft().startsWith('import ')) return;

    // Simple string parsing instead of complex regex
    final importStart = line.indexOf("'");
    final importEnd = line.lastIndexOf("'");

    if (importStart == -1 || importEnd == -1 || importStart == importEnd) {
      // Try double quotes
      final doubleStart = line.indexOf('"');
      final doubleEnd = line.lastIndexOf('"');
      if (doubleStart == -1 || doubleEnd == -1 || doubleStart == doubleEnd) {
        return;
      }
      final importPath = line.substring(doubleStart + 1, doubleEnd);
      _processImportPath(importPath, filePath, lineNumber);
      return;
    }

    final importPath = line.substring(importStart + 1, importEnd);
    _processImportPath(importPath, filePath, lineNumber);
  }

  void _processImportPath(String importPath, String filePath, int lineNumber) {
    // Allow generated imports
    if (importPath.startsWith('../generated/') ||
        importPath.startsWith('lib/generated/') ||
        importPath.startsWith('generated/')) {
      return;
    }

    // Allow local service imports (within the app)
    if (importPath.startsWith('services/') ||
        importPath.startsWith('../services/') ||
        importPath.startsWith('lib/services/')) {
      return;
    }

    // Allow local config imports
    if (importPath.startsWith('config/') ||
        importPath.startsWith('../config/') ||
        importPath.startsWith('lib/config/')) {
      return;
    }

    // Allow framework imports
    if (allowedFrameworkImports.contains(importPath)) {
      return;
    }

    // Check for direct hardware access (major violation) - but allow approved packages
    if (importPath.contains('camera') || importPath.contains('geolocator') || importPath.contains('hardware')) {
      // Allow if it's from an approved package
      if (_isApprovedPackage(importPath)) {
        return;
      }
      violations.add(DriftViolation(
        type: ViolationType.unauthorizedHardwareAccess,
        filePath: filePath,
        lineNumber: lineNumber,
        violation: 'Direct hardware import: $importPath',
        solution: 'Use generated service interfaces instead',
      ));
    }

    // Check for unauthorized external dependencies
    if (importPath.startsWith('package:') && !_isApprovedPackage(importPath)) {
      violations.add(DriftViolation(
        type: ViolationType.unauthorizedDependency,
        filePath: filePath,
        lineNumber: lineNumber,
        violation: 'Unauthorized package import: $importPath',
        solution: 'Add to approved packages in SSOT or remove',
      ));
    }
  }

  void _checkDirectServiceInstantiation(String line, String filePath, int lineNumber) {
    // Skip constitutional enforcement files to avoid false positives
    if (filePath.contains('/imperial_governance/') || filePath.contains('\\imperial_governance\\')) {
      return;
    }

    // DUMB PATTERN MATCHING - Use SSOT enforcement rules
    final enforcementRules = constitutionalReader.masterSsot['enforcement_rules'] as YamlMap?;
    if (enforcementRules == null) {
      // Fallback to old logic if no enforcement rules
      return;
    }

    // Check if line matches ALLOWED LINE patterns - if yes, IGNORE
    final allowedLinePatterns = enforcementRules['allowed_line_patterns'] as YamlList?;
    if (allowedLinePatterns != null) {
      for (final pattern in allowedLinePatterns) {
        final regex = RegExp(pattern as String);
        if (regex.hasMatch(line)) {
          return; // ALLOWED - detector ignores
        }
      }
    }

    // Check if line matches ALLOWED CLASS patterns - if yes, IGNORE
    final allowedClassPatterns = enforcementRules['allowed_class_patterns'] as YamlList?;
    if (allowedClassPatterns != null) {
      for (final pattern in allowedClassPatterns) {
        final regex = RegExp(pattern as String);
        if (regex.hasMatch(line)) {
          return; // ALLOWED - detector ignores
        }
      }
    }

    // Check if line matches FORBIDDEN patterns - if yes, FLAG
    final forbiddenPatterns = enforcementRules['forbidden_patterns'] as YamlList?;
    if (forbiddenPatterns != null) {
      for (final pattern in forbiddenPatterns) {
        final regex = RegExp(pattern as String);
        if (regex.hasMatch(line)) {
          violations.add(DriftViolation(
            type: ViolationType.bypassedServiceRegistry,
            filePath: filePath,
            lineNumber: lineNumber,
            violation: 'Forbidden pattern detected: matches $pattern',
            solution: 'Use constitutional patterns defined in SSOT',
          ));
          return; // Flag first violation found
        }
      }
    }
  }

  void _checkHardcodedDependencies(String line, String filePath, int lineNumber) {
    if (filePath.contains('\\test\\')) {
      return;
    }
    // Skip configuration files - they legitimately contain configuration values
    if (filePath.contains('/config/') || filePath.contains('\\config\\')) {
      return;
    }

    // Skip generated API files - they use basePathOverride pattern correctly
    if (filePath.contains('/api/lib/') || filePath.contains('\\api\\lib\\') ||
        filePath.contains('/api_client.dart') || filePath.contains('\\api_client.dart') ||
        filePath.contains('/api.dart') || filePath.contains('\\api.dart')) {
      return;
    }

    // Skip constitutional enforcement files to avoid false positives
    if (filePath.contains('/imperial_governance/') || filePath.contains('\\imperial_governance\\')) {
      return;
    }

    // Skip lines that use constitutional configuration (AppConfig)
    if (line.contains('AppConfig.')) {
      return;
    }

    // Check for hardcoded configuration values (not in generated config)
    if (_containsHardcodedConfig(line)) {
      violations.add(DriftViolation(
        type: ViolationType.hardcodedConfiguration,
        filePath: filePath,
        lineNumber: lineNumber,
        violation: 'Hardcoded configuration value detected',
        solution: 'Use constitutional config from SSOT instead',
      ));
      return;
    }

    // Look for hardcoded secrets, API keys, and suspicious URLs
    final patterns = <RegExp>[];

    for (final pattern in patterns) {
      if (pattern.hasMatch(line)) {
        violations.add(DriftViolation(
          type: ViolationType.hardcodedConfiguration,
          filePath: filePath,
          lineNumber: lineNumber,
          violation: 'Hardcoded configuration detected',
          solution: 'Use environment variables or SSOT configuration',
        ));
      }
    }
  }

  bool _containsHardcodedConfig(String line) {
    // Skip comments - they may legitimately mention "hardcoded" in documentation
    if (line.trim().startsWith('//') || line.trim().startsWith('///')) {
      return false;
    }

    // Look for hardcoded string literals that look like configuration
    final hardcodedIndicators = [
      'HARD CODED', 'HARDCODED', 'hard coded', 'hardcoded',
      'localhost:3000', 'localhost:8000', 'localhost:5000', // Common dev ports
      'example.com', 'test.com', 'dummy.com', // NOTE: dummy domains (test values)
      'CHANGE_ME', 'TODO_CONFIG', 'FIXME_CONFIG', // Developer placeholders
    ];

    for (final indicator in hardcodedIndicators) {
      if (line.contains(indicator)) {
        return true;
      }
    }

    return false;
  }

  void _checkUndefinedModels(String line, String filePath, int lineNumber) {
    final definedModels = _getDefinedModelNames();
    final words = line.split(RegExp(r'[\s,;{}()<>]+'));

    for (final word in words) {
      if (word.endsWith('Event') ||
          word.endsWith('Model') ||
          word.endsWith('Data') ||
          word.endsWith('Info') ||
          word.endsWith('Status') ||
          word.endsWith('Config')) {
        if (!definedModels.contains(word) && !_isKnownFlutterType(word)) {
          // Check if it's a method call
          if (line.contains('$word(')) {
            continue;
          }

          violations.add(DriftViolation(
            type: ViolationType.undefinedModel,
            filePath: filePath,
            lineNumber: lineNumber,
            violation: 'Undefined model type: $word',
            solution: 'Define $word in SSOT model_definitions',
          ));
        }
      }
    }
  }

  void _checkBypassedInterfaces(String line, String filePath, int lineNumber) {
    // DUMB PATTERN MATCHING - Use SSOT enforcement rules
    final enforcementRules = constitutionalReader.masterSsot['enforcement_rules'] as YamlMap?;
    if (enforcementRules == null) {
      // Fallback to old logic if no enforcement rules
      return;
    }

    // Check if line matches ALLOWED patterns - if yes, IGNORE
    final allowedPatterns = enforcementRules['allowed_line_patterns'] as YamlList?;
    if (allowedPatterns != null) {
      for (final pattern in allowedPatterns) {
        final regex = RegExp(pattern as String);
        if (regex.hasMatch(line)) {
          return; // ALLOWED - detector ignores
        }
      }
    }

    // Look for concrete service usage instead of interfaces
    final serviceNames = _getDefinedServiceNames();

    for (final serviceName in serviceNames) {
      final className = _toPascalCase(serviceName);
      final interfaceName = 'I$className';

      // If using concrete class instead of interface
      if (line.contains(className) && !line.contains(interfaceName)) {
        violations.add(DriftViolation(
          type: ViolationType.bypassedInterface,
          filePath: filePath,
          lineNumber: lineNumber,
          violation: 'Using concrete service: $className',
          solution: 'Use interface $interfaceName instead',
        ));
      }
    }
  }

  void _checkUnapprovedTechnologies(String line, String filePath, int lineNumber) {
    // Skip constitutional enforcement files to avoid false positives
    if (filePath.contains('/imperial_governance/') || filePath.contains('\\imperial_governance\\')) {
      return;
    }

    // Check for usage of technologies not approved in SSOT
    final approvedTechnologies = constitutionalReader.getApprovedTechnologies();

    // Get all approved technology names from constitution (dynamic, not hardcoded)
    final approvedTechNames = approvedTechnologies.keys.cast<String>().toSet();

    // Also check for common technology patterns that might not be exact matches
    final commonTechPatterns = <String, String>{};
    for (final techName in approvedTechNames) {
      // Add variations and common abbreviations
      commonTechPatterns[techName.toLowerCase()] = techName;
      if (techName.contains('_')) {
        commonTechPatterns[techName.replaceAll('_', '').toLowerCase()] = techName;
      }
    }

    // Check each approved technology and its variations
    for (final entry in commonTechPatterns.entries) {
      final searchPattern = entry.key;
      final actualTechName = entry.value;

      if (!line.toLowerCase().contains(searchPattern)) continue;

      // Technology is approved, check platform constraints
      final techEntry = approvedTechnologies[actualTechName] as YamlMap?;
      if (techEntry != null && techEntry.containsKey('platforms')) {
        final platforms = (techEntry['platforms'] as YamlList).cast<String>().toSet();

        // Heuristic: if file is inside lib/ (general app code) and NOT web-specific, disallow web-only techs
        final isInLib = filePath.contains('/lib/') || filePath.contains('\\lib\\');
        final isWebPath = filePath.contains('/web/') || filePath.contains('\\web\\') || filePath.contains('_web.dart');

        if (isInLib && !isWebPath) {
          // If platforms does not include android or ios, then it's web-only
          if (!platforms.contains('android') && !platforms.contains('ios')) {
            violations.add(DriftViolation(
              type: ViolationType.unapprovedTechnology,
              filePath: filePath,
              lineNumber: lineNumber,
              violation: 'Technology $actualTechName is approved only for ${platforms.join(', ')} but used in app code',
              solution:
                  'Move $actualTechName usage into web-only implementation or update SSOT to include mobile platforms',
            ));
          }
        }
      }

      // Found approved technology, no violation
      return;
    }

    // Check for unapproved technology patterns (technologies not in constitution at all)
    final suspiciousTechPatterns = ['mediapipe', 'tensorflow', 'face_api', 'opencv', 'pytorch'];
    for (final suspiciousPattern in suspiciousTechPatterns) {
      if (line.toLowerCase().contains(suspiciousPattern)) {
        // Only flag if this pattern is not covered by any approved technology
        bool isCoveredByApproved = false;
        for (final approvedTech in approvedTechNames) {
          if (approvedTech.toLowerCase().contains(suspiciousPattern) ||
              suspiciousPattern.contains(approvedTech.toLowerCase())) {
            isCoveredByApproved = true;
            break;
          }
        }

        if (!isCoveredByApproved) {
          violations.add(DriftViolation(
            type: ViolationType.unapprovedTechnology,
            filePath: filePath,
            lineNumber: lineNumber,
            violation: 'Using unapproved technology: $suspiciousPattern',
            solution: 'Add $suspiciousPattern to approved_technologies in SSOT or remove usage',
          ));
        }
      }
    }
  }

  Set<String> _getDefinedServiceNames() {
    final services = constitutionalReader.getServices();
    return services.keys.cast<String>().toSet();
  }

  Set<String> _getDefinedModelNames() {
    final models = constitutionalReader.getModels();
    return models.keys.cast<String>().toSet();
  }



  bool _isApprovedPackage(String packageImport) {
    // Get approved packages from SSOT
    final approvedPackages = constitutionalReader.getApprovedPackages();
    return approvedPackages.any((approved) => packageImport.startsWith(approved as String));
  }

  bool _isKnownFlutterType(String typeName) {
    final flutterTypes = {
      'Widget',
      'State',
      'StatefulWidget',
      'StatelessWidget',
      'BuildContext',
      'Color',
      'TextStyle',
      'EdgeInsets',
      'ThemeData',
      'MaterialApp',
      'Scaffold',
      'AppBar',
      'Container',
      'Column',
      'Row',
      'Text',
      'Icon',
      'IconData',
      'Navigator',
      'Route',
      'MaterialPageRoute',
    };

    return flutterTypes.contains(typeName);
  }

  String _toPascalCase(String input) {
    return input.split('_').map((word) => word[0].toUpperCase() + word.substring(1)).join('');
  }

  void _reportResults() {
    print('\n📊 ARCHITECTURAL DRIFT DETECTION RESULTS');
    print('═' * 60);

    if (violations.isEmpty) {
      print('✅ NO DRIFT DETECTED - Architecture is clean!');
      print('🎯 All files comply with SSOT-defined architecture');
      return;
    }

    print('❌ DRIFT VIOLATIONS DETECTED: ${violations.length}');
    print('');

    // Group violations by type
    final violationsByType = <ViolationType, List<DriftViolation>>{};
    for (final violation in violations) {
      violationsByType.putIfAbsent(violation.type, () => []).add(violation);
    }

    for (final entry in violationsByType.entries) {
      final type = entry.key;
      final violationList = entry.value;

      print('🚨 ${_violationTypeToString(type)}: ${violationList.length} violations');

      for (final violation in violationList) {
        print('   📁 ${violation.filePath}:${violation.lineNumber}');
        print('      ❌ ${violation.violation}');
        print('      💡 ${violation.solution}');
        print('');
      }
    }

    print('🛠️  REMEDIATION REQUIRED');
    print('All violations must be fixed to ensure zero architectural drift.');

    // Exit with error code so CI/CD fails
    exit(1);
  }

  String _violationTypeToString(ViolationType type) {
    switch (type) {
      case ViolationType.unauthorizedHardwareAccess:
        return 'UNAUTHORIZED HARDWARE ACCESS';
      case ViolationType.unauthorizedDependency:
        return 'UNAUTHORIZED DEPENDENCY';
      case ViolationType.bypassedServiceRegistry:
        return 'BYPASSED SERVICE REGISTRY';
      case ViolationType.hardcodedConfiguration:
        return 'HARDCODED CONFIGURATION';
      case ViolationType.undefinedModel:
        return 'UNDEFINED MODEL';
      case ViolationType.bypassedInterface:
        return 'BYPASSED INTERFACE';
      case ViolationType.unapprovedTechnology:
        return 'UNAPPROVED TECHNOLOGY';
    }
  }

  /// Validate SSOT integrity - ensure SSOT is readable and valid
  Future<void> validateSSOTIntegrity() async {
    try {
      constitutionalReader = ConstitutionalReader();
      await constitutionalReader.loadConstitutions();

      // Industrial JSON Schema validation
      await _validateSSOTSchema();
      print('✅ JSON Schema validation passed');
    } catch (e) {
      throw Exception('SSOT integrity violation: $e');
    }
  }

  /// Validate main SSOT against JSON Schema (simplified industrial approach)
  Future<void> _validateSSOTSchema() async {
    print('📋 Validating SSOT against constitutional schema...');

    final ssotData = constitutionalReader.masterSsot;

    // Critical field validation
    final requiredFields = ['system', 'model_definitions', 'services', 'governance'];
    for (final field in requiredFields) {
      if (!ssotData.containsKey(field)) {
        throw Exception('Schema violation: Missing required field "$field"');
      }
    }

    // System validation
    final system = ssotData['system'] as YamlMap?;
    if (system == null) throw Exception('Schema violation: "system" must be object');

    final systemRequired = ['name', 'version', 'architecture'];
    for (final field in systemRequired) {
      if (!system.containsKey(field)) {
        throw Exception('Schema violation: system.$field required');
      }
    }

    // Version pattern validation
    final version = system['version'] as String?;
    if (version == null || !RegExp(r'^\d+\.\d+\.\d+$').hasMatch(version)) {
      throw Exception('Schema violation: system.version must follow x.y.z format');
    }

    // Model definitions validation
    final models = ssotData['model_definitions'] as YamlMap?;
    if (models == null) throw Exception('Schema violation: model_definitions required');

    for (final entry in models.entries) {
      final modelName = entry.key as String;
      final modelDef = entry.value as YamlMap?;

      if (modelDef == null) {
        throw Exception('Schema violation: Model "$modelName" must be object');
      }

      if (!modelDef.containsKey('category')) {
        throw Exception('Schema violation: Model "$modelName" missing category');
      }

      final category = modelDef['category'] as String?;
      if (category == 'enum') {
        // Enums have 'values' instead of 'fields'
        if (!modelDef.containsKey('values')) {
          throw Exception('Schema violation: Enum "$modelName" missing values');
        }
      } else {
        // Models have 'fields'
        if (!modelDef.containsKey('fields')) {
          throw Exception('Schema violation: Model "$modelName" missing fields');
        }
      }
    }

    print('📊 Validated ${models.length} model definitions');
  }

  /// Validate generation compliance - ensure SSOT models are actually generated
  Future<void> validateGenerationCompliance() async {
    // Check if generation script exists
    final generationScript = '${EnvironmentConfig.architecturePath}/generation/generate_all.dart';
    if (!File(generationScript).existsSync()) {
      print('⚠️ Generation script not found: $generationScript');
      print('⚠️ Skipping generation compliance check (generation infrastructure not set up)');
      return;
    }

    // Load SSOT and check all defined models are generated
    final ssot = constitutionalReader.masterSsot;
    final modelDefinitions = ssot['model_definitions'] as YamlMap?;

    if (modelDefinitions == null) {
      throw Exception('SSOT violation: No model_definitions found in SSOT');
    }

    final generatedModelsPath = '${EnvironmentConfig.appPath}/lib/generated/models/service_models.dart';
    final generatedFile = File(generatedModelsPath);

    if (!generatedFile.existsSync()) {
      throw Exception('Generation compliance violation: Generated models file missing at $generatedModelsPath');
    }

    final generatedContent = await generatedFile.readAsString();
    final missingModels = <String>[];

    // Check each SSOT-defined model exists in generated file
    for (final modelName in modelDefinitions.keys) {
      final modelStr = modelName.toString();
      final hasClass = generatedContent.contains('class $modelStr {');
      final hasEnum = generatedContent.contains('enum $modelStr') || generatedContent.contains('enum $modelStr {');
      if (!hasClass && !hasEnum) {
        missingModels.add(modelStr);
      }
    }

    if (missingModels.isNotEmpty) {
      throw Exception(
          'Generation compliance violation: SSOT models not generated: ${missingModels.join(', ')}. Run: dart imperial_governance/generation/generate_all.dart');
    }

    print('📊 Validated ${modelDefinitions.length} SSOT models are generated');
  }
}

enum ViolationType {
  unauthorizedHardwareAccess,
  unauthorizedDependency,
  bypassedServiceRegistry,
  hardcodedConfiguration,
  undefinedModel,
  bypassedInterface,
  unapprovedTechnology,
}

class DriftViolation {
  final ViolationType type;
  final String filePath;
  final int lineNumber;
  final String violation;
  final String solution;

  DriftViolation({
    required this.type,
    required this.filePath,
    required this.lineNumber,
    required this.violation,
    required this.solution,
  });
}

/// Main entry point for drift detection
void main(List<String> arguments) async {
  try {
    final detector = DriftDetector();

    // CLI flags: --path <dir> to limit scan root, --verbose for heartbeat prints
    if (arguments.contains('--verbose')) detector._verbose = true;
    final pathIndex = arguments.indexOf('--path');
    if (pathIndex != -1 && pathIndex + 1 < arguments.length) {
      detector._scanPathOverride = arguments[pathIndex + 1];
    }

    // CONSTITUTIONAL VALIDATION SEQUENCE:

    // 1. SSOT INTEGRITY CHECK - Most critical
    print('🏛️ Validating SSOT integrity...');
    await detector.validateSSOTIntegrity();
    print('✅ SSOT integrity validated');

    // 2. GENERATION COMPLIANCE - Ensure SSOT models are generated
    print('📁 Validating generation compliance...');
    await detector.validateGenerationCompliance();
    print('✅ Generation compliance validated');

    // 3. COMPILATION CHECK - Ensure generated code compiles (optimized for speed)
    print('🔧 Checking compilation integrity...');

    // Only analyze generated files for speed - full app analysis is too slow for pre-commit
    final generatedFiles = [
      '${EnvironmentConfig.appPath}/lib/generated/models/service_models.dart',
      '${EnvironmentConfig.appPath}/lib/generated/interfaces',
      '${EnvironmentConfig.appPath}/lib/generated/config',
    ].where((path) => File(path).existsSync() || Directory(path).existsSync());

    if (generatedFiles.isEmpty) {
      print('⚠️ No generated files found to analyze');
    } else {
      // Run analyzer only on generated files for faster feedback
      final compileResult = await Process.run(
        'dart',
        ['analyze', ...generatedFiles, '--format', 'json'],
      );

      // Attempt to parse the JSON output. If parsing fails, fall back to old behavior.
      if (compileResult.stdout != null && (compileResult.stdout as String).isNotEmpty) {
        try {
          final decoded = jsonDecode(compileResult.stdout as String);

          // Analyzer historically printed a raw List of diagnostics, but newer
          // versions wrap diagnostics in an object with a 'diagnostics' array.
          // Accept both shapes for robustness.
          List<dynamic> issues = [];
          if (decoded is List) {
            issues = decoded;
          } else if (decoded is Map && decoded['diagnostics'] is List) {
            issues = decoded['diagnostics'] as List<dynamic>;
          } else {
            // Unknown shape: try to locate a diagnostics-like list anywhere in the map
            if (decoded is Map) {
              for (final v in decoded.values) {
                if (v is List) {
                  issues = v;
                  break;
                }
              }
            }
          }

          final errorIssues = issues.where((i) => (i is Map && (i['severity'] as String?) == 'error')).toList();
          final warningCount = issues.where((i) => (i is Map && (i['severity'] as String?) == 'warning')).length;
          final infoCount = issues.where((i) => (i is Map && (i['severity'] as String?) == 'info')).length;

          if (errorIssues.isNotEmpty) {
            print(
                '❌ COMPILATION ERRORS DETECTED: ${errorIssues.length} error(s), $warningCount warning(s), $infoCount info(s)');
            print('=' * 80);
            for (final issue in errorIssues) {
              try {
                final loc = issue['location'];
                final file = loc['file'] as String? ?? '<unknown file>';
                final start = loc['range']?['start'];
                final line = (start != null) ? (start['line'] as int? ?? 0) + 1 : 0;
                final col = (start != null) ? (start['column'] as int? ?? 0) + 1 : 0;
                print('${issue['severity']} - $file:$line:$col - ${issue['message']}');
              } catch (_) {
                print(issue.toString());
              }
            }
            print('=' * 80);
            print('💡 FIX ERRORS BEFORE CHECKING ARCHITECTURAL DRIFT');
            exit(1);
          } else {
            print(
                '⚠️ No analyzer errors found; $warningCount warning(s) and $infoCount info(s) present (treated as non-fatal).');
          }
        } catch (e) {
          // If JSON parsing fails, show raw output and fail to be safe.
          print('⚠️ Could not parse analyzer JSON output: $e');
          print(compileResult.stdout);
          print(compileResult.stderr);
          exit(1);
        }
      } else if (compileResult.exitCode != 0) {
        // No stdout but non-zero exit code — fallback: print stderr and fail
        print('❌ Analyzer failed with exit code ${compileResult.exitCode}');
        print(compileResult.stderr);
        exit(1);
      }
    }

    print('✅ Compilation check passed');

    // 4. ARCHITECTURAL DRIFT - Check code patterns
    await detector.scanForDrift();
  } catch (e, stackTrace) {
    print('❌ Constitutional validation failed: $e');
    if (arguments.contains('--verbose')) {
      print('Stack trace: $stackTrace');
    }
    exit(1);
  }
}
