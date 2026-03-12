# Fakturoid API (Flutter SDK)

Neoficiální, čistý a bezpečný Flutter (Dart) obal (wrapper) pro [Fakturoid API v3](https://www.fakturoid.cz/api/v3). 

Tento balíček je navržen tak, aby poskytoval **maximální bezpečnost** (nativní podpora PKCE, ochrana proti CSRF) a **špičkovou Enterprise architekturu** (headless, immutable modely přes Freezed, strongly-typed Exceptions, multi-tenant Keychain).

## 🚀 Hlavní vlastnosti

* **Headless Autentizace:** Balíček neobsahuje žádné závislosti na `webview`, `url_launcher` nebo `app_links`. Poskytuje pouze logiku pro vygenerování URL a zpracování callbacku. Jak otevřete prohlížeč a zachytíte redirect je čistě na vaší aplikaci.
* **Multi-Tenant Secure Storage:** Nativní integrace `flutter_secure_storage` využívá *namespace* (podle slugu). Díky tomu může být v jedné mobilní aplikaci přihlášeno **více Fakturoid účtů (firem) současně**, aniž by si v Keychainu/Keystoru přepsaly klíče!
* **OAuth 2.0 s PKCE & CSRF:** Plná podpora moderního zabezpečení mobilních aplikací. Balíček automaticky spravuje `code_verifier`, `code_challenge` a state tokeny k zamezení Man-In-The-Middle útoků.
* **Automatický Token Refresh (Thread-safe):** Chytrý Dio Interceptor. Pokud token vyprší a appka střílí 5 requestů naráz, interceptor je pozdrží, tiše a na pozadí provede jeden Refresh, uloží klíče do Keychainu a zopakuje všechny původní požadavky. UI vrstva nepozná žádný zádrhel.
* **Immutability (Freezed):** Všechny modely (např. `Subject`, `Invoice`) jsou generovány pomocí balíčku `freezed`. Poskytují metody jako `.copyWith()`, hluboké porovnávání `==` a stoprocentní null-safety JSON serializaci.
* **Typované Výjimky:** Odchytáváme Dio errory a překládáme je. Tvé UI může snadno reagovat přes `catch (e)` na `FakturoidAuthException`, `FakturoidRateLimitException` (429) nebo `FakturoidValidationException` (422 - typicky špatně vyplněné údaje formuláře).

## 🏗 Jak architektura funguje

### 1. `FakturoidClient`
Hlavní vstupní bod celého SDK. Drží instanci `Dio` klienta, interceptory, token storage a zpřístupňuje jednotlivé repozitáře (např. `client.subjects`, `client.invoices` atd.).

### 2. Autentizace (`AuthRepository`)
1. Vývojář zavolá `client.auth.getAuthorizationUrl()`.
2. SDK vygeneruje `state`, PKCE parametry, uloží je do Keychainu a vrátí sestavenou URL.
3. Vývojář tuto URL ve své appce otevře uživateli (např. `url_launcher`).
4. Po přihlášení je aplikace probuzena přes Deep Link (např. balíčkem `app_links`).
5. Vývojář předá URL do SDK: `client.auth.exchangeAuthorizationCode(url)`. SDK ověří state, vymění PKCE kód a uloží Access Token.

## 💻 Příklad použití

```dart
import 'package:fakturoid_api/fakturoid_api.dart';
import 'package:url_launcher/url_launcher.dart'; // Tvoje UI závislost

void main() async {
  // 1. Inicializace klienta
  final client = FakturoidClient(
    slug: 'mojefirma', // Slug tvé firmy = Namespace pro SecureStorage!
    clientId: 'tvuj_client_id',
    clientSecret: 'tvuj_client_secret',
    redirectUri: 'mojeapp://callback', 
    userAgent: 'MojeApp (jan@novak.cz)', // Fakturoid vyžaduje identifikaci aplikace a e-mail
  );

  // 2. Otevření URL
  final authUrl = await client.auth.getAuthorizationUrl();
  await launchUrl(Uri.parse(authUrl));

  // 3. Po návratu z prohlížeče (v praxi chyceno přes např. app_links)
  final incomingUri = Uri.parse('mojeapp://callback?code=CODE123&state=STATE123');

  try {
    await client.auth.exchangeAuthorizationCode(incomingUri);
    print('Úspěšně přihlášeno!');

    // 4. Volání chráněného API
    final subjects = await client.subjects.getSubjects(page: 1);
    for (var sub in subjects) {
      print('Kontakt: ${sub.name}');
    }

  } on FakturoidValidationException catch (e) {
    print('Validační chyba API: ${e.errors}'); // 422 errory
  } on FakturoidRateLimitException catch (e) {
    print('Příliš mnoho dotazů (429)');
  } catch (e) {
    print('Něco se pokazilo: $e');
  }
}jes
```

## 🛠 Plánovaný vývoj (Roadmap)

- [x] Enterprise Architektura (Freezed, Custom Exceptions)
- [x] Autentizace (OAuth2 PKCE, Client Credentials)
- [x] Nativní Keychain Storage s podporou Multi-Tenant (namespace podle slugu)
- [x] Account (Účet)
- [x] Users (Uživatelé)
- [x] Subjects (Kontakty) - CRUD
- [x] Invoices (Faktury) - CRUD, PDF stahování, fire actions
- [x] Invoice Payments (Platby faktur)
- [x] Invoice Messages (Odesílání faktur e-mailem)
- [x] Expenses (Náklady/Přijaté faktury) - CRUD, fulltext hledání, fire actions
- [x] Expense Payments (Platby nákladů)
- [x] Bank Accounts (Bankovní účty)
- [x] Number Formats (Číselné řady)
- [x] Inventory Items (Sklad a položky ceníku)
- [x] Inventory Moves (Skladové pohyby)
- [x] Generators (Šablony pravidelných faktur)
- [x] Recurring Generators (Pravidelné faktury)
- [x] Inbox Files (Zprávy a přílohy v Inboxu / OCR)
- [x] Todos (Úkoly)
- [x] Events (Události)
- [x] Webhooks (Webhooky)
