import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/test_helpers.dart';

const _requiredEnvironmentKeys = <String>[
  'FAKTUROID_CLIENT_ID',
  'FAKTUROID_CLIENT_SECRET',
  'FAKTUROID_OAUTH_CALLBACK_URI',
];

const _defaultRedirectUri = 'https://example.com/callback';
const _defaultSessionFile = '/tmp/fakturoid_oauth_session.json';

bool get _hasAuthCodeEnvironment {
  return _requiredEnvironmentKeys.every((key) {
    final value = Platform.environment[key];
    return value != null && value.isNotEmpty;
  });
}

Map<String, dynamic> _loadSession() {
  final sessionFile =
      Platform.environment['FAKTUROID_OAUTH_SESSION_FILE'] ??
      _defaultSessionFile;
  final sessionJson = File(sessionFile).readAsStringSync();
  return jsonDecode(sessionJson) as Map<String, dynamic>;
}

String _resolveSlug(User user) {
  final defaultAccount = user.defaultAccount;
  if (defaultAccount != null && defaultAccount.isNotEmpty) {
    return defaultAccount;
  }

  final accounts = user.accounts;
  if (accounts != null) {
    for (final account in accounts) {
      final slug = account.slug;
      if (slug != null && slug.isNotEmpty) {
        return slug;
      }
    }
  }

  throw StateError('Unable to resolve Fakturoid account slug from /user.json.');
}

void main() {
  test(
    'authorization code flow can fetch bootstrap resources from live API',
    () async {
      final session = _loadSession();
      final tokenStorage = InMemoryTokenStorage();
      await tokenStorage.saveAuthState(session['state'] as String);
      await tokenStorage.savePkceVerifier(session['verifier'] as String);

      final redirectUri =
          Platform.environment['FAKTUROID_REDIRECT_URI'] ??
          (session['redirect_uri'] as String? ?? _defaultRedirectUri);
      final userAgent =
          Platform.environment['FAKTUROID_USER_AGENT'] ??
          'Fakturoid API OAuth Test (dev@example.com)';

      final bootstrapClient = FakturoidClient(
        slug: Platform.environment['FAKTUROID_SLUG'] ?? 'bootstrap',
        clientId: Platform.environment['FAKTUROID_CLIENT_ID']!,
        clientSecret: Platform.environment['FAKTUROID_CLIENT_SECRET']!,
        redirectUri: redirectUri,
        userAgent: userAgent,
        customTokenStorage: tokenStorage,
      );

      await bootstrapClient.auth.exchangeAuthorizationCode(
        Uri.parse(Platform.environment['FAKTUROID_OAUTH_CALLBACK_URI']!),
      );

      final user = await bootstrapClient.users.getCurrentUser();
      final slug = Platform.environment['FAKTUROID_SLUG'] ?? _resolveSlug(user);
      final client = FakturoidClient(
        slug: slug,
        clientId: Platform.environment['FAKTUROID_CLIENT_ID']!,
        clientSecret: Platform.environment['FAKTUROID_CLIENT_SECRET']!,
        redirectUri: redirectUri,
        userAgent: userAgent,
        customTokenStorage: tokenStorage,
      );

      final account = await client.account.getAccount();
      final numberFormats = await client.numberFormats.getNumberFormats();

      expect(await tokenStorage.getAccessToken(), isNotEmpty);
      expect(await tokenStorage.getRefreshToken(), isNotEmpty);
      expect(user, isA<User>());
      expect(slug, isNotEmpty);
      expect(account, isA<Account>());
      expect(numberFormats, isNotEmpty);

      await client.auth.revokeToken();
      expect(await tokenStorage.getAccessToken(), isNull);
    },
    skip: !_hasAuthCodeEnvironment,
  );
}
