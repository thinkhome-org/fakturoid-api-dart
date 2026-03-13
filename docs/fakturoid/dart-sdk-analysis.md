# Fakturoid API v3: Dart SDK analýza a integrační tahák

Tento soubor ukládá souhrn nad kompletně prostudovaným `docs/` a současnou Dart implementací v tomto repozitáři.

Obsah je záměrně v pořadí:

1. endpoint tabulka,
2. praktický integrační cheat-sheet,
3. návrh typů a API klienta v Dartu.

## 1. Endpoint tabulka

### Auth, bootstrap a reference

| Docs | HTTP | Endpoint | Dart mapování | Poznámka |
|---|---|---|---|---|
| `docs/authorization.md` | `GET` | `/oauth` | `client.auth.getAuthorizationUrl()` | Generuje auth URL + PKCE state/challenge |
| `docs/authorization.md` | `POST` | `/oauth/token` | `client.auth.exchangeAuthorizationCode(callbackUri)` | Authorization Code exchange |
| `docs/authorization.md` | `POST` | `/oauth/token` | `client.auth.loginWithClientCredentials()` | Client Credentials flow |
| `docs/authorization.md` | `POST` | `/oauth/token` | `client.auth.refreshToken()` | Refresh access token |
| `docs/authorization.md` | `POST` | `/oauth/revoke` | `client.auth.revokeToken()` | Revokace refresh tokenu |
| `docs/users.md` | `GET` | `/user.json` | `client.users.getCurrentUser()` | Globální endpoint mimo account slug |
| `docs/account.md` | `GET` | `/accounts/{slug}/account.json` | `client.account.getAccount()` | Read-only account config |
| `docs/users.md` | `GET` | `/accounts/{slug}/users.json` | `client.users.getUsers()` | Paginated user list |
| `docs/bank-accounts.md` | `GET` | `/accounts/{slug}/bank_accounts.json` | `client.bankAccounts.getBankAccounts()` | Vrací `List<BankAccount>` |
| `docs/number-formats.md` | `GET` | `/accounts/{slug}/number_formats/invoices.json` | `client.numberFormats.getNumberFormats()` | Vrací `List<NumberFormat>` |

### Subjects, invoices, expenses, inbox

| Docs | HTTP | Endpoint | Dart mapování | Poznámka |
|---|---|---|---|---|
| `docs/subjects.md` | `GET` | `/accounts/{slug}/subjects.json` | `client.subjects.getSubjects(...)` | Paginated |
| `docs/subjects.md` | `GET` | `/accounts/{slug}/subjects/search.json` | `client.subjects.searchSubjects(...)` | Fulltext search |
| `docs/subjects.md` | `GET` | `/accounts/{slug}/subjects/{id}.json` | `client.subjects.getSubject(id)` | Detail |
| `docs/subjects.md` | `POST` | `/accounts/{slug}/subjects.json` | `client.subjects.createSubject(subject)` | Create |
| `docs/subjects.md` | `PATCH` | `/accounts/{slug}/subjects/{id}.json` | `client.subjects.updateSubject(id, subject)` | Update |
| `docs/subjects.md` | `DELETE` | `/accounts/{slug}/subjects/{id}.json` | `client.subjects.deleteSubject(id)` | Delete |
| `docs/invoices.md` | `GET` | `/accounts/{slug}/invoices.json` | `client.invoices.getInvoices(...)` | List + filters |
| `docs/invoices.md` | `GET` | `/accounts/{slug}/invoices/search.json` | `client.invoices.searchInvoices(...)` | Search + `tags` |
| `docs/invoices.md` | `GET` | `/accounts/{slug}/invoices/{id}.json` | `client.invoices.getInvoice(id)` | Detail |
| `docs/invoices.md` | `POST` | `/accounts/{slug}/invoices.json` | `client.invoices.createInvoice(invoice, relatedId: ...)` | Create + manual navázání na proformu přes `related_id` |
| `docs/invoices.md` | `PATCH` | `/accounts/{slug}/invoices/{id}.json` | `client.invoices.updateInvoice(id, invoice)` | Update |
| `docs/invoices.md` | `DELETE` | `/accounts/{slug}/invoices/{id}.json` | `client.invoices.deleteInvoice(id)` | Delete |
| `docs/invoices.md` | `POST` | `/accounts/{slug}/invoices/{id}/fire.json?event=...` | `client.invoices.fireAction(id, action)` | Stavové akce |
| `docs/invoices.md` | `GET` | `/accounts/{slug}/invoices/{id}/download.pdf` | `client.invoices.downloadInvoicePdf(id)` | Vrací `Uint8List` |
| `docs/invoices.md` | `GET` | `/accounts/{slug}/invoices/{invoice_id}/attachments/{id}/download` | `client.invoices.downloadAttachment(invoiceId, attachmentId)` | Binary download |
| `docs/invoice-payments.md` | `POST` | `/accounts/{slug}/invoices/{invoice_id}/payments.json` | `client.invoicePayments.createPayment(invoiceId, payment)` | Payment create |
| `docs/invoice-payments.md` | `POST` | `/accounts/{slug}/invoices/{invoice_id}/payments/{id}/create_tax_document.json` | `client.invoicePayments.createTaxDocument(invoiceId, paymentId)` | Tax document step |
| `docs/invoice-payments.md` | `DELETE` | `/accounts/{slug}/invoices/{invoice_id}/payments/{id}.json` | `client.invoicePayments.deletePayment(invoiceId, paymentId)` | Payment delete |
| `docs/invoice-messages.md` | `POST` | `/accounts/{slug}/invoices/{invoice_id}/message.json` | `client.invoiceMessages.createMessage(...)` | Send email, `204` |
| `docs/expenses.md` | `GET` | `/accounts/{slug}/expenses.json` | `client.expenses.getExpenses(...)` | List + filters |
| `docs/expenses.md` | `GET` | `/accounts/{slug}/expenses/search.json` | `client.expenses.searchExpenses(...)` | Search + `tags` |
| `docs/expenses.md` | `GET` | `/accounts/{slug}/expenses/{id}.json` | `client.expenses.getExpense(id)` | Detail |
| `docs/expenses.md` | `POST` | `/accounts/{slug}/expenses.json` | `client.expenses.createExpense(expense)` | Create |
| `docs/expenses.md` | `PATCH` | `/accounts/{slug}/expenses/{id}.json` | `client.expenses.updateExpense(id, expense)` | Update |
| `docs/expenses.md` | `DELETE` | `/accounts/{slug}/expenses/{id}.json` | `client.expenses.deleteExpense(id)` | Delete |
| `docs/expenses.md` | `POST` | `/accounts/{slug}/expenses/{id}/fire.json?event=...` | `client.expenses.fireAction(id, action)` | `lock` / `unlock` |
| `docs/expenses.md` | `GET` | `/accounts/{slug}/expenses/{expense_id}/attachments/{id}/download` | `client.expenses.downloadAttachment(expenseId, attachmentId)` | Binary download |
| `docs/expense-payments.md` | `POST` | `/accounts/{slug}/expenses/{expense_id}/payments.json` | `client.expensePayments.createPayment(expenseId, payment)` | Payment create |
| `docs/expense-payments.md` | `DELETE` | `/accounts/{slug}/expenses/{expense_id}/payments/{id}.json` | `client.expensePayments.deletePayment(expenseId, paymentId)` | Payment delete |
| `docs/inbox-files.md` | `GET` | `/accounts/{slug}/inbox_files.json` | `client.inboxFiles.getInboxFiles(...)` | Paginated |
| `docs/inbox-files.md` | `POST` | `/accounts/{slug}/inbox_files.json` | `client.inboxFiles.createInboxFile(dataUri, ...)` | Očekává Data URI |
| `docs/inbox-files.md` | `POST` | `/accounts/{slug}/inbox_files/{id}/send_to_ocr.json` | `client.inboxFiles.sendToOcr(id)` | OCR trigger |
| `docs/inbox-files.md` | `GET` | `/accounts/{slug}/inbox_files/{id}/download` | `client.inboxFiles.downloadInboxFile(id)` | Binary download |
| `docs/inbox-files.md` | `DELETE` | `/accounts/{slug}/inbox_files/{id}.json` | `client.inboxFiles.deleteInboxFile(id)` | Delete |

### Generátory a sklad

| Docs | HTTP | Endpoint | Dart mapování | Poznámka |
|---|---|---|---|---|
| `docs/generators.md` | `GET` | `/accounts/{slug}/generators.json` | `client.generators.getGenerators(...)` | Paginated |
| `docs/generators.md` | `GET` | `/accounts/{slug}/generators/{id}.json` | `client.generators.getGenerator(id)` | Detail |
| `docs/generators.md` | `POST` | `/accounts/{slug}/generators.json` | `client.generators.createGenerator(generator)` | Create |
| `docs/generators.md` | `PATCH` | `/accounts/{slug}/generators/{id}.json` | `client.generators.updateGenerator(id, generator)` | Update |
| `docs/generators.md` | `DELETE` | `/accounts/{slug}/generators/{id}.json` | `client.generators.deleteGenerator(id)` | Delete |
| `docs/recurring-generators.md` | `GET` | `/accounts/{slug}/recurring_generators.json` | `client.recurringGenerators.getRecurringGenerators(...)` | Paginated |
| `docs/recurring-generators.md` | `GET` | `/accounts/{slug}/recurring_generators/{id}.json` | `client.recurringGenerators.getRecurringGenerator(id)` | Detail |
| `docs/recurring-generators.md` | `POST` | `/accounts/{slug}/recurring_generators.json` | `client.recurringGenerators.createRecurringGenerator(generator)` | Create |
| `docs/recurring-generators.md` | `PATCH` | `/accounts/{slug}/recurring_generators/{id}.json` | `client.recurringGenerators.updateRecurringGenerator(id, generator)` | Update |
| `docs/recurring-generators.md` | `PATCH` | `/accounts/{slug}/recurring_generators/{id}/pause.json` | `client.recurringGenerators.pause(id)` | Pause |
| `docs/recurring-generators.md` | `PATCH` | `/accounts/{slug}/recurring_generators/{id}/activate.json` | `client.recurringGenerators.activate(id, nextOccurrenceOn: ...)` | Activate |
| `docs/recurring-generators.md` | `DELETE` | `/accounts/{slug}/recurring_generators/{id}.json` | `client.recurringGenerators.deleteRecurringGenerator(id)` | Delete |
| `docs/inventory-items.md` | `GET` | `/accounts/{slug}/inventory_items.json` | `client.inventoryItems.getInventoryItems(...)` | Paginated |
| `docs/inventory-items.md` | `GET` | `/accounts/{slug}/inventory_items/archived.json` | `client.inventoryItems.getArchivedItems(...)` | Archived list |
| `docs/inventory-items.md` | `GET` | `/accounts/{slug}/inventory_items/low_quantity.json` | `client.inventoryItems.getLowQuantityItems(...)` | Low stock |
| `docs/inventory-items.md` | `GET` | `/accounts/{slug}/inventory_items/search.json` | `client.inventoryItems.searchItems(...)` | Search |
| `docs/inventory-items.md` | `GET` | `/accounts/{slug}/inventory_items/{id}.json` | `client.inventoryItems.getItem(id)` | Detail |
| `docs/inventory-items.md` | `POST` | `/accounts/{slug}/inventory_items.json` | `client.inventoryItems.createItem(item)` | Create |
| `docs/inventory-items.md` | `PATCH` | `/accounts/{slug}/inventory_items/{id}.json` | `client.inventoryItems.updateItem(id, item)` | Update |
| `docs/inventory-items.md` | `DELETE` | `/accounts/{slug}/inventory_items/{id}.json` | `client.inventoryItems.deleteItem(id)` | Delete |
| `docs/inventory-items.md` | `POST` | `/accounts/{slug}/inventory_items/{id}/archive.json` | `client.inventoryItems.archiveItem(id)` | Archive |
| `docs/inventory-items.md` | `POST` | `/accounts/{slug}/inventory_items/{id}/unarchive.json` | `client.inventoryItems.unarchiveItem(id)` | Unarchive |
| `docs/inventory-moves.md` | `GET` | `/accounts/{slug}/inventory_moves.json` | `client.inventoryMoves.getAllInventoryMoves(...)` | Globální list |
| `docs/inventory-moves.md` | `GET` | `/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json` | `client.inventoryMoves.getInventoryMove(itemId, id)` | Nested detail |
| `docs/inventory-moves.md` | `POST` | `/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves.json` | `client.inventoryMoves.createInventoryMove(itemId, move)` | Nested create |
| `docs/inventory-moves.md` | `PATCH` | `/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json` | `client.inventoryMoves.updateInventoryMove(itemId, id, move)` | Nested update |
| `docs/inventory-moves.md` | `DELETE` | `/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json` | `client.inventoryMoves.deleteInventoryMove(itemId, id)` | Nested delete |

### Audit, todos, webhooks

| Docs | HTTP | Endpoint | Dart mapování | Poznámka |
|---|---|---|---|---|
| `docs/todos.md` | `GET` | `/accounts/{slug}/todos.json` | `client.todos.getTodos(...)` | Paginated |
| `docs/todos.md` | `POST` | `/accounts/{slug}/todos/{id}/toggle_completion.json` | `client.todos.toggleCompletion(id)` | Toggle |
| `docs/events.md` | `GET` | `/accounts/{slug}/events.json` | `client.events.getEvents(...)` | Audit feed |
| `docs/events.md` | `GET` | `/accounts/{slug}/events/paid.json` | `client.events.getEventsPaid(...)` | Paid-only feed |
| `docs/webhooks.md` | `GET` | `/accounts/{slug}/webhooks.json` | `client.webhooks.getWebhooks(...)` | Paginated |
| `docs/webhooks.md` | `GET` | `/accounts/{slug}/webhooks/{id}.json` | `client.webhooks.getWebhook(id)` | Detail |
| `docs/webhooks.md` | `POST` | `/accounts/{slug}/webhooks.json` | `client.webhooks.createWebhook(webhook)` | Create |
| `docs/webhooks.md` | `PATCH` | `/accounts/{slug}/webhooks/{id}.json` | `client.webhooks.updateWebhook(id, webhook)` | Update |
| `docs/webhooks.md` | `DELETE` | `/accounts/{slug}/webhooks/{id}.json` | `client.webhooks.deleteWebhook(id)` | Delete |
| `docs/webhooks.md` | `GET` | `/accounts/{slug}/webhooks/{failed_deliveries_uuid}/failed_deliveries.json` | `client.webhooks.getFailedDeliveries(uuid, page: ...)` | Vrací `PaginatedResponse<WebhookFailedDelivery>` |

### Poznámky k mapování

- Podle současného stavu SDK jsou prakticky všechny dokumentované endpointy pokryté.
- Slabší místa nejsou v coverage, ale v ergonomii:
  - `client.users.getCurrentUser()` je globální endpoint a interně obchází account-scoped base URL.
  - `client.recurringGenerators.activate(...)` bere `nextOccurrenceOn` jako `String`, ne `DateTime`.
  - `client.inboxFiles.createInboxFile(...)` očekává Data URI, ne jen raw base64.
  - `client.inventoryMoves.getAllInventoryMoves(...)` listuje globálně, zatímco detail a mutace jsou nested pod itemem.
- Live ověření z `2026-03-13` ukázalo, že `document_type=partial_proforma` šlo v `testcompany1` vytvořit i přesto, že `docs/invoices.md` tvrdí „cannot be set for new documents“. SDK proto tento enum i live coverage záměrně zachovává.

## 2. Praktický integrační cheat-sheet pro Dart

### Základní setup

```dart
final client = FakturoidClient(
  slug: 'moje-firma',
  clientId: 'CLIENT_ID',
  clientSecret: 'CLIENT_SECRET',
  redirectUri: 'https://app.example.local/callback',
  userAgent: 'MyApp (admin@example.com)',
);
```

- `slug` určuje account-scoped base URL v `lib/src/fakturoid_client.dart`.
- SDK používá `dio`, auth interceptor a error interceptor automaticky.
- Tokeny se ukládají přes `TokenStorage`; defaultně přes secure storage namespacovanou slugem.

### Auth flow

#### Client Credentials

```dart
await client.auth.loginWithClientCredentials();
final account = await client.account.getAccount();
```

Použij, když:

- integrace běží pro jeden konkrétní účet,
- nepotřebuješ interaktivní consent flow.

#### Authorization Code + PKCE

```dart
final authUrl = await client.auth.getAuthorizationUrl();
// otevři authUrl v browseru

await client.auth.exchangeAuthorizationCode(callbackUri);
```

Použij, když:

- děláš multi-tenant integraci,
- uživatel si má účet autorizovat sám.

### Bootstrap workflow

```dart
final me = await client.users.getCurrentUser();
final accounts = me.accounts;
```

- `/user.json` je jediný správný zdroj pro seznam dostupných účtů a jejich `slug`.
- Praktická poznámka: současný `FakturoidClient` chce `slug` už v konstruktoru, takže initial bootstrap není úplně ergonomický, pokud slug předem neznáš.

### Faktury

```dart
final invoices = await client.invoices.getInvoices(
  page: 1,
  documentType: InvoiceListDocumentType.regular,
);

final invoice = await client.invoices.getInvoice(123);

await client.invoices.createInvoice(
  Invoice(
    subjectId: 1,
    documentType: DocumentType.invoice,
  ),
  relatedId: 456,
);

await client.invoices.fireAction(123, InvoiceFireAction.lock);
final pdf = await client.invoices.downloadInvoicePdf(123);
```

Mysli na to:

- PDF může krátce vracet `204` na úrovni API; je dobré mít retry.
- Platby nejsou součást CRUD faktury, ale jdou přes `client.invoicePayments`.
- Odesílání emailu je přes `client.invoiceMessages`.
- Manuálně navázaná invoice z proformy používá při create `relatedId`.
- Live API aktuálně akceptovalo i `DocumentType.partialProforma`, i když to veřejná dokumentace popisuje jako legacy-only variantu.

### Platby faktur

```dart
await client.invoicePayments.createPayment(
  123,
  InvoicePayment(
    paidOn: DateTime.now(),
    amount: 1000,
  ),
);

await client.invoicePayments.createTaxDocument(123, 456);
```

- U proformy může payment spouštět follow-up document flow.
- `createTaxDocument(...)` je samostatný krok.

### Výdaje

```dart
final expenses = await client.expenses.getExpenses(page: 1);
final expense = await client.expenses.getExpense(321);

await client.expenses.fireAction(321, ExpenseFireAction.lock);
await client.expensePayments.createPayment(
  321,
  InvoicePayment(
    paidOn: DateTime.now(),
    amount: 500,
  ),
);
```

- Expense lifecycle je jednodušší než invoice lifecycle.
- Attachment download je separátní stejně jako u faktur.

### Inbox files a OCR

```dart
await client.inboxFiles.createInboxFile(
  'data:application/pdf;base64,JVBERi0xLjcK...',
  filename: 'receipt.pdf',
  sendToOcr: true,
);

await client.inboxFiles.sendToOcr(42);
final bytes = await client.inboxFiles.downloadInboxFile(42);
```

- Posílej celé Data URI.
- OCR je async proces; stav sleduj přes `ocrStatus`.

### Inventory

```dart
final items = await client.inventoryItems.getInventoryItems(page: 1);
await client.inventoryItems.archiveItem(10);

final moves = await client.inventoryMoves.getAllInventoryMoves(
  inventoryItemId: 10,
);

await client.inventoryMoves.createInventoryMove(
  10,
  InventoryMove(
    direction: InventoryMoveDirection.incoming,
    movedOn: DateTime.now(),
    quantityChange: 5,
    purchasePrice: 100,
  ),
);
```

- Stock quantity se po vytvoření itemu mění přes moves.
- Document-linked moves nemusí být editovatelné.

### Webhooky

```dart
final hooks = await client.webhooks.getWebhooks(page: 1);

final failed = await client.webhooks.getFailedDeliveries(
  'failed-deliveries-uuid',
  page: 1,
);
```

- Consumer musí deduplikovat podle `Idempotency-Key`.
- Failed deliveries endpoint je důležitý pro debugging produkce.

### Error handling

- API používá validační `errors.{field}` i obecné `error_description`.
- V SDK se mapování dělá přes error interceptor; testy to ověřují v `test/fakturoid_api_test.dart`.
- Prakticky počítej s těmito stavy:
  - `422` validace,
  - `403` business pravidla, plan restrictions nebo locked document,
  - `429` rate limiting,
  - `503` temporary unavailable,
  - `204` u některých async nebo binary scénářů.

### Doporučený order operací

1. Získat token.
2. Ověřit účet nebo user context.
3. Pracovat přes konkrétní repository.
4. U payment, message, OCR a fire action počítat s odděleným workflow.
5. U webhook consumeru zavést idempotenci a retry-safe processing.

## 3. Návrh typů a API klienta v Dartu

Nejde o greenfield návrh, ale o doporučení, jak držet a rozvíjet současný SDK shape.

### Co je už navržené dobře

- Jedno centrální entrypoint API přes `FakturoidClient` v `lib/src/fakturoid_client.dart`.
- Tenké repository wrappery, které dobře odpovídají REST endpointům a snadno se testují.
- Oddělená auth vrstva v `lib/src/auth/auth_repository.dart`.
- `freezed` + `json_serializable` v `pubspec.yaml` dávají správný základ pro immutable modely.
- Parity testy proti docs v `test/fakturoid_api_test.dart` jsou správný styl pro SDK tohoto typu.

### Doporučené typové konvence

- Pro list endpointy držet `PaginatedResponse<T>` tam, kde API opravdu stránkuje.
- `List<T>` používat jen u skutečně referenčních full-list endpointů typu bank accounts a number formats.
- Pro binary response držet `Uint8List`.
- Pro enumy držet explicitní wire hodnoty přes `.value`.
- Pro nested JSON payloady držet samostatné modely, například attachment, VAT summary, paid advance, line inventory nebo webhook failed delivery attempt.

### Co bych zachoval beze změny

- `client.<repository>.<method>()` naming.
- Jeden `Dio` pro account-scoped API + separátní auth `Dio`.
- `ApiUtils.removeNulls(...)` před serializací request payloadů.
- Interceptory pro auth a errors místo ručního řešení v každém repository.

### Kde jsou dnes ergonomické hrany

- **Slug bootstrap problém**
  - `FakturoidClient` chce `slug`, ale `/user.json` je endpoint, kterým slug typicky zjišťuješ.
  - Do budoucna dává smysl zvážit buď `FakturoidBootstrapClient` bez slugu, statickou helper factory, nebo separátní public auth/bootstrap API.

- **`activate(..., nextOccurrenceOn)` jako `String`**
  - V Dartu by bylo čistší typovat to jako `DateTime` a serializovat interně.

- **Create/update přes plný entity model**
  - Dnes je to pohodlné, ale dlouhodobě to míchá read-only a write-only pole.
  - Pokud bude SDK dál růst, je rozumný směr zavést request DTO jako `InvoiceCreateRequest`, `InvoiceUpdateRequest`, `ExpenseCreateRequest` nebo `WebhookCreateRequest`.

- **Nekonzistence návratových obalů**
  - `getFailedDeliveries(...)` vrací `List<WebhookFailedDelivery>`, i když endpoint podporuje `page`.

- **Inbox file API**
  - Parametr `attachmentBase64` je ve skutečnosti Data URI.
  - Název `attachmentDataUri` by byl přesnější.

### Doporučený tvar SDK při dalším rozšiřování

- **Public API**
  - zachovat v `lib/fakturoid_api.dart`,
  - exportovat jen stabilní surface.

- **Repositories**
  - jeden endpoint cluster = jeden repository soubor.

- **Models**
  - `freezed` immutable modely,
  - request DTO oddělit tam, kde začne být payload složitý.

- **Enums**
  - vždy wire-safe hodnoty z docs,
  - počítat s dokumentačními nekonzistencemi.

- **Testing**
  - pokračovat request-parity stylem z `test/fakturoid_api_test.dart`,
  - každý nový endpoint pokrýt testem path/query/body, parsing testem a případně error mapping testem.

### Praktický závěr k Dart části

- Současný klient je architektonicky dobře postavený.
- Není potřeba ho přepisovat.
- Největší budoucí přínos by měl:
  1. lepší bootstrap bez nutnosti předem znát slug,
  2. silnější request DTO separation u složitých write endpointů,
  3. drobné ergonomické sjednocení typů a návratových obalů.
