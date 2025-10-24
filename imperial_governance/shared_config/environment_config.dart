import 'dart:io';

import 'package:path/path.dart' as path;

/// Environment-first configuration following 12-factor app principles
/// Provides cross-platform path resolution and environment management
class EnvironmentConfig {
  static String? _projectRoot;
  static String? _environment;

  /// Current environment (development, staging, production)
  static String get environment {
    return _environment ??= Platform.environment['ENVIRONMENT'] ?? 'development';
  }

  /// Project root directory (auto-discovered or from environment)
  static String get projectRoot {
    return _projectRoot ??= Platform.environment['PROJECT_ROOT'] ?? _discoverProjectRoot();
  }

  /// Backwards-compatible alias used by older tooling (projectPath)
  /// Previously some detectors referenced `EnvironmentConfig.projectPath`.
  /// Keep this alias to avoid breaking existing scripts.
  static String get projectPath => projectRoot;

  /// Sacred SSOT file path (Constitutional Authority)
  static String get ssotPath {
    final relativePath = Platform.environment['SSOT_PATH'] ?? 'constitutional_core/ssot.yaml';
    // If we're already in imperial_governance directory, use current directory
    final currentDir = Directory.current.path;
    if (path.basename(currentDir) == 'imperial_governance') {
      return path.join(currentDir, relativePath);
    }
    return path.join(architecturePath, relativePath);
  }

  /// Generated files output directory (industry standard: target project)
  static String get outputPath {
    final relativePath = Platform.environment['OUTPUT_PATH'] ?? 'bus_kiok/lib/generated';
    // If we're in imperial_governance directory, use relative path to app
    final currentDir = Directory.current.path;
    if (path.basename(currentDir) == 'imperial_governance') {
      return path.join(currentDir, '../bus_kiok/lib/generated');
    }
    return path.join(projectRoot, relativePath);
  }

  /// Imperial Governance directory
  static String get architecturePath {
    final relativePath = Platform.environment['ARCH_RELATIVE_PATH'] ?? 'imperial_governance';
    // If we're already in imperial_governance directory or subdirectory, find it
    final currentDir = Directory.current.path;
    if (path.basename(currentDir) == 'imperial_governance') {
      return currentDir;
    }
    // Check if we're in a subdirectory of imperial_governance
    if (currentDir.contains('imperial_governance')) {
      final parts = path.split(currentDir);
      final govIndex = parts.lastIndexOf('imperial_governance');
      if (govIndex != -1) {
        return path.joinAll(parts.sublist(0, govIndex + 1));
      }
    }
    return path.join(projectRoot, relativePath);
  }

  /// Bus kiosk Flutter app directory
  static String get appPath {
    final relativePath = Platform.environment['FLUTTER_APP_PATH'] ?? 'bus_kiok';
    // If we're in imperial_governance, go up one level first
    final currentDir = Directory.current.path;
    if (currentDir.contains('imperial_governance')) {
      final parts = path.split(currentDir);
      final govIndex = parts.lastIndexOf('imperial_governance');
      if (govIndex != -1) {
        // Get path up to (but not including) imperial_governance, then add bus_kiok
        final busKioskRoot = path.joinAll(parts.sublist(0, govIndex));
        return path.join(busKioskRoot, relativePath);
      }
    }
    return path.join(projectRoot, relativePath);
  }

  /// Configuration for different environments
  static Map<String, String> get environmentConfig {
    switch (environment) {
      case 'production':
        return {
          'LOG_LEVEL': 'WARNING',
          'ENABLE_DEBUGGING': 'false',
          'VALIDATION_STRICT': 'true',
        };
      case 'staging':
        return {
          'LOG_LEVEL': 'INFO',
          'ENABLE_DEBUGGING': 'true',
          'VALIDATION_STRICT': 'true',
        };
      case 'development':
      default:
        return {
          'LOG_LEVEL': 'DEBUG',
          'ENABLE_DEBUGGING': 'true',
          'VALIDATION_STRICT': 'false',
        };
    }
  }

  /// Constitutional path validation - eliminates all file path issues
  static void validateEnvironment({bool validateAppPath = true}) {
    // Debug output (toggleable)
    // ignore: avoid_print
    print('🔍 Validating constitutional environment...');

    // Validate project root
    // ignore: avoid_print
    print('📍 Project root: $projectRoot');
    if (!Directory(projectRoot).existsSync()) {
      throw EnvironmentException('Project root does not exist: $projectRoot');
    }

    // Validate SSOT file (critical)
    // ignore: avoid_print
    print('📋 SSOT path: $ssotPath');
    if (!File(ssotPath).existsSync()) {
      throw EnvironmentException('Constitutional SSOT file missing: $ssotPath');
    }

    // Create output directory if missing
    final outputDir = Directory(outputPath);
    if (!outputDir.existsSync()) {
      // ignore: avoid_print
      print('📁 Creating output directory: $outputPath');
      outputDir.createSync(recursive: true);
    }

    // Validate architecture directory
    // ignore: avoid_print
    print('🏗️ Architecture path: $architecturePath');
    if (!Directory(architecturePath).existsSync()) {
      throw EnvironmentException('Architecture directory missing: $architecturePath');
    }

    // Validate app directory (optional)
    if (validateAppPath) {
      // ignore: avoid_print
      print('📱 App path: $appPath');
      if (!Directory(appPath).existsSync()) {
        throw EnvironmentException('App directory missing: $appPath');
      }
    }

    // ignore: avoid_print
    print('✅ Constitutional environment validated successfully');
  }

  /// Auto-discover project root by looking for constitutional markers
  /// This eliminates all relative path issues forever
  static String _discoverProjectRoot() {
    var current = Directory.current;

    // If we're starting from imperial_governance, go up one level
    if (path.basename(current.path) == 'imperial_governance') {
      current = current.parent;
    }

    // Constitutional markers (in priority order)
    final markers = [
      'bus_kiok/pubspec.yaml', // Flutter app marker (highest priority)
      'imperial_governance/constitutional_core/ssot.yaml', // SSOT file
      'DEVELOPMENT_PRINCIPLES.adoc', // Constitutional framework
      'bus_kiok', // Flutter app directory
      '.git', // Git repository
      'imperial_governance', // Architecture directory
      'pubspec.yaml', // Flutter project (lowest priority)
    ];

    while (current.path != current.parent.path) {
      for (final marker in markers) {
        final markerPath = path.join(current.path, marker);
        if (File(markerPath).existsSync() || Directory(markerPath).existsSync()) {
          // ignore: avoid_print
          print('🏛️ Project root discovered: ${current.path}');
          // ignore: avoid_print
          print('📍 Constitutional marker: $marker');
          return current.path;
        }
      }
      current = current.parent;
    }

    throw EnvironmentException('Could not discover project root. Missing constitutional markers: $markers');
  }

  /// Reset cached values (for testing)
  static void reset() {
    _projectRoot = null;
    _environment = null;
  }

  /// Print current configuration (for debugging)
  static void printConfig() {
    // ignore: avoid_print
    print('🏛️ Constitutional Environment Configuration');
    // ignore: avoid_print
    print('══════════════════════════════════════════');
    // ignore: avoid_print
    print('Environment: $environment');
    // ignore: avoid_print
    print('Project Root: $projectRoot');
    // ignore: avoid_print
    print('SSOT Path: $ssotPath');
    // ignore: avoid_print
    print('Output Path: $outputPath');
    print('Architecture Path: $architecturePath');
    print('App Path: $appPath');
    print('Config: $environmentConfig');
    // ignore: avoid_print
    print('══════════════════════════════════════════');
  }
}

/// Exception thrown when environment configuration is invalid
class EnvironmentException implements Exception {
  final String message;

  const EnvironmentException(this.message);

  @override
  String toString() => 'Environment Configuration Error: $message';
}
