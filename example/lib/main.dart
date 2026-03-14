import 'dart:developer' as developer;

import 'package:fakturoid_api_dart/fakturoid_api.dart';

void main() async {
  // 1. Vytvoříme instanci klienta Fakturoid API.
  // Parametr "slug" reprezentuje tvoji firmu/účet na Fakturoidu.
  // Parametr "userAgent" je vyžadován Fakturoid API pro identifikaci tvé aplikace (NázevAppky (tvuj@email.cz)).
  final client = FakturoidClient(
    slug: 'mojefirma',
    clientId: 'tvuj_client_id_z_fakturoidu',
    clientSecret: 'tvuj_client_secret',
    redirectUri: 'mojeapp://callback',
    userAgent: 'MojeFakturoidAppka (jan@novak.cz)',
  );

  // 2. V reálné aplikaci si musíš otevřít in-app browser (např. balíčkem url_launcher),
  // a nechat uživatele přihlásit. Fakturoid pak uživatele přesměruje zpět
  // do tvé aplikace pomocí URL callbacku (tzv. deep link).
  developer.log(
    'Autorizační URL pro web: ${await client.auth.getAuthorizationUrl()}',
  );

  // --- Zde by uživatel provedl přihlášení v prohlížeči ---

  // 3. Příklad zachyceného deep linku z Fakturoidu
  // (V praxi tento link odchytíš třeba pomocí balíčku `app_links`)
  final fakeCallbackUrl = Uri.parse(
    'mojeapp://callback?code=fake_code&state=fake_state',
  );
  developer.log('Ukázkový callback URI: $fakeCallbackUrl');

  try {
    // 4. Předáš callback do klienta. Klient zkontroluje CSRF state, ošetří PKCE
    // a uloží tokeny lokálně do zabezpečeného úložiště (iOS Keychain / Android Keystore).
    // Odtud už bude všechny požadavky provádět s tímto platným tokenem automaticky.
    // await client.auth.exchangeAuthorizationCode(fakeCallbackUrl);
    // Odkomentuj v reálném nasazení.
    developer.log('Přihlášení a uložení tokenu by proběhlo úspěšně.');

    // ----------------------------------------------------------
    //  Nyní můžeme používat jednotlivé Repozitáře
    // ----------------------------------------------------------

    // --- A) Načtení aktuálního účtu (Account) ---
    final account = await client.account.getAccount();
    developer.log(
      'Přihlášen jako: ${account.name} (IČ: ${account.registrationNo})',
    );

    // --- B) Práce s kontakty (Subjects) ---
    // Stránkovaná metoda getSubjects()
    final subjectsResponse = await client.subjects.getSubjects(page: 1);
    developer.log(
      'Načteno kontaktů na první stránce: ${subjectsResponse.items.length}',
    );

    // Filtrování kontaktů přes parametry
    final updatedSubjects = await client.subjects.getSubjects(
      updatedSince: DateTime.now().subtract(const Duration(days: 7)),
    );
    developer.log(
      'Kontaktů upravených za poslední týden: ${updatedSubjects.items.length}',
    );

    // Fulltextové vyhledávání v kontaktech
    final searchSubjects = await client.subjects.searchSubjects(
      query: 'Jan Novák',
    );
    developer.log('Nalezeno při hledání: ${searchSubjects.items.length}');

    // Vytvoření nového kontaktu
    final newSubject = Subject(
      name: 'Bruce Wayne',
      email: 'bruce@wayne-enterprises.com',
      city: 'Gotham',
      type: SubjectType.customer,
    );
    final createdSubject = await client.subjects.createSubject(newSubject);
    developer.log('Vytvořen kontakt s ID: ${createdSubject.id}');

    // --- C) Práce s Fakturami (Invoices) ---
    // Vytvoření nové faktury
    final newInvoice = Invoice(
      subjectId: createdSubject.id!,
      documentType: DocumentType.invoice,
      paymentMethod: PaymentMethod.bank,
      lines: [
        InvoiceLine(
          name: 'Vývoj Flutter aplikace',
          quantity: '1',
          unitPrice: '50000.0',
          vatRate: 21,
        ),
      ],
    );
    final createdInvoice = await client.invoices.createInvoice(newInvoice);
    developer.log('Vytvořena faktura č: ${createdInvoice.number}');

    // Odeslání faktury zákazníkovi (Fire Action)
    await client.invoices.fireAction(
      createdInvoice.id!,
      InvoiceFireAction.markAsSent,
    );

    // Stáhnout PDF faktury (vrací Uint8List, který pak můžeš uložit do souboru)
    final pdfBytes = await client.invoices.downloadInvoicePdf(
      createdInvoice.id!,
    );
    developer.log('PDF má ${pdfBytes.length} bytů.');

    // --- D) Zaplacení Faktury (Invoice Payments) ---
    final payment = InvoicePayment(
      paidOn: DateTime.now().toIso8601String().substring(
        0,
        10,
      ), // např. "2024-03-12"
      markDocumentAsPaid: true,
    );
    await client.invoicePayments.createPayment(createdInvoice.id!, payment);
    developer.log('Faktura zaplacena!');

    // --- E) Sklad a ceník (Inventory Items) ---
    final inventory = await client.inventoryItems.getInventoryItems();
    developer.log('Mám v ceníku ${inventory.items.length} položek.');
  } on FakturoidValidationException catch (e) {
    // Klient automaticky odchytává 422 chyby z Fakturoid API.
    // Typicky se stane, když vyplníš špatné IČO nebo nevložíš povinné pole.
    developer.log('Chyba validace: ${e.errors}');
  } on FakturoidRateLimitException {
    developer.log('Příliš mnoho požadavků za vteřinu na Fakturoid API (429).');
  } catch (e) {
    developer.log('Obecná chyba: $e');
  }
}
