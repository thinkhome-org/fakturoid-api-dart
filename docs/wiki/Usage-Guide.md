# Začínáme s Fakturoid Dart SDK

Tento návod vás provede instalací a prvním voláním API.

## 📦 Instalace

SDK zatím není na pub.dev, můžete jej ale přidat do `pubspec.yaml` skrze Git:

```yaml
dependencies:
  fakturoid_api:
    git:
      url: https://github.com/vase-repo/fakturoid_api.git
      ref: master
```

## 🚀 První inicializace

Pro komunikaci s API potřebujete `slug` (subdoména vašeho účtu) a údaje o aplikaci z nastavení Fakturoidu.

```dart
import 'package:fakturoid_api/fakturoid_api.dart';

final client = FakturoidClient(
  slug: 'mojefirma',
  clientId: '...',
  clientSecret: '...',
  redirectUri: '...',
  userAgent: 'MojeApp (jan@novak.cz)',
);
```

## 📋 Základní příklady volání

### Načtení detailu účtu
```dart
final account = await client.account.getAccount();
print('Název firmy: ${account.name}');
```

### Seznam posledních faktur
```dart
final response = await client.invoices.getInvoices(page: 1);
for (var invoice in response.items) {
  print('Faktura č. ${invoice.number} pro ${invoice.subjectName}');
}
```

### Vytvoření nového kontaktu
```dart
final newSubject = Subject(
  name: 'Bruce Wayne',
  email: 'bruce@wayne.com',
  type: SubjectType.customer,
);

final created = await client.subjects.createSubject(newSubject);
print('Vytvořen subjekt s ID: ${created.id}');
```

## 🛠 Doporučené postupy

1.  **Isolace Tokenu:** Pro produkční aplikace doporučujeme implementovat vlastní `TokenStorage` (SDK obsahuje výchozí `SecureStorageService` pro mobilní zařízení).
2.  **Handling chyb:** Vždy balte volání do `try-catch` bloků a odchytávejte `FakturoidException`.
3.  **User-Agent:** Vždy uvádějte validní název aplikace a kontaktní e-mail dle doporučení Fakturoidu.

---
[Zpět na domovskou stránku](Home.md) | [Pokračovat na Autentizaci](Authentication.md)
