# Datové modely a Entity

SDK využívá balíčky `freezed` a `json_serializable` pro zajištění neměnnosti (immutability) a bezpečné serializace.

## 💎 Immutability a Freezed

Všechny modely jsou neměnné. Pokud potřebujete změnit pole, použijte metodu `copyWith`:

```dart
final original = Subject(name: 'Batman', type: SubjectType.customer);
final updated = original.copyWith(name: 'Bruce Wayne');
```

## 🏗 Klíčové modely

### Invoice (Faktura)
Obsahuje detaily dokladu, řádky (`InvoiceLine`) a informace o zaplacení.
*   Důležité pole: `documentType` (`DocumentType.invoice`, `proforma`, `estimate` atd.).
*   Přílohy jsou spravovány polem `attachments`.

### Subject (Subjekt)
Reprezentuje kontakt ve Fakturoidu.
*   Podporuje propojení s ARES (`registrationNo`).
*   Umožňuje nastavit vlastní e-mailové šablony.

### InventoryItem (Skladová položka)
Položka v ceníku/skladu.
*   Sleduje stav skladu (`stockQuantity`).
*   Podporuje více prodejních cen.

## 🔢 Enumy

SDK obsahuje typové enumy pro všechny stavové pole:
*   `InvoiceStatus` (`open`, `paid`, `overdue`, ...)
*   `PaymentMethod` (`bank`, `cash`, `card`, ...)
*   `SubjectType` (`customer`, `supplier`, `both`)

## 📤 Nahrávání souborů (Data URL)

Pro nahrávání souborů (např. do Inboxu nebo jako přílohu faktury) se používá pole `dataUrl` ve formátu Data URI (Base64):

```dart
final attachment = DocumentAttachment(
  filename: 'priloha.pdf',
  dataUrl: 'data:application/pdf;base64,JVBERi0xLjQK...',
);
```

---
[Předchozí: Repozitáře](Repositories.md) | [Zpět na Home](Home.md) | [Pokračovat na Limity](Rate-Limiting.md)
