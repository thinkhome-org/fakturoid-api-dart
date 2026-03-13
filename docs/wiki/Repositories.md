# Přehled repozitářů a modulů

Každý repozitář v SDK je přístupný skrze instanci `FakturoidClient` a odpovídá konkrétní části API.

## 📁 Seznam modulů

| Modul (v `client.`) | Popis agendy | Klíčové funkce |
| :--- | :--- | :--- |
| `invoices` | Faktury, proformy, opravné doklady. | CRUD, `fireAction`, `downloadInvoicePdf`, `bulkDelete`. |
| `subjects` | Obchodní partneři (odběratelé/dodavatelé). | CRUD, `searchSubjects`. |
| `expenses` | Náklady, účtenky, ostatní výdaje. | CRUD, `bulkDelete`, `fireAction`. |
| `inventoryItems` | Skladové položky a ceník. | CRUD, `archiveItem`, `unarchiveItem`. |
| `inventoryMoves` | Skladové pohyby (naskladnění/vyskladnění). | CRUD, globální seznam, vnořené detaily. |
| `generators` | Šablony faktur (Generátory). | CRUD. |
| `recurringGenerators` | Pravidelné faktury. | CRUD, `pause`, `activate`. |
| `invoicePayments` | Platby k fakturám. | CRUD, `createTaxDocument`. |
| `expensePayments` | Platby k nákladům. | CRUD. |
| `invoiceMessages` | Odesílání faktur e-mailem. | `createMessage`. |
| `estimates` | Cenové nabídky. | CRUD (využívá endpoint faktur s `document_type`). |
| `inboxFiles` | Soubory ve schránce (Inbox). | Upload, Download, `sendToOcr`. |
| `webhooks` | Automatické notifikace na vaše URL. | CRUD, `getFailedDeliveries`. |
| `todos` | Úkoly v rámci Fakturoidu. | `getTodos`, `toggleCompletion`. |
| `events` | Historie událostí na účtu. | `getEvents`, `getEventsPaid`. |
| `users` | Správa uživatelů. | `getCurrentUser`, `getUsers`. |
| `account` | Nastavení aktuálního účtu. | `getAccount` (Read-only). |
| `bankAccounts` | Seznam bankovních účtů. | `getBankAccounts` (Read-only). |
| `numberFormats` | Číselné řady faktur. | `getNumberFormats` (Read-only). |

## 🔍 Vyhledávání a Filtrování

Většina metod pro získání seznamu (`getInvoices`, `getSubjects` atd.) podporuje bohaté parametry:
*   `page` – Stránkování (standardně 40 záznamů).
*   `since`, `until` – Filtrování podle data.
*   `status` – Stav dokladu (např. `InvoiceStatus.paid`).
*   `tags` – Filtrování podle štítků (podporuje pole stringů).

## 🚀 Hromadné operace (Bulk)

SDK podporuje hromadné operace tam, kde je API v3 nabízí:

```dart
Future<void> bulkOperations(FakturoidClient client) async {
  final ids = <int>[101, 102, 103];
  await client.invoices.bulkDelete(ids);
  await client.invoices.bulkFireAction(ids, InvoiceFireAction.markAsSent);
}
```

---
[Předchozí: Autentizace](Authentication.md) | [Zpět na Home](Home.md) | [Pokračovat na Modely](Models.md)
