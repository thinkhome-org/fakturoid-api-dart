# Začínáme s Fakturoid Dart SDK

Tento návod vás provede instalací a prvním voláním API.

## 📦 Instalace

SDK můžete přidat do `pubspec.yaml` skrze Git:

```yaml
dependencies:
  fakturoid_api_dart:
    git:
      url: https://github.com/thinkhome-org/fakturoid-api-dart.git
      ref: master
```

## 🚀 První inicializace

Pro komunikaci s API potřebujete `slug` a údaje o aplikaci.

```dart
import 'package:fakturoid_api_dart/fakturoid_api.dart';

void main() {
  final client = FakturoidClient(
    slug: 'mojefirma',
    clientId: 'CLIENT_ID',
    clientSecret: 'CLIENT_SECRET',
    redirectUri: 'https://example.com/callback',
    userAgent: 'MojeApp (jan@novak.cz)',
  );
}
```

## 📋 Základní příklady volání

### Načtení detailu účtu
```dart
Future<void> run(FakturoidClient client) async {
  final account = await client.account.getAccount();
  print('Název firmy: ${account.name}');
}
```

### Seznam posledních faktur
```dart
Future<void> listInvoices(FakturoidClient client) async {
  final response = await client.invoices.getInvoices(page: 1);
  for (final invoice in response.items) {
    print('Faktura č. ${invoice.number}');
  }
}
```

---
[Zpět na domovskou stránku](Home.md) | [Pokračovat na Autentizaci](Authentication.md)
