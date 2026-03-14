import 'dart:io';

import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  test(
    'authorization section supports client credentials bootstrap',
    () async {
      if (!hasLiveEnvironment) {
        return;
      }

      final tokenStorage = InMemoryTokenStorage();
      final bootstrapClient = FakturoidClient(
        slug: Platform.environment['FAKTUROID_SLUG'] ?? 'bootstrap',
        clientId: env('FAKTUROID_CLIENT_ID'),
        clientSecret: env('FAKTUROID_CLIENT_SECRET'),
        redirectUri:
            Platform.environment['FAKTUROID_REDIRECT_URI'] ??
            defaultRedirectUri,
        userAgent: userAgent(),
        customTokenStorage: tokenStorage,
      );

      await bootstrapClient.auth.loginWithClientCredentials();
      final user = await bootstrapClient.users.getCurrentUser();
      final slug = Platform.environment['FAKTUROID_SLUG'] ?? resolveSlug(user);
      final client = FakturoidClient(
        slug: slug,
        clientId: env('FAKTUROID_CLIENT_ID'),
        clientSecret: env('FAKTUROID_CLIENT_SECRET'),
        redirectUri:
            Platform.environment['FAKTUROID_REDIRECT_URI'] ??
            defaultRedirectUri,
        userAgent: userAgent(),
        customTokenStorage: tokenStorage,
      );

      expect(await tokenStorage.getAccessToken(), isNotEmpty);
      expect(await tokenStorage.getRefreshToken(), isNull);
      expect(slug, isNotEmpty);
      expect(client.account, isA<AccountRepository>());

      await client.auth.logout();
      expect(await tokenStorage.getAccessToken(), isNull);
    },
    skip: !hasLiveEnvironment,
  );

  test(
    'authorization section supports auth code when callback is provided',
    () async {
      if (!hasAuthCodeEnvironment) {
        return;
      }

      final session = loadOAuthSession();
      final urlTokenStorage = InMemoryTokenStorage();
      final urlClient = FakturoidClient(
        slug: Platform.environment['FAKTUROID_SLUG'] ?? 'bootstrap',
        clientId: oauthClientId(),
        clientSecret: oauthClientSecret(),
        redirectUri: oauthRedirectUri(),
        userAgent: userAgent(),
        customTokenStorage: urlTokenStorage,
      );
      final authorizationUrl = await urlClient.auth.getAuthorizationUrl();
      expect(authorizationUrl.toString(), contains('/oauth'));

      final tokenStorage = InMemoryTokenStorage();
      await tokenStorage.saveAuthState(session['state'] as String);
      await tokenStorage.savePkceVerifier(session['verifier'] as String);

      final redirectUri =
          Platform.environment['FAKTUROID_OAUTH_REDIRECT_URI'] ??
          Platform.environment['FAKTUROID_REDIRECT_URI'] ??
          (session['redirect_uri'] as String? ?? defaultRedirectUri);
      final bootstrapClient = FakturoidClient(
        slug: Platform.environment['FAKTUROID_SLUG'] ?? 'bootstrap',
        clientId: oauthClientId(),
        clientSecret: oauthClientSecret(),
        redirectUri: redirectUri,
        userAgent: userAgent(),
        customTokenStorage: tokenStorage,
      );

      await bootstrapClient.auth.exchangeAuthorizationCode(
        Uri.parse(Platform.environment['FAKTUROID_OAUTH_CALLBACK_URI']!),
      );
      final refreshedToken = await bootstrapClient.auth.refreshToken();

      final user = await bootstrapClient.users.getCurrentUser();
      expect(await tokenStorage.getAccessToken(), isNotEmpty);
      expect(await tokenStorage.getRefreshToken(), isNotEmpty);
      expect(refreshedToken, isNotEmpty);
      expect(resolveSlug(user), isNotEmpty);

      await bootstrapClient.auth.revokeToken();
      expect(await tokenStorage.getAccessToken(), isNull);
    },
    skip: !hasAuthCodeEnvironment,
  );
}
