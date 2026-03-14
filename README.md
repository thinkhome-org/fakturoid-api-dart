# Fakturoid API v3 Dart SDK

[![Pub.dev](https://img.shields.io/pub/v/fakturoid_api_dart?color=blue)](https://pub.dev/packages/fakturoid_api_dart)
[![License](https://img.shields.io/github/license/thinkhome-org/fakturoid-api-dart)](LICENSE)
[![Test and Lint](https://github.com/thinkhome-org/fakturoid-api-dart/actions/workflows/test-and-lint.yml/badge.svg)](https://github.com/thinkhome-org/fakturoid-api-dart/actions/workflows/test-and-lint.yml)

Kompletní a moderní Dart SDK pro **Fakturoid API v3**. Navrženo pro čistý Dart (backend, CLI) i Flutter aplikace. Zaměřuje se na typovou bezpečnost, snadné použití a 100% paritu s oficiální dokumentací.

---

## 📖 Dokumentace (Wiki)

Tento balíček pokrývá kompletní agendu Fakturoidu. Detailní ukázky pro každou část najdete v adresáři [`examples/`](./examples).

### 🚀 Instalace

Přidejte do svého `pubspec.yaml`:

```yaml
dependencies:
  fakturoid_api_dart: ^0.0.1
```

### 🔐 Autentizace

SDK podporuje oba hlavní toky OAuth 2.0. Pro ukládání tokenů se v základu používá `InMemoryTokenStorage`. Pro perzistentní ukládání (např. do Keychain/Keystore ve Flutteru) si implementujte vlastní `TokenStorage`.

#### 1. Client Credentials (Backend / CLI)
Vhodné, pokud přistupujete k vlastním datům nebo ze serveru.

```dart
final client = FakturoidClient(
  slug: 'mojefirma',
  clientId: '...',
  clientSecret: '...',
  redirectUri: 'https://mojeapp.cz/callback',
  userAgent: 'MojeApp (admin@mojefirma.cz)',
);

await client.auth.loginWithClientCredentials();
```

#### 2. Authorization Code Flow s PKCE (Aplikace)
Bezpečný tok pro aplikace, kde uživatel schvaluje přístup v prohlížeči.

```dart
// Získání URL pro prohlížeč
final authUrl = await client.auth.getAuthorizationUrl();
// ... po návratu z prohlížeče zpracujte callback URL ...
await client.auth.exchangeAuthorizationCode(Uri.parse(callbackUrl));
```

---

### 📦 Agendy (Repozitáře)

Všechny agendy jsou dostupné skrze instanci `FakturoidClient`.

| Agenda | Repozitář | Hlavní funkce |
| :--- | :--- | :--- |
| **Faktury** | `client.invoices` | CRUD, vyhledávání, odesílání, PDF, akce (`fireAction`). |
| **Odhady** | `client.estimates` | Práce s nabídkami, PDF, schvalování. |
| **Náklady** | `client.expenses` | Přijaté faktury, platby, přílohy. |
| **Kontakty** | `client.subjects` | Správa odběratelů a dodavatelů, archivace. |
| **Sklad** | `client.inventoryItems`| Ceník, skladové zásoby, pohyby (`inventoryMoves`). |
| **Automatizace**| `client.generators` | Šablony a pravidelné faktury (`recurringGenerators`). |
| **Webhooky** | `client.webhooks` | Real-time notifikace, sledování nedoručených zpráv. |
| **Inbox** | `client.inboxFiles` | Nahrávání souborů pro OCR vytěžení. |
| **Ostatní** | `client.todos`, `events`| Úkoly, historie účtu, bankovní účty, uživatelé. |

---

### 📝 Příklady použití

#### Vytvoření faktury
```dart
final invoice = Invoice(
  subjectId: 1234,
  lines: [
    InvoiceLine(name: 'Služby', quantity: '1', unitPrice: '1000', vatRate: 21),
  ],
);
final created = await client.invoices.createInvoice(invoice);
print('Vytvořena faktura: ${created.number}');
```

#### Stažení PDF
```dart
final Uint8List pdf = await client.invoices.downloadInvoicePdf(invoiceId);
File('faktura.pdf').writeAsBytesSync(pdf);
```

#### Vyhledávání v kontaktech
```dart
final response = await client.subjects.searchSubjects(query: 'Bruce Wayne');
for (var subject in response.items) {
  print(subject.name);
}
```

---

### ⚠️ Ošetření chyb

SDK používá specifické výjimky pro snadnou diagnostiku:

```dart
try {
  await client.account.getAccount();
} on FakturoidValidationException catch (e) {
  print('Chyba dat: ${e.errors}');
} on FakturoidRateLimitException {
  print('Příliš mnoho požadavků (429).');
} on FakturoidAuthException {
  print('Chyba přihlášení.');
}
```

---

### 🛠 Vývoj a testování

SDK obsahuje **Live testy** (proti reálnému API) a **Parity testy** (offline ověření requestů).

1. Zkopírujte `.env.example` do `.env.fakturoid.local`.
2. Vyplňte své API klíče.
3. Spusťte testy:
```bash
# Bash skript pro sekvenční spuštění live testů (včetně rate limitu)
./run-live-tests.sh

# Standardní Dart testy (offline parita a logika)
dart test
```

### 🚀 Publikace

Automatizované publikování na `pub.dev` probíhá přes GitHub Actions při vytvoření tagu ve formátu `vX.Y.Z`.

1. Zvyšte verzi v `pubspec.yaml`.
2. Vytvořte tag: `git tag v1.0.0 && git push origin v1.0.0`.

---

Vytvořeno jako open-source Dart SDK pro komunitu Fakturoidu. 
Podrobný kód pro každou metodu najdete v **[examples/main.dart](./examples/main.dart)**.
