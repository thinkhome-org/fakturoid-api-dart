import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'token_storage.dart';

/// Nativní implementace TokenStorage využívající iOS Keychain a Android Keystore.
///
/// Podporuje [namespace] (např. slug účtu), což umožňuje bezpečně ukládat tokeny
/// pro více Fakturoid účtů zároveň v jedné aplikaci.
class SecureStorageService implements TokenStorage {
  final FlutterSecureStorage _storage;
  final String namespace;

  SecureStorageService({
    FlutterSecureStorage? storage,
    this.namespace = 'default',
  }) : _storage =
           storage ??
           const FlutterSecureStorage(
             aOptions: AndroidOptions(),
             iOptions: IOSOptions(
               accessibility: KeychainAccessibility.first_unlock,
             ),
           );

  String get _accessTokenKey => 'fakturoid_${namespace}_access_token';
  String get _refreshTokenKey => 'fakturoid_${namespace}_refresh_token';
  String get _tokenTypeKey => 'fakturoid_${namespace}_token_type';
  String get _expiresAtKey => 'fakturoid_${namespace}_expires_at';

  String get _pkceVerifierKey => 'fakturoid_${namespace}_pkce_verifier';
  String get _authStateKey => 'fakturoid_${namespace}_auth_state';

  @override
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
    required String tokenType,
    required DateTime expiresAt,
  }) async {
    await _storage.write(key: _accessTokenKey, value: accessToken);
    if (refreshToken == null) {
      await _storage.delete(key: _refreshTokenKey);
    } else {
      await _storage.write(key: _refreshTokenKey, value: refreshToken);
    }
    await _storage.write(key: _tokenTypeKey, value: tokenType);
    await _storage.write(
      key: _expiresAtKey,
      value: expiresAt.toIso8601String(),
    );
  }

  @override
  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _storage.read(key: _refreshTokenKey);
  }

  @override
  Future<String?> getTokenType() async {
    return await _storage.read(key: _tokenTypeKey);
  }

  @override
  Future<DateTime?> getExpiresAt() async {
    final dateString = await _storage.read(key: _expiresAtKey);
    if (dateString == null) return null;
    return DateTime.tryParse(dateString);
  }

  @override
  Future<bool> hasValidToken() async {
    final token = await getAccessToken();
    final expiresAt = await getExpiresAt();
    if (token == null || expiresAt == null) return false;
    // Přísnější buffer: 5 minut
    return expiresAt.isAfter(DateTime.now().add(const Duration(minutes: 5)));
  }

  @override
  Future<void> savePkceVerifier(String verifier) async {
    await _storage.write(key: _pkceVerifierKey, value: verifier);
  }

  @override
  Future<String?> getPkceVerifier() async {
    return await _storage.read(key: _pkceVerifierKey);
  }

  @override
  Future<void> clearPkceVerifier() async {
    await _storage.delete(key: _pkceVerifierKey);
  }

  @override
  Future<void> saveAuthState(String state) async {
    await _storage.write(key: _authStateKey, value: state);
  }

  @override
  Future<String?> getAuthState() async {
    return await _storage.read(key: _authStateKey);
  }

  @override
  Future<void> clearAuthState() async {
    await _storage.delete(key: _authStateKey);
  }

  @override
  Future<void> clearAll() async {
    await _storage.delete(key: _accessTokenKey);
    await _storage.delete(key: _refreshTokenKey);
    await _storage.delete(key: _tokenTypeKey);
    await _storage.delete(key: _expiresAtKey);
    await clearPkceVerifier();
    await clearAuthState();
  }
}
