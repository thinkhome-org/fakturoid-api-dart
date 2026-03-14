# Autentizace a správa tokenů

Fakturoid API v3 využívá výhradně **OAuth 2.0**. SDK podporuje oba hlavní toky používané ve Fakturoidu.

## 🔑 Metody přihlášení

### 1. Client Credentials Flow (Server-to-Server)
Ideální pro skripty nebo interní nástroje, kde neběží interakce s koncovým uživatelem.

```dart
Future<void> main() async {
  final client = FakturoidClient(
    slug: 'mojefirma',
    clientId: 'CLIENT_ID',
    clientSecret: 'CLIENT_SECRET',
    redirectUri: 'https://example.com/callback',
    userAgent: 'MojeApp (jan@novak.cz)',
  );

  await client.auth.loginWithClientCredentials();
}
```

### 2. Authorization Code Flow s PKCE (Pro uživatelské aplikace)
Standardní tok pro webové a mobilní aplikace, kde se uživatel přihlašuje přes prohlížeč.

```dart
Future<void> login(FakturoidClient client) async {
  final authUrl = await client.auth.getAuthorizationUrl();
  // Otevřete authUrl v prohlížeči

  final callbackUri = Uri.parse('mojeapp://callback?code=CODE&state=STATE');
  await client.auth.exchangeAuthorizationCode(callbackUri);
}
```

## 💾 Správa tokenů (TokenStorage)

SDK automaticky ukládá a obnovuje tokeny. Výchozí implementace je:
*   **SecureStorageService:** Používá `flutter_secure_storage`.
*   **InMemoryTokenStorage:** Používá se v testech.

Můžete implementovat vlastní úložiště pomocí rozhraní `TokenStorage`:

```dart
class MyTokenStorage implements TokenStorage {
  @override
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
    required String tokenType,
    required DateTime expiresAt,
  }) async {}

  @override
  Future<Map<String, String?>> getTokens() async => {};

  @override
  Future<void> clearAll() async {}

  @override
  Future<void> saveAuthState(String state) async {}

  @override
  Future<String?> getAuthState() async => null;

  @override
  Future<void> savePkceVerifier(String verifier) async {}

  @override
  Future<String?> getPkceVerifier() async => null;
}
```

## 🔄 Automatická obnova (Refresh)

SDK obsahuje `FakturoidAuthInterceptor`, který automaticky obnovuje tokeny před vypršením platnosti.

---
[Předchozí: Začínáme](Usage-Guide.md) | [Zpět na Home](Home.md) | [Pokračovat na Repozitáře](Repositories.md)
