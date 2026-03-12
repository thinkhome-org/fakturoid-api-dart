abstract class TokenStorage {
  /// Save access and refresh tokens along with their expiration date.
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
    required String tokenType,
    required DateTime expiresAt,
  });

  /// Retrieve the access token.
  Future<String?> getAccessToken();

  /// Retrieve the refresh token.
  Future<String?> getRefreshToken();

  /// Retrieve the token type.
  Future<String?> getTokenType();

  /// Retrieve the expiration date of the access token.
  Future<DateTime?> getExpiresAt();

  /// Check if the current token is valid (not expired).
  Future<bool> hasValidToken();

  /// Save PKCE verifier during the auth flow.
  Future<void> savePkceVerifier(String verifier);

  /// Retrieve PKCE verifier.
  Future<String?> getPkceVerifier();

  /// Clear PKCE verifier.
  Future<void> clearPkceVerifier();

  /// Save Auth State string during the auth flow to prevent CSRF.
  Future<void> saveAuthState(String state);

  /// Retrieve Auth State.
  Future<String?> getAuthState();

  /// Clear Auth State.
  Future<void> clearAuthState();

  /// Clear all stored data (tokens, verifiers, state).
  Future<void> clearAll();
}
