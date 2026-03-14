import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'account.dart';
import 'auth.dart';
import 'bank_accounts.dart';
import 'estimates.dart';
import 'events.dart';
import 'expense_payments.dart';
import 'expenses.dart';
import 'generators.dart';
import 'inbox_files.dart';
import 'inventory_items.dart';
import 'inventory_moves.dart';
import 'invoice_messages.dart';
import 'invoice_payments.dart';
import 'invoices.dart';
import 'number_formats.dart';
import 'recurring_generators.dart';
import 'subjects.dart';
import 'todos.dart';
import 'users.dart';
import 'webhooks.dart';

/// Hlavní rozcestník pro ukázky Dart Fakturoid SDK.
///
/// Pro spuštění ukázek budete potřebovat své údaje z Fakturoidu (Nastavení -> Uživatelský účet -> API).
void main() async {
  // Inicializace klienta
  final client = FakturoidClient(
    slug: 'testcompany1', // subdoména vašeho účtu
    clientId: 'CLIENT_ID',
    clientSecret: 'CLIENT_SECRET',
    redirectUri: 'https://example.com/callback',
    userAgent: 'MyFakturoidApp (admin@example.com)',
  );

  print('🚀 Spouštím ukázky Dart Fakturoid SDK...');

  // 1. Autentizace
  await runAuthExample();

  print('\n--- Následující ukázky vyžadují platný Access Token ---');
  // Pro účely ukázky se zde přihlásíme (v reálu byste načetli uložený token)
  // await client.auth.loginWithClientCredentials();

  // 2. Účet a uživatelé
  await runAccountExample(client);
  await runUsersExample(client);

  // 3. Bankovní účty a nastavení
  await runBankAccountsExample(client);
  await runNumberFormatsExample(client);

  // 4. Kontakty
  await runSubjectsExample(client);

  // 5. Faktury, nabídky a zprávy
  await runInvoicesExample(client);
  await runEstimatesExample(client);
  await runInvoiceMessagesExample(client);
  await runInvoicePaymentsExample(client);

  // 6. Náklady a jejich platby
  await runExpensesExample(client);
  await runExpensePaymentsExample(client);

  // 7. Skladové hospodářství
  await runInventoryItemsExample(client);
  await runInventoryMovesExample(client);

  // 8. Šablony a pravidelnost
  await runGeneratorsExample(client);
  await runRecurringGeneratorsExample(client);

  // 9. Inbox a soubory
  await runInboxFilesExample(client);

  // 10. Webhooky
  await runWebhooksExample(client);

  // 11. Úkoly a události
  await runTodosExample(client);
  await runEventsExample(client);

  print('\n✅ Všechny ukázky byly vypsány.');
}
