# Fakturoid API v3 Dart SDK

[![Pub.dev](https://img.shields.io/pub/v/fakturoid_api_dart?color=blue)](https://pub.dev/packages/fakturoid_api_dart)
[![License](https://img.shields.io/github/license/thinkhome-org/fakturoid-api-dart)](LICENSE)
[![Test and Lint](https://github.com/thinkhome-org/fakturoid-api-dart/actions/workflows/test-and-lint.yml/badge.svg)](https://github.com/thinkhome-org/fakturoid-api-dart/actions/workflows/test-and-lint.yml)

Kompletní a moderní Dart SDK pro **Fakturoid API v3**. Navrženo pro čistý Dart (backend, CLI) i Flutter aplikace.

## ✨ Klíčové vlastnosti

- **100% Parita:** Podpora všech endpointů a agend Fakturoid API v3.
- **Moderní Auth:** OAuth 2.0 s PKCE a automatickou správou tokenů.
- **Typová bezpečnost:** Robustní modely generované pomocí `freezed`.
- **Developer Friendly:** Podrobné ukázky pro každou funkci a automatické stránkování.

---

## 📖 Dokumentace

Kompletní technickou příručku najdete na naší **[GitHub Wiki](https://github.com/thinkhome-org/fakturoid-api-dart/wiki)**.

---

## Rychlý start

```dart
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

final client = FakturoidClient(
  slug: 'mojefirma',
  clientId: '...',
  clientSecret: '...',
  redirectUri: 'https://example.com/callback',
  userAgent: 'MyFakturoidApp (admin@mojefirma.cz)',
);

// Přihlášení pomocí Client Credentials
await client.auth.loginWithClientCredentials();

// Načtení detailu účtu
final account = await client.account.getAccount();
print('Přihlášen k účtu: ${account.name}');
```

## Příklady použití

Všechny agendy mají své samostatné ukázky v adresáři [examples/](./examples):
- [Faktury](./examples/invoices.dart)
- [Kontakty](./examples/subjects.dart)
- [Sklad](./examples/inventory_items.dart)
- [A mnoho dalších...](./examples/main.dart)

---
Vytvořeno pro Dart komunitu kolem Fakturoidu.
