import 'dart:convert';
import 'package:encrypt/encrypt.dart' as enc;

/// PII Encryption Service
/// Handles encryption and decryption of Personally Identifiable Information
///
/// The secret key is injected at runtime via --dart-define
/// Backend sends encrypted PII data, frontend decrypts it for display
class PiiEncryptionService {
  // Private constructor for singleton pattern
  PiiEncryptionService._();

  static final PiiEncryptionService _instance = PiiEncryptionService._();
  static PiiEncryptionService get instance => _instance;

  /// Encryption key injected at runtime
  /// Usage: flutter run --dart-define=PII_ENCRYPTION_KEY=your-32-char-key
  static String get _encryptionKey {
    return const String.fromEnvironment(
      'PII_ENCRYPTION_KEY',
      defaultValue: 'dev-key-32chars-for-testing!', // Development only
    );
  }

  late final enc.Key _key;
  late final enc.IV _iv;
  late final enc.Encrypter _encrypter;

  /// Initialize the encryption service
  void initialize() {
    // Ensure key is 32 characters for AES-256
    final keyBytes = utf8.encode(_encryptionKey.padRight(32).substring(0, 32));
    _key = enc.Key(keyBytes);

    // Static IV for consistent encryption/decryption
    // In production, consider using per-record IVs stored with encrypted data
    _iv = enc.IV.fromLength(16);

    _encrypter = enc.Encrypter(enc.AES(_key, mode: enc.AESMode.cbc));
  }

  /// Decrypt encrypted PII data received from backend
  String decrypt(String encryptedData) {
    try {
      final encrypted = enc.Encrypted.fromBase64(encryptedData);
      return _encrypter.decrypt(encrypted, iv: _iv);
    } catch (e) {
      // Log error in production
      return '[Decryption Error]';
    }
  }

  /// Encrypt PII data (if needed for sending to backend)
  String encryptData(String plainText) {
    try {
      final encrypted = _encrypter.encrypt(plainText, iv: _iv);
      return encrypted.base64;
    } catch (e) {
      // Log error in production
      throw Exception('Encryption failed: $e');
    }
  }

  /// Decrypt multiple fields at once
  Map<String, String> decryptMap(Map<String, String> encryptedData) {
    return encryptedData.map(
      (key, value) => MapEntry(key, decrypt(value)),
    );
  }

  /// Check if encryption service is properly configured
  bool get isConfigured => _encryptionKey.isNotEmpty;
}
