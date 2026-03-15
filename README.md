# Fakturoid API v3 Dart SDK

[![Pub.dev](https://img.shields.io/pub/v/fakturoid_api_dart?color=blue)](https://pub.dev/packages/fakturoid_api_dart)
[![License](https://img.shields.io/github/license/thinkhome-org/fakturoid-api-dart)](LICENSE)
[![Test and Lint](https://github.com/thinkhome-org/fakturoid-api-dart/actions/workflows/test-and-lint.yml/badge.svg)](https://github.com/thinkhome-org/fakturoid-api-dart/actions/workflows/test-and-lint.yml)

Kompletní a moderní Dart SDK pro **[Fakturoid API v3](https://www.fakturoid.cz/api/v3)**. Navrženo pro čistý Dart (backend, CLI) i Flutter aplikace.

Tato knihovna pokrývá **100 % dostupných endpointů**, využívá nejnovější standardy Dartu (včetně `freezed` pro immutabilitu a typovou bezpečnost) a podporuje moderní **OAuth 2.0 (PKCE)**.

## ✨ Klíčové vlastnosti

- **100% Parita:** Podpora všech endpointů a agend Fakturoid API v3.
- **Moderní Auth:** Plná podpora OAuth 2.0 s PKCE (Authorization Code Flow) i Client Credentials flow pro server-to-server integrace. Obsahuje automatickou obnovu tokenů.
- **Typová bezpečnost:** Robustní data modely generované pomocí `freezed` a silné enumy (žádné mapování pomocí `String`).
- **Developer Friendly:** Automatické stránkování pomocí `PaginatedResponse`, vestavěné zpracování Rate Limitingu a detailní Error Interceptory.
- **Bohaté ukázky:** Podrobné spustitelné ukázky pro každou agendu a funkci najdete ve složce `example/`.

---

## 📦 Instalace

Přidejte knihovnu do svého projektu standardní cestou přes pub.dev:

```bash
dart pub add fakturoid_api_dart
# nebo
flutter pub add fakturoid_api_dart
```

Nebo ji přidejte ručně do souboru `pubspec.yaml`:

```yaml
dependencies:
  fakturoid_api_dart: ^0.0.1
```

---

## 📖 Dokumentace

Pro detailní návody, popis archiktektury, modelů a repozitářů navštivte naši **[GitHub Wiki](https://github.com/thinkhome-org/fakturoid-api-dart/wiki)**.

---

## 🚀 Rychlý start

```dart
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

void main() async {
  // 1. Inicializace klienta
  final client = FakturoidClient(
    slug: 'mojefirma',
    clientId: 'TVUJ_CLIENT_ID',
    clientSecret: 'TVUJ_CLIENT_SECRET', // Pouze pro Server-to-Server
    redirectUri: 'https://example.com/callback',
    userAgent: 'MyFakturoidApp (admin@mojefirma.cz)',
  );

  // 2. Přihlášení (příklad pro serverové scripty bez UI)
  await client.auth.loginWithClientCredentials();

  // 3. Volání API: Načtení detailu účtu
  final account = await client.account.getAccount();
  print('Přihlášen k účtu: ${account.name}');

  // 4. Volání API: Načtení faktur (s automatickým stránkováním)
  final invoices = await client.invoices.getInvoices(page: 1);
  print('Celkem faktur: ${invoices.total}');
  for (final inv in invoices.items) {
    print('Faktura: ${inv.number} - ${inv.total} ${inv.currency}');
  }
}
```

## 📋 Příklady použití

Repozitář obsahuje komplexní složku [example/](./example), kde naleznete detailní scénáře, jak pracovat s jednotlivými moduly. Každý příklad lze samostatně spustit.

- [Jak na Autentizaci (OAuth 2.0, PKCE)](./example/auth.dart)
- [Práce s Fakturami](./example/invoices.dart)
- [Správa Kontaktů (Subjektů)](./example/subjects.dart)
- [Sklad a Ceník](./example/inventory_items.dart)
- [A mnoho dalších ukázek pro všechny repozitáře...](./example/)

---
Vytvořeno pro Dart komunitu kolem Fakturoidu.
