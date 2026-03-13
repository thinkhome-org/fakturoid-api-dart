# Fakturoid API Dart SDK

Kompletní a vyčerpávající Dart/Flutter SDK pro [Fakturoid API v3](https://www.fakturoid.cz/api/v3). Tato knihovna implementuje **100 % funkčnosti API v3** a byla pečlivě prověřena oproti oficiálnímu PHP SDK i dokumentaci.

## ✨ Hlavní vlastnosti

- **Kompletní pokrytí API v3:** Všechny endpointy, akce a parametry jsou implementovány.
- **Typová bezpečnost:** Všechny modely využívají `Freezed` pro neměnnost a bezpečnou serializaci.
- **Moderní Auth:** Podpora OAuth 2.0 s PKCE (pro aplikace) i Client Credentials (pro backend).
- **Multi-account:** Snadné přepínání mezi účty bez re-inicializace klienta.
- **Robustní Error Handling:** Detailní výjimky mapující chybové stavy API (401, 402, 404, 422, 429, 503).
- **Rate Limiting:** Automatické parsování a přístup k informacím o limitech u každé odpovědi.

---

## 🚀 Rychlý start

```dart
import 'package:fakturoid_api/fakturoid_api.dart';

final client = FakturoidClient(
  slug: 'vasedomena',
  clientId: '...',
  clientSecret: '...',
  redirectUri: '...',
  userAgent: 'MojeApp (admin@priklad.cz)',
);

// Pro backend (Client Credentials)
await client.auth.loginWithClientCredentials();

// Pro aplikace (OAuth2 + PKCE)
final url = await client.auth.getAuthorizationUrl();
// ... po callbacku z prohlížeče ...
await client.auth.exchangeAuthorizationCode(callbackUri);
```

---

## 📚 Kompletní přehled modulů

### 🔐 Autentizace (`client.auth`)
- `getAuthorizationUrl()`: URL pro přihlášení (PKCE).
- `exchangeAuthorizationCode(uri)`: Výměna kódu za tokeny.
- `loginWithClientCredentials()`: Přihlášení pro servery.
- `refreshToken()`: Obnova přístupu (automaticky řešeno interceptorem).
- `revokeToken()` / `logout()`: Bezpečné odhlášení a zneplatnění tokenů.

### 🧾 Faktury (`client.invoices`)
- `getInvoices({status, subjectId, since, until, updatedSince, ...})`: Seznam s bohatými filtry.
- `searchInvoices(query, {tags, page})`: Fulltextové vyhledávání (používá `tags[]`).
- `getInvoice(id)`: Detail dokladu.
- `createInvoice(invoice)`, `updateInvoice(id, invoice)`, `deleteInvoice(id)`.
- `fireAction(id, action)`: Stavové akce (`mark_as_sent`, `cancel`, `lock`, `mark_as_uncollectible`, ...).
- `downloadInvoicePdf(id)`: Stažení PDF jako `Uint8List`.
- `downloadAttachment(invoiceId, attachmentId)`: Stažení přílohy.

### 📈 Nabídky a Odhady (`client.estimates`)
- Kompletní správa nabídek: `getEstimates`, `searchEstimates`, `getEstimate`, `createEstimate`, `updateEstimate`, `deleteEstimate`.
- `fireAction(id, action)`: Akce specifické pro nabídky (`accept`, `reject`, `mark_as_sent`).
- `downloadEstimatePdf(id)`: Stažení PDF nabídky.
- `createMessage(id, ...)`: Odeslání nabídky e-mailem klientovi.

### 🛍️ Náklady (`client.expenses`)
- `getExpenses(...)`, `searchExpenses(...)`: Seznam a vyhledávání.
- `getExpense(id)`, `createExpense(expense)`, `updateExpense(id, expense)`, `deleteExpense(id)`.
- `fireAction(id, action)`: Akce `lock` a `unlock`.
- `downloadAttachment(expenseId, attachmentId)`: Stažení přílohy nákladu.

### 💰 Platby a Doklady (`client.invoicePayments`, `client.expensePayments`)
- `createPayment(id, payment)`: Přidání platby k faktuře nebo nákladu.
- `deletePayment(id, paymentId)`: Odstranění platby.
- `createTaxDocument(invoiceId, paymentId)`: Vygenerování daňového dokladu k platbě proformy.

### ✉️ Zasílání e-mailů (`client.invoiceMessages`)
- `createMessage(invoiceId, {email, subject, message, ...})`: Ruční odeslání e-mailu s fakturou.

### 👥 Kontakty (`client.subjects`)
- `getSubjects({tag, status, ...})`, `searchSubjects(query)`: Seznam a hledání.
- `getSubject(id)`, `createSubject(subject)`, `updateSubject(id, subject)`, `deleteSubject(id)`.
- `archiveSubject(id)`, `unarchiveSubject(id)`: Archivace kontaktů přes `fire.json`.

### 📦 Skladové hospodářství (`client.inventoryItems`, `client.inventoryMoves`)
- **Položky:** `getInventoryItems()`, `getArchivedItems()`, `getLowQuantityItems()`, `searchItems()`.
- `archiveItem(id)`, `unarchiveItem(id)`.
- **Pohyby:** `getAllInventoryMoves()`, `getInventoryMoves(itemId)`, `getInventoryMove(itemId, moveId)`.
- `createInventoryMove(itemId, move)`, `updateInventoryMove`, `deleteInventoryMove`.

### 📑 Šablony a Pravidelné faktury (`client.generators`, `client.recurringGenerators`)
- **Šablony:** `getGenerators()`, `fireAction(id, generate)`.
- **Pravidelné:** `getRecurringGenerators()`, `pause(id)`, `activate(id, {nextOccurrenceOn})`.

### 📥 Inbox a OCR (`client.inboxFiles`)
- `getInboxFiles()`: Přehled souborů.
- `createInboxFile(filename, attachmentBase64, {sendToOcr})`: Nahrání souboru.
- `sendToOcr(id)`: Spuštění OCR zpracování.
- `downloadInboxFile(id)`, `deleteInboxFile(id)`.

### 📊 Statistiky (`client.stats`)
- `getStats()`: Finanční data pro dashboard (celkové sumy, grafy příjmů).

### 🛠️ Administrace
- `client.users`: `getCurrentUser()` (včetně seznamu firem), `getUsers()`.
- `client.webhooks`: Kompletní správa webhooků a `getFailedDeliveries(uuid)`.
- `client.todos`: `getTodos()`, `toggleCompletion(id)`.
- `client.bankAccounts`: `getBankAccounts()` (seznam propojených účtů).
- `client.numberFormats`: `getNumberFormats()` (číselné řady faktur).

---

## ⚠️ Zpracování chyb

SDK automaticky mapuje HTTP chyby na typované výjimky:

| Výjimka | Status | Popis |
| :--- | :--- | :--- |
| `FakturoidAuthException` | 401, 403 | Neplatné credentials nebo token. |
| `FakturoidNotFoundException` | 404 | Zdroj neexistuje. |
| `FakturoidValidationException` | 422 | Chyba v datech (obsahuje `e.errors`). |
| `FakturoidRateLimitException` | 429 | Překročen limit požadavků. |
| `FakturoidPaymentRequiredException`| 402 | Účet Fakturoidu je po splatnosti. |
| `FakturoidDocumentNotReadyException`| 204 | PDF se ještě generuje (zkuste znovu). |
| `FakturoidServerException` | 500+ | Chyba na straně Fakturoidu. |

---

## 🔄 Práce s více účty

Díky metodě `switchAccount` můžete přepínat mezi firmami bez nutnosti nového přihlášení:

```dart
final user = await client.users.getCurrentUser();
// user.accounts obsahuje seznam dostupných firem
client.switchAccount('jiny-slug');
```

---

## 🛠️ Rozšiřitelnost

- **Vlastní úložiště:** Implementujte `TokenStorage` pro vlastní způsob ukládání (např. do databáze).
- **Vlastní Dio:** Předáním `dioOverride` můžete přidat vlastní logování, proxy nebo další interceptory.

---
Vyvinuto pro maximální spolehlivost a efektivitu. 🚀
