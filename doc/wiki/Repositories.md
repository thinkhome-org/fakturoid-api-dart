# Přehled repozitářů a modulů

Každý repozitář v SDK je přístupný skrze instanci `FakturoidClient`.

## 📁 Seznam modulů

| Modul | Popis agendy | Klíčové funkce |
| :--- | :--- | :--- |
| `invoices` | Faktury, proformy, opravné doklady. | CRUD, `fireAction`, `downloadInvoicePdf`. |
| `subjects` | Obchodní partneři. | CRUD, `searchSubjects`. |
| `expenses` | Náklady, účtenky. | CRUD, `fireAction`. |
| `inventoryItems` | Skladové položky. | CRUD, `archiveItem`. |
| `inventoryMoves` | Skladové pohyby. | CRUD, globální seznam. |
| `generators` | Šablony faktur. | CRUD. |
| `recurringGenerators` | Pravidelné faktury. | CRUD, `pause`, `activate`. |
| `invoicePayments` | Platby k fakturám. | CRUD, `createTaxDocument`. |
| `estimates` | Cenové nabídky. | CRUD. |
| `inboxFiles` | Soubory ve schránce. | Upload, Download, `sendToOcr`. |
| `webhooks` | Automatické notifikace. | CRUD, `getFailedDeliveries`. |
| `todos` | Úkoly. | `getTodos`, `toggleCompletion`. |
| `events` | Historie událostí. | `getEvents`, `getEventsPaid`. |
| `users` | Správa uživatelů. | `getCurrentUser`, `getUsers`. |
| `account` | Nastavení účtu. | `getAccount`. |

---
[Předchozí: Autentizace](Authentication.md) | [Zpět na Home](Home.md) | [Pokračovat na Modely](Models.md)
