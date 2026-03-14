# Fakturoid API v3 Dart SDK

[![Pub.dev](https://img.shields.io/pub/v/fakturoid_api_dart?color=blue)](https://pub.dev/packages/fakturoid_api_dart)
[![License](https://img.shields.io/github/license/thinkhome-org/fakturoid-api-dart)](LICENSE)
[![Test and Lint](https://github.com/thinkhome-org/fakturoid-api-dart/actions/workflows/test-and-lint.yml/badge.svg)](https://github.com/thinkhome-org/fakturoid-api-dart/actions/workflows/test-and-lint.yml)

Kompletní a moderní Dart SDK pro **Fakturoid API v3**. Navrženo pro čistý Dart (backend, CLI) i Flutter aplikace.

## 📖 Kompletní dokumentace najdete na [GitHub Wiki](https://github.com/thinkhome-org/fakturoid-api-dart/wiki)

---

## Rychlý start

```dart
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

final client = FakturoidClient(
  slug: 'mojefirma',
  clientId: '...',
  clientSecret: '...',
  redirectUri: 'https://example.com/callback',
  userAgent: 'MojeApp (admin@mojefirma.cz)',
);

// Přihlášení (Client Credentials)
await client.auth.loginWithClientCredentials();

// Práce s fakturami
final invoice = await client.invoices.getInvoice(123);
print('Faktura č.: ${invoice.number}');
```

## Proč použít tento balíček?

- **100% Parita:** Podporuje všechny endpointy a agendy z Fakturoid API v3.
- **Bezpečnost:** OAuth 2.0 s PKCE a automatickým refreshem tokenů.
- **Typová bezpečnost:** Všechny modely jsou generovány pomocí `freezed`.
- **Čistý Dart:** Žádná závislost na Flutteru, vhodné i pro server-side.

## Příklady

Kompletní ukázky pro každý jednotlivý repozitář najdete ve složce [examples/](./examples).

## Vývoj a přispívání

Podrobnosti o testování a publikaci najdete v [Wiki - Development](https://github.com/thinkhome-org/fakturoid-api-dart/wiki/Development).

---
Vytvořeno pro Dart komunitu kolem Fakturoidu.
