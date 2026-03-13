# Fakturoid API v3 Dart SDK

[![Flutter](https://img.shields.io/badge/Flutter-SDK-blue.svg)](https://flutter.dev)
[![Fakturoid API v3](https://img.shields.io/badge/API-v3-orange.svg)](https://www.fakturoid.cz/api/v3)

Oficiální neoficiální Dart/Flutter SDK pro integraci se systémem Fakturoid pomocí nejnovějšího API v3. Tato knihovna je navržena pro maximální stabilitu, bezpečnost (OAuth 2.0 + PKCE) a snadné použití.

## 🚀 Hlavní vlastnosti

*   **Kompletní agendy:** Faktury, Náklady, Nabídky, Subjekty, Sklad, Šablony a další.
*   **Bezpečná autentizace:** Plná podpora OAuth 2.0 (Client Credentials i Authorization Code s PKCE).
*   **Automatizace:** Podpora pro pravidelné faktury, generátory a webhooky.
*   **Robustní modely:** Neměnné (immutable) modely generované pomocí Freezed.
*   **Zpracování příloh:** Nahrávání přes Data URL a stahování PDF i ostatních souborů.
*   **Rate Limiting:** Zabudované ošetření limitů API a throttlengu.

## 📖 Dokumentace a Návody

Kompletní dokumentaci, průvodce nastavením a příklady naleznete v naší **[WIKI](docs/wiki/Home.md)**.

### Rychlé odkazy z Wiki:
1.  **[Začínáme](docs/wiki/Usage-Guide.md)**
2.  **[Autentizace (přihlášení)](docs/wiki/Authentication.md)**
3.  **[Přehled modulů a repozitářů](docs/wiki/Repositories.md)**
4.  **[Limity a chyby](docs/wiki/Rate-Limiting.md)**

## 💻 Rychlá ukázka

```dart
import 'package:fakturoid_api/fakturoid_api.dart';

void main() async {
  final client = FakturoidClient(
    slug: 'mojefirma',
    clientId: '...',
    clientSecret: '...',
    redirectUri: '...',
    userAgent: 'MojeApp (jan@novak.cz)',
  );

  // Přihlášení (např. server-to-server)
  await client.auth.loginWithClientCredentials();

  // Vytvoření faktury
  final invoice = await client.invoices.createInvoice(Invoice(
    subjectId: 12345,
    lines: [
      InvoiceLine(name: 'Služby', quantity: '1', unitPrice: '1000', vatRate: 21),
    ],
  ));

  print('Vystavena faktura č. ${invoice.number}');
}
```

## 🧪 Testování

SDK obsahuje rozsáhlou sadu testů (mock i live). Pro spuštění live testů proti vašemu testovacímu účtu:

1.  Zkopírujte `.env.fakturoid.local.example` do `.env.fakturoid.local`.
2.  Vyplňte své údaje.
3.  Spusťte `./run-live-tests.fish`.

---
*Vytvořeno s ❤️ pro Dart & Flutter komunitu.*
