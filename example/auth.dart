import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka různých způsobů autentizace ve Fakturoid API.
Future<void> runAuthExample() async {
  print('--- Autentizace ---');

  // 1. Client Credentials Flow (vhodné pro backend/server-to-server)
  final clientCredentialsClient = FakturoidClient(
    slug: 'mojefirma',
    clientId: 'CLIENT_ID',
    clientSecret: 'CLIENT_SECRET',
    redirectUri: 'https://moje-appka.cz/callback',
    userAgent: 'MojeAppka (admin@mojefirma.cz)',
  );

  try {
    // Přihlášení pomocí Client Credentials
    await clientCredentialsClient.auth.loginWithClientCredentials();
    print('✅ Client Credentials login úspěšný.');

    final account = await clientCredentialsClient.account.getAccount();
    print('Přihlášen k účtu: ${account.name}');
  } catch (e) {
    print('❌ Client Credentials login selhal: $e');
  }

  // 2. Authorization Code Flow s PKCE (vhodné pro mobilní/desktop aplikace)
  final oauthClient = FakturoidClient(
    slug: 'mojefirma',
    clientId: 'CLIENT_ID',
    clientSecret: 'CLIENT_SECRET',
    redirectUri: 'mojeapp://callback',
    userAgent: 'MojeAppka (admin@mojefirma.cz)',
  );

  // A) Získání URL pro prohlížeč
  final authUrl = await oauthClient.auth.getAuthorizationUrl();
  print('🔗 Otevřete tuto URL v prohlížeči: $authUrl');

  // B) Poté, co uživatel potvrdí přístup, Fakturoid ho přesměruje zpět
  // na vaši redirectUri s parametry 'code' a 'state'.
  // final callbackUri = Uri.parse('mojeapp://callback?code=ZISKANY_KOD&state=ULOZENY_STATE');

  print(
    'ℹ️ Po získání callbacku zavolejte: client.auth.exchangeAuthorizationCode(callbackUri)',
  );

  // C) Obnova tokenu (pokud je dostupný refresh_token)
  // await oauthClient.auth.refreshToken();

  // D) Odhlášení a zneplatnění tokenu
  // await oauthClient.auth.logout(revokeRemote: true);
}
