import 'dart:convert';
import 'package:dio/dio.dart';
import 'token_storage.dart';
import 'token_model.dart';
import 'pkce/pkce_utils.dart';

class AuthRepository {
  final Dio _dio;
  final TokenStorage _tokenStorage;
  final String _clientId;
  final String _clientSecret;
  final String _redirectUri;
  final String _userAgent;

  static const String _oauthAuthUrl = 'https://app.fakturoid.cz/api/v3/oauth';
  static const String _oauthTokenUrl =
      'https://app.fakturoid.cz/api/v3/oauth/token';

  AuthRepository({
    required Dio dio,
    required TokenStorage tokenStorage,
    required String clientId,
    required String clientSecret,
    required String redirectUri,
    required String userAgent,
  }) : _dio = dio,
       _tokenStorage = tokenStorage,
       _clientId = clientId,
       _clientSecret = clientSecret,
       _redirectUri = redirectUri,
       _userAgent = userAgent;

  Map<String, String> _createAuthHeaders() {
    final credentials = base64Encode(
      utf8.encode('$_clientId:$_clientSecret'),
    );

    return {
      'User-Agent': _userAgent,
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Basic $credentials',
    };
  }

  /// Generates the OAuth 2.0 authorization URL for Authorization Code Flow with PKCE.
  /// This method saves the generated PKCE verifier and state securely to `TokenStorage`.
  /// Use the returned URL to launch a browser or webview so the user can authenticate.
  Future<String> getAuthorizationUrl() async {
    final codeVerifier = PkceUtils.generateCodeVerifier();
    final codeChallenge = PkceUtils.generateCodeChallenge(codeVerifier);

    // Create a secure state to prevent CSRF attacks
    final stateBytes = List<int>.generate(
      16,
      (i) => DateTime.now().microsecondsSinceEpoch % 256,
    );
    final state = base64UrlEncode(stateBytes).replaceAll('=', '');

    await _tokenStorage.savePkceVerifier(codeVerifier);
    await _tokenStorage.saveAuthState(state);

    final authUri = Uri.parse(_oauthAuthUrl).replace(
      queryParameters: {
        'client_id': _clientId,
        'redirect_uri': _redirectUri,
        'response_type': 'code',
        'state': state,
        'code_challenge': codeChallenge,
        'code_challenge_method': 'S256',
      },
    );

    return authUri.toString();
  }

  /// Exchanges the authorization code received from the callback URI for an access token.
  /// Throws an exception if the state does not match (CSRF check failed) or if the API call fails.
  Future<void> exchangeAuthorizationCode(Uri callbackUri) async {
    if (callbackUri.queryParameters.containsKey('error')) {
      throw Exception(
        'Authorization failed: ${callbackUri.queryParameters['error_description']}',
      );
    }

    final code = callbackUri.queryParameters['code'];
    final returnedState = callbackUri.queryParameters['state'];

    if (code == null) {
      throw Exception('No code returned from authorization');
    }

    final savedState = await _tokenStorage.getAuthState();
    if (savedState == null || savedState != returnedState) {
      throw Exception('CSRF Check Failed: State does not match');
    }

    final codeVerifier = await _tokenStorage.getPkceVerifier();
    if (codeVerifier == null) {
      throw Exception('PKCE verifier missing');
    }

    try {
      final response = await _dio.post(
        _oauthTokenUrl,
        options: Options(headers: _createAuthHeaders()),
        data: {
          'redirect_uri': _redirectUri,
          'grant_type': 'authorization_code',
          'code': code,
          'code_verifier': codeVerifier,
        },
      );

      final tokenModel = TokenModel.fromJson(response.data);
      await _tokenStorage.saveTokens(
        accessToken: tokenModel.accessToken,
        refreshToken: tokenModel.refreshToken,
        tokenType: tokenModel.tokenType,
        expiresAt: tokenModel.expiresAt,
      );
    } finally {
      // Clean up verification data
      await _tokenStorage.clearPkceVerifier();
      await _tokenStorage.clearAuthState();
    }
  }

  /// Performs Client Credentials Flow.
  /// Generally used for scripts or server-side communication. Not recommended for multi-tenant mobile apps.
  Future<void> loginWithClientCredentials() async {
    final response = await _dio.post(
      _oauthTokenUrl,
      options: Options(headers: _createAuthHeaders()),
      data: {'grant_type': 'client_credentials'},
    );

    final tokenModel = TokenModel.fromJson(response.data);
    await _tokenStorage.saveTokens(
      accessToken: tokenModel.accessToken,
      refreshToken: null,
      tokenType: tokenModel.tokenType,
      expiresAt: tokenModel.expiresAt,
    );
  }

  /// Refreshes the access token using the stored refresh token.
  Future<String?> refreshToken() async {
    final currentRefreshToken = await _tokenStorage.getRefreshToken();
    if (currentRefreshToken == null || currentRefreshToken.isEmpty) {
      return null;
    }

    final response = await _dio.post(
      _oauthTokenUrl,
      options: Options(headers: _createAuthHeaders()),
      data: {
        'grant_type': 'refresh_token',
        'refresh_token': currentRefreshToken,
      },
    );

    final tokenModel = TokenModel.fromJson(response.data);
    await _tokenStorage.saveTokens(
      accessToken: tokenModel.accessToken,
      refreshToken: tokenModel.refreshToken ?? currentRefreshToken,
      tokenType: tokenModel.tokenType,
      expiresAt: tokenModel.expiresAt,
    );

    return tokenModel.accessToken;
  }

  Future<void> revokeToken({String? refreshToken}) async {
    final tokenToRevoke =
        refreshToken ??
        await _tokenStorage.getRefreshToken() ??
        await _tokenStorage.getAccessToken();

    if (tokenToRevoke == null || tokenToRevoke.isEmpty) {
      await _tokenStorage.clearAll();
      return;
    }

    await _dio.post(
      'https://app.fakturoid.cz/api/v3/oauth/revoke',
      options: Options(headers: _createAuthHeaders()),
      data: {'token': tokenToRevoke},
    );

    await _tokenStorage.clearAll();
  }

  /// Clears all stored tokens and auth state, effectively logging the user out locally.
  Future<void> logout({bool revokeRemote = false}) async {
    if (revokeRemote) {
      await revokeToken();
      return;
    }

    await _tokenStorage.clearAll();
  }
}
