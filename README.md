# Fakturoid API v3 Dart SDK

Dart/Flutter SDK pro Fakturoid API v3. Tato knihovna umožňuje snadnou integraci fakturačního systému Fakturoid do vašich Dart aplikací.

## Hlavní vlastnosti

*   Kompletní podpora Fakturoid API v3.
*   OAuth 2.0 s PKCE pro bezpečnou autentizaci.
*   Správa tokenů (Secure Storage).
*   Automatická obnova (refresh) tokenů.
*   Podpora pro Faktury, Náklady, Sklad, Kontakty a další.
*   Typované modely pomocí Freezed.

## Začínáme

Podrobný návod najdete v interní **[SDK dokumentaci](doc/Home.md)**.

### Rychlá ukázka

```dart
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

final client = FakturoidClient(
  slug: 'mojefirma',
  clientId: '...',
  clientSecret: '...',
  redirectUri: '...',
  userAgent: 'MojeApp (jan@novak.cz)',
);

// Načtení účtu
final account = await client.account.getAccount();
print(account.name);
```

## Dokumentace

*   **[SDK dokumentace](doc/Home.md)**

## Testování

SDK obsahuje rozsáhlou sadu testů. Pro spuštění live testů:

1.  Zkopírujte `.env.fakturoid.local.example` do `.env.fakturoid.local`.
2.  Vyplňte své údaje.
3.  Spusťte `./run-live-tests.fish`.

---
*Vytvořeno pro Dart & Flutter komunitu.*
