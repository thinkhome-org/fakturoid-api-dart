import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/test_helpers.dart';

const _requiredEnvironmentKeys = <String>[
  'FAKTUROID_CLIENT_ID',
  'FAKTUROID_CLIENT_SECRET',
];

const _defaultRedirectUri = 'https://example.com/callback';

bool get _hasLiveEnvironment {
  return _requiredEnvironmentKeys.every((key) {
    final value = Platform.environment[key];
    return value != null && value.isNotEmpty;
  });
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
    'client credentials can fetch bootstrap resources from live API',
    () async {
      final tokenStorage = InMemoryTokenStorage();
      final bootstrapClient = FakturoidClient(
        slug: Platform.environment['FAKTUROID_SLUG'] ?? 'bootstrap',
        clientId: Platform.environment['FAKTUROID_CLIENT_ID']!,
        clientSecret: Platform.environment['FAKTUROID_CLIENT_SECRET']!,
        redirectUri:
            Platform.environment['FAKTUROID_REDIRECT_URI'] ??
            _defaultRedirectUri,
        userAgent:
            Platform.environment['FAKTUROID_USER_AGENT'] ??
            'Fakturoid API SDK Smoke Test (dev@example.com)',
        customTokenStorage: tokenStorage,
      );

      await bootstrapClient.auth.loginWithClientCredentials();

      final user = await bootstrapClient.users.getCurrentUser();
      final slug = Platform.environment['FAKTUROID_SLUG'] ?? _resolveSlug(user);
      final client = FakturoidClient(
        slug: slug,
        clientId: Platform.environment['FAKTUROID_CLIENT_ID']!,
        clientSecret: Platform.environment['FAKTUROID_CLIENT_SECRET']!,
        redirectUri:
            Platform.environment['FAKTUROID_REDIRECT_URI'] ??
            _defaultRedirectUri,
        userAgent:
            Platform.environment['FAKTUROID_USER_AGENT'] ??
            'Fakturoid API SDK Smoke Test (dev@example.com)',
        customTokenStorage: tokenStorage,
      );

      final account = await client.account.getAccount();
      final numberFormats = await client.numberFormats.getNumberFormats();

      expect(await tokenStorage.getAccessToken(), isNotEmpty);
      expect(user, isA<User>());
      expect(slug, isNotEmpty);
      expect(account, isA<Account>());
      expect(numberFormats, isA<List<NumberFormat>>());
    },
    skip: !_hasLiveEnvironment,
  );
}
