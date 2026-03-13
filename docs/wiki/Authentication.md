# Autentizace a správa tokenů

Fakturoid API v3 využívá výhradně **OAuth 2.0**. SDK podporuje oba hlavní toky používané ve Fakturoidu.

## 🔑 Metody přihlášení

### 1. Client Credentials Flow (Server-to-Server)
Ideální pro skripty nebo interní nástroje, kde neběží interakce s koncovým uživatelem.

```dart
final client = FakturoidClient(...);
await client.auth.loginWithClientCredentials();
// SDK nyní automaticky spravuje accessToken
```

### 2. Authorization Code Flow s PKCE (Pro uživatelské aplikace)
Standardní tok pro webové a mobilní aplikace, kde se uživatel přihlašuje přes prohlížeč.

```dart
final client = FakturoidClient(...);

// A) Získání URL pro prohlížeč
final authUrl = await client.auth.getAuthorizationUrl();
// Otevřete authUrl v in-app browseru

// B) Po přesměrování zpět do aplikace získáte callback URI
final callbackUri = Uri.parse('mojeapp://callback?code=...&state=...');
await client.auth.exchangeAuthorizationCode(callbackUri);
```

## 💾 Správa tokenů (TokenStorage)

SDK automaticky ukládá a obnovuje tokeny. Výchozí implementace je:
*   **SecureStorageService:** Používá `flutter_secure_storage` (iOS Keychain / Android Keystore).
*   **InMemoryTokenStorage:** Používá se v testech nebo tam, kde není potřeba perzistence.

Můžete implementovat vlastní úložiště pomocí rozhraní `TokenStorage`:

```dart
class MyDatabaseTokenStorage implements TokenStorage {
  @override
  Future<void> saveTokens({required String accessToken, ...}) async {
    // Uložit do vaší DB
  }
  // ... implementace dalších metod
}
```

## 🔄 Automatická obnova (Refresh)

SDK obsahuje `FakturoidAuthInterceptor`, který:
1.  Před každým požadavkem kontroluje platnost tokenu.
2.  Pokud token vypršel, automaticky zavolá refresh endpoint.
3.  Uloží nové tokeny a pokračuje v původním požadavku.
4.  Vše probíhá transparentně, nemusíte volat refresh ručně.

---
[Předchozí: Začínáme](Usage-Guide.md) | [Zpět na Home](Home.md) | [Pokračovat na Repozitáře](Repositories.md)
