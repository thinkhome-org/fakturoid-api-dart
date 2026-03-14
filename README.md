# Fakturoid API v3 Dart SDK

[![GitHub release](https://img.shields.io/github/v/release/thinkhome-org/fakturoid-api-dart)](https://github.com/thinkhome-org/fakturoid-api-dart/releases)
[![License](https://img.shields.io/github/license/thinkhome-org/fakturoid-api-dart)](LICENSE)
[![Wiki](https://img.shields.io/badge/docs-GitHub%20Wiki-blue)](https://github.com/thinkhome-org/fakturoid-api-dart/wiki)

`fakturoid_api_dart` je Dart/Flutter SDK pro Fakturoid API v3. Zaměřuje se na typované modely, OAuth 2.0 s PKCE, pohodlné repository API a ověřenou request parity vůči dokumentovaným endpointům.

## Proč použít tenhle balíček

- Typované modely a serializace přes `freezed` a `json_serializable`
- OAuth 2.0 včetně PKCE, refresh tokenů a secure storage
- Repository API pro faktury, náklady, sklad, kontakty, webhooky a další agendy
- Live testy proti izolovanému Fakturoid tenantovi a parity testy pro requesty
- Připravené pro Dart i Flutter aplikace

## Instalace

Dokud balíček není publikovaný na pub.dev, přidejte ho do `pubspec.yaml` přes Git:

```yaml
dependencies:
  fakturoid_api_dart:
    git:
      url: https://github.com/thinkhome-org/fakturoid-api-dart.git
      ref: master
```

## Rychlý start

Podrobný návod najdete v **[GitHub Wiki dokumentaci](https://github.com/thinkhome-org/fakturoid-api-dart/wiki)**.

```dart
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

final client = FakturoidClient(
  slug: 'mojefirma',
  clientId: '...',
  clientSecret: '...',
  redirectUri: '...',
  userAgent: 'MojeApp (jan@novak.cz)',
);

final account = await client.account.getAccount();
print(account.name);
```

## Dokumentace

- [GitHub Wiki](https://github.com/thinkhome-org/fakturoid-api-dart/wiki)
- [Releases](https://github.com/thinkhome-org/fakturoid-api-dart/releases)
- [Issues](https://github.com/thinkhome-org/fakturoid-api-dart/issues)
- [Oficiální Fakturoid API v3](https://www.fakturoid.cz/api/v3)

## Testování

Pro spuštění live testů:

1. Zkopírujte `.env.fakturoid.local.example` do `.env.fakturoid.local`.
2. Vyplňte své přihlašovací údaje.
3. Spusťte `./run-live-tests.fish`.

Lokální ověření repa:

```bash
dart format .
dart analyze
flutter test
```

---

Vytvořeno pro Dart & Flutter komunitu kolem Fakturoid API.
