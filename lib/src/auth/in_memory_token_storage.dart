import 'token_storage.dart';

/// Jednoduchá implementace [TokenStorage] uchovávající data pouze v paměti.
///
/// Vhodné pro CLI aplikace, testy nebo pokud si uživatel nepřeje perzistentní ukládání.
final class InMemoryTokenStorage implements TokenStorage {
  String? _accessToken;
  String? _refreshToken;
  String? _tokenType;
  DateTime? _expiresAt;
  String? _pkceVerifier;
  String? _authState;

  @override
  Future<void> clearAll() async {
    _accessToken = null;
    _refreshToken = null;
    _tokenType = null;
    _expiresAt = null;
    _pkceVerifier = null;
    _authState = null;
  }

  @override
  Future<void> clearAuthState() async {
    _authState = null;
  }

  @override
  Future<void> clearPkceVerifier() async {
    _pkceVerifier = null;
  }

  @override
  Future<String?> getAccessToken() async => _accessToken;

  @override
  Future<String?> getAuthState() async => _authState;

  @override
  Future<DateTime?> getExpiresAt() async => _expiresAt;

  @override
  Future<String?> getPkceVerifier() async => _pkceVerifier;

  @override
  Future<String?> getRefreshToken() async => _refreshToken;

  @override
  Future<String?> getTokenType() async => _tokenType;

  @override
  Future<bool> hasValidToken() async {
    final expiresAt = _expiresAt;
    if (_accessToken == null || expiresAt == null) return false;
    return expiresAt.isAfter(DateTime.now().add(const Duration(minutes: 5)));
  }

  @override
  Future<void> saveAuthState(String state) async {
    _authState = state;
  }

  @override
  Future<void> savePkceVerifier(String verifier) async {
    _pkceVerifier = verifier;
  }

  @override
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
    required String tokenType,
    required DateTime expiresAt,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _tokenType = tokenType;
    _expiresAt = expiresAt;
  }
}
