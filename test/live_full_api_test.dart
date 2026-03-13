import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/test_helpers.dart';

const _requiredEnvironmentKeys = <String>[
  'FAKTUROID_CLIENT_ID',
  'FAKTUROID_CLIENT_SECRET',
];

const _defaultRedirectUri = 'https://example.com/callback';

bool get _hasLiveEnvironment {
  return _requiredEnvironmentKeys.every((key) {
    final value = Platform.environment[key];
    return value != null && value.isNotEmpty;
  });
}

bool get _shouldPreserveFixtures {
  final value = Platform.environment['FAKTUROID_PRESERVE_LIVE_FIXTURES'];
  if (value == null) {
    return false;
  }

  switch (value.toLowerCase()) {
    case '1':
    case 'true':
    case 'yes':
    case 'on':
      return true;
    default:
      return false;
  }
}

String _env(String key) {
  return Platform.environment[key] ?? (throw StateError('Missing env: $key'));
}

String _isoDate(DateTime value) => value.toIso8601String().split('T').first;

String _runId() => DateTime.now().microsecondsSinceEpoch.toRadixString(36);

String _shortRunId(String value) {
  if (value.length <= 8) {
    return value;
  }

  return value.substring(0, 8);
}

String _variableSymbol(String prefix, String value) {
  return '$prefix${_shortRunId(value)}';
}

String _testEmail(String suffix) => 'fakturoid-live+$suffix@example.com';

String _testAttachmentPdfDataUri() {
  return 'data:application/pdf;base64,'
      'JVBERi0xLjQKJeLjz9MKMSAwIG9iago8PCAvVHlwZSAvQ2F0YWxvZyAvUGFnZXMgMiAwIFIgPj4KZW5kb2JqCjIgMCBvYmoKPDwgL1R5cGUgL1BhZ2VzIC9Db3VudCAxIC9LaWRzIFszIDAgUl0gPj4KZW5kb2JqCjMgMCBvYmoKPDwgL1R5cGUgL1BhZ2UgL1BhcmVudCAyIDAgUiAvTWVkaWFCb3ggWzAgMCAzMDAgMTQ0XSAvQ29udGVudHMgNCAwIFIgL1Jlc291cmNlcyA8PCAvRm9udCA8PCAvRjEgNSAwIFIgPj4gPj4gPj4KZW5kb2JqCjQgMCBvYmoKPDwgL0xlbmd0aCA1NSA+PgpzdHJlYW0KQlQKL0YxIDEyIFRmCjcyIDcyIFRkCihPcGVuQ29kZSBhdHRhY2htZW50IHRlc3QpIFRqCkVUCmVuZHN0cmVhbQplbmRvYmoKNSAwIG9iago8PCAvVHlwZSAvRm9udCAvU3VidHlwZSAvVHlwZTEgL0Jhc2VGb250IC9IZWx2ZXRpY2EgPj4KZW5kb2JqCnhyZWYKMCA2CjAwMDAwMDAwMDAgNjU1MzUgZiAKMDAwMDAwMDAxNSAwMDAwMCBuIAowMDAwMDAwMDY0IDAwMDAwIG4gCjAwMDAwMDAxMjEgMDAwMDAgbiAKMDAwMDAwMDI0NyAwMDAwMCBuIAowMDAwMDAwMzUxIDAwMDAwIG4gCnRyYWlsZXIKPDwgL1NpemUgNiAvUm9vdCAxIDAgUiA+PgpzdGFydHhyZWYKNDIxCiUlRU9GCg==';
}

String _testPdfDataUri(String suffix) {
  final bytes = utf8.encode(
    '%PDF-1.4\n'
    '1 0 obj\n'
    '<< /Type /Catalog /Pages 2 0 R >>\n'
    'endobj\n'
    '2 0 obj\n'
    '<< /Type /Pages /Count 1 /Kids [3 0 R] >>\n'
    'endobj\n'
    '3 0 obj\n'
    '<< /Type /Page /Parent 2 0 R /MediaBox [0 0 300 144] /Contents 4 0 R >>\n'
    'endobj\n'
    '4 0 obj\n'
    '<< /Length 44 >>\n'
    'stream\n'
    'BT /F1 12 Tf 72 72 Td (OpenCode $suffix) Tj ET\n'
    'endstream\n'
    'endobj\n'
    'xref\n'
    '0 5\n'
    '0000000000 65535 f \n'
    '0000000010 00000 n \n'
    '0000000063 00000 n \n'
    '0000000122 00000 n \n'
    '0000000208 00000 n \n'
    'trailer\n'
    '<< /Root 1 0 R /Size 5 >>\n'
    'startxref\n'
    '299\n'
    '%%EOF\n',
  );

  return 'data:application/pdf;base64,${base64Encode(bytes)}';
}

String _resolveSlug(User user) {
  final defaultAccount = user.defaultAccount;
  if (defaultAccount != null && defaultAccount.isNotEmpty) {
    return defaultAccount;
  }

  final accounts = user.accounts;
  if (accounts != null) {
    for (final account in accounts) {
      final slug = account.slug;
      if (slug != null && slug.isNotEmpty) {
        return slug;
      }
    }
  }

  throw StateError('Unable to resolve Fakturoid account slug from /user.json.');
}

FakturoidAuthException? _authError(Object error) {
  if (error is FakturoidAuthException) {
    return error;
  }

  if (error is DioException && error.error is FakturoidAuthException) {
    return error.error as FakturoidAuthException;
  }

  return null;
}

InvoiceLine _line(String name, String suffix) {
  return InvoiceLine(
    name: '$name $suffix',
    unitPrice: '100.00',
    quantity: '1.0',
    vatRate: 21,
  );
}

DocumentAttachment _attachment(String suffix) {
  return DocumentAttachment(
    filename: 'opencode-$suffix.pdf',
    dataUrl: _testAttachmentPdfDataUri(),
  );
}

void _reportPreservedFixture(String type, int? id) {
  if (!_shouldPreserveFixtures || id == null) {
    return;
  }

  debugPrint('Preserved $type: $id');
}

Invoice _buildInvoice(_LiveContext context, String suffix) {
  return Invoice(
    subjectId: context.baseSubject.id!,
    documentType: DocumentType.proforma,
    proformaFollowupDocument: ProformaFollowupDocument.none,
    numberFormatId: context.numberFormatId,
    variableSymbol: _variableSymbol('I', context.runId),
    privateNote: 'OpenCode invoice $suffix',
    tags: ['opencode-live', suffix],
    lines: [_line('Invoice line', suffix)],
    attachments: [_attachment('invoice-$suffix')],
  );
}

Expense _buildExpense(_LiveContext context, String suffix) {
  return Expense(
    subjectId: context.baseSubject.id!,
    variableSymbol: _variableSymbol('E', context.runId),
    privateNote: 'OpenCode expense $suffix',
    tags: ['opencode-live', suffix],
    lines: [_line('Expense line', suffix)],
    attachments: [_attachment('expense-$suffix')],
  );
}

Generator _buildGenerator(_LiveContext context, String suffix) {
  return Generator(
    name: 'OpenCode generator $suffix',
    subjectId: context.baseSubject.id!,
    numberFormatId: context.numberFormatId,
    note: 'Generator $suffix',
    tags: ['opencode-live', suffix],
    lines: [_line('Generator line', suffix)],
  );
}

RecurringGenerator _buildRecurringGenerator(
  _LiveContext context,
  String suffix,
) {
  final nextRun = _isoDate(DateTime.now().toUtc().add(const Duration(days: 7)));

  return RecurringGenerator(
    name: 'OpenCode recurring $suffix',
    subjectId: context.baseSubject.id!,
    active: true,
    startDate: nextRun,
    nextOccurrenceOn: nextRun,
    monthsPeriod: 1,
    sendEmail: false,
    note: 'Recurring $suffix',
    tags: ['opencode-live', suffix],
    lines: [_line('Recurring line', suffix)],
  );
}

Future<void> _ignoreErrors(Future<void> Function() action) async {
  try {
    await action();
  } catch (_) {}
}

Future<Uint8List> _downloadInvoicePdfWithRetry(
  InvoicesRepository repository,
  int invoiceId,
) async {
  const maxAttempts = 6;

  for (var attempt = 1; attempt <= maxAttempts; attempt++) {
    try {
      return await repository.downloadInvoicePdf(invoiceId);
    } on FakturoidDocumentNotReadyException {
      if (attempt == maxAttempts) {
        rethrow;
      }

      await Future<void>.delayed(const Duration(seconds: 1));
    }
  }

  throw StateError('Unreachable PDF retry state.');
}

final class _LiveContext {
  _LiveContext({
    required this.client,
    required this.tokenStorage,
    required this.user,
    required this.slug,
    required this.runId,
    required this.baseSubject,
    required this.numberFormatId,
    required this.bankAccountId,
  });

  final FakturoidClient client;
  final InMemoryTokenStorage tokenStorage;
  final User user;
  final String slug;
  final String runId;
  final Subject baseSubject;
  final int? numberFormatId;
  final int? bankAccountId;

  static Future<_LiveContext> bootstrap() async {
    final tokenStorage = InMemoryTokenStorage();
    final bootstrapClient = FakturoidClient(
      slug: Platform.environment['FAKTUROID_SLUG'] ?? 'bootstrap',
      clientId: _env('FAKTUROID_CLIENT_ID'),
      clientSecret: _env('FAKTUROID_CLIENT_SECRET'),
      redirectUri:
          Platform.environment['FAKTUROID_REDIRECT_URI'] ?? _defaultRedirectUri,
      userAgent:
          Platform.environment['FAKTUROID_USER_AGENT'] ??
          'TestCompany (https://faktubot.thinkhome.org)',
      customTokenStorage: tokenStorage,
    );

    await bootstrapClient.auth.loginWithClientCredentials();
    final user = await bootstrapClient.users.getCurrentUser();
    final slug = Platform.environment['FAKTUROID_SLUG'] ?? _resolveSlug(user);
    final client = FakturoidClient(
      slug: slug,
      clientId: _env('FAKTUROID_CLIENT_ID'),
      clientSecret: _env('FAKTUROID_CLIENT_SECRET'),
      redirectUri:
          Platform.environment['FAKTUROID_REDIRECT_URI'] ?? _defaultRedirectUri,
      userAgent:
          Platform.environment['FAKTUROID_USER_AGENT'] ??
          'TestCompany (https://faktubot.thinkhome.org)',
      customTokenStorage: tokenStorage,
    );

    final runId = _runId();
    final numberFormats = await client.numberFormats.getNumberFormats();
    final bankAccounts = await client.bankAccounts.getBankAccounts();
    final baseSubject = await client.subjects.createSubject(
      Subject(
        name: 'OpenCode Live Base $runId',
        email: _testEmail(runId),
        customId: 'opencode-live-base-$runId',
      ),
    );
    _reportPreservedFixture('base-subject', baseSubject.id);

    return _LiveContext(
      client: client,
      tokenStorage: tokenStorage,
      user: user,
      slug: slug,
      runId: runId,
      baseSubject: baseSubject,
      numberFormatId: numberFormats.isEmpty ? null : numberFormats.first.id,
      bankAccountId: bankAccounts.isEmpty ? null : bankAccounts.first.id,
    );
  }

  Future<void> dispose() async {
    final subjectId = baseSubject.id;
    if (!_shouldPreserveFixtures && subjectId != null) {
      await _ignoreErrors(() => client.subjects.deleteSubject(subjectId));
    }

    await _ignoreErrors(client.auth.revokeToken);
  }

  Future<Subject> createSubject(String suffix) {
    return client.subjects.createSubject(
      Subject(
        name: 'OpenCode Subject $suffix',
        email: _testEmail(suffix),
        customId: 'opencode-subject-$suffix',
      ),
    );
  }
}

void main() {
  late _LiveContext context;

  setUpAll(() async {
    if (!_hasLiveEnvironment) {
      return;
    }

    context = await _LiveContext.bootstrap();
  });

  tearDownAll(() async {
    if (!_hasLiveEnvironment) {
      return;
    }

    await context.dispose();
  });

  test('reads bootstrap and list endpoints', () async {
    final account = await context.client.account.getAccount();
    final users = await context.client.users.getUsers(page: 1);
    final bankAccounts = await context.client.bankAccounts.getBankAccounts();
    final numberFormats = await context.client.numberFormats.getNumberFormats();
    final events = await context.client.events.getEvents(page: 1);
    final paidEvents = await context.client.events.getEventsPaid(page: 1);
    final todos = await context.client.todos.getTodos(page: 1);
    final inboxFiles = await context.client.inboxFiles.getInboxFiles(page: 1);

    expect(context.user.email, isNotEmpty);
    expect(context.slug, isNotEmpty);
    expect(account, isA<Account>());
    expect(users.items, isA<List<User>>());
    expect(bankAccounts, isA<List<BankAccount>>());
    expect(numberFormats, isA<List<NumberFormat>>());
    expect(events.items, isA<List<Event>>());
    expect(paidEvents.items, isA<List<Event>>());
    expect(todos.items, isA<List<Todo>>());
    expect(inboxFiles.items, isA<List<InboxFile>>());
  }, skip: !_hasLiveEnvironment);

  test('subjects support live CRUD and search', () async {
    final suffix = '${context.runId}-subject';
    Subject? subject;

    try {
      subject = await context.createSubject(suffix);
      final subjectId = subject.id!;
      _reportPreservedFixture('subject', subjectId);

      final fetched = await context.client.subjects.getSubject(subjectId);
      final listed = await context.client.subjects.getSubjects(
        customId: subject.customId,
        page: 1,
      );
      final searched = await context.client.subjects.searchSubjects(
        query: suffix,
        page: 1,
      );
      final updated = await context.client.subjects.updateSubject(
        subjectId,
        subject.copyWith(privateNote: 'updated-$suffix'),
      );

      expect(fetched.id, subjectId);
      expect(listed.items.any((item) => item.id == subjectId), isTrue);
      expect(searched.items, isA<List<Subject>>());
      expect(updated.privateNote, 'updated-$suffix');
    } finally {
      final subjectId = subject?.id;
      if (!_shouldPreserveFixtures && subjectId != null) {
        await _ignoreErrors(
          () => context.client.subjects.deleteSubject(subjectId),
        );
      }
    }
  }, skip: !_hasLiveEnvironment);

  test(
    'invoices support live CRUD, actions, messages, payments and PDF',
    () async {
      final suffix = '${context.runId}-invoice';
      Invoice? invoice;
      InvoicePayment? payment;

      try {
        invoice = await context.client.invoices.createInvoice(
          _buildInvoice(context, suffix),
        );
        final invoiceId = invoice.id!;
        _reportPreservedFixture('invoice', invoiceId);

        final listed = await context.client.invoices.getInvoices(
          subjectId: context.baseSubject.id,
          page: 1,
        );
        final searched = await context.client.invoices.searchInvoices(
          query: suffix,
          tags: ['opencode-live', suffix],
          page: 1,
        );
        final fetched = await context.client.invoices.getInvoice(invoiceId);
        final updated = await context.client.invoices.updateInvoice(
          invoiceId,
          _buildInvoice(
            context,
            suffix,
          ).copyWith(privateNote: 'updated-$suffix', numberFormatId: null),
        );

        await context.client.invoices.fireAction(
          invoiceId,
          InvoiceFireAction.lock,
        );
        await context.client.invoices.fireAction(
          invoiceId,
          InvoiceFireAction.unlock,
        );

        final pdf = await _downloadInvoicePdfWithRetry(
          context.client.invoices,
          invoiceId,
        );
        final invoiceAttachment =
            fetched.attachments != null && fetched.attachments!.isNotEmpty
            ? fetched.attachments!.first
            : null;
        final invoiceAttachmentBytes = invoiceAttachment?.id == null
            ? null
            : await context.client.invoices.downloadAttachment(
                invoiceId,
                invoiceAttachment!.id!,
              );

        payment = await context.client.invoicePayments.createPayment(
          invoiceId,
          InvoicePayment(
            amount: '100.00',
            paidOn: _isoDate(DateTime.now().toUtc()),
            bankAccountId: context.bankAccountId,
            proformaFollowupDocument: ProformaFollowupDocument.none,
          ),
        );
        _reportPreservedFixture('invoice-payment', payment.id);

        await context.client.invoiceMessages.createMessage(
          invoiceId,
          email: context.baseSubject.email,
          subject: 'OpenCode invoice $suffix',
          message: 'Live integration test invoice message',
          deliverNow: false,
        );

        final taxDocument = await context.client.invoicePayments
            .createTaxDocument(invoiceId, payment.id!);

        expect(listed.items.any((item) => item.id == invoiceId), isTrue);
        expect(searched.items, isA<List<Invoice>>());
        expect(fetched.id, invoiceId);
        expect(updated.privateNote, 'updated-$suffix');
        expect(pdf, isNotEmpty);
        expect(invoiceAttachment, isNotNull);
        expect(invoiceAttachmentBytes, isNotNull);
        expect(invoiceAttachmentBytes, isNotEmpty);
        expect(payment.id, isNotNull);
        expect(taxDocument.id, isNotNull);
        expect(taxDocument.taxDocumentId, isNotNull);
        _reportPreservedFixture('tax-document', taxDocument.taxDocumentId);

        final paymentId = payment.id!;
        if (!_shouldPreserveFixtures) {
          await _ignoreErrors(
            () => context.client.invoicePayments.deletePayment(
              invoiceId,
              paymentId,
            ),
          );
        }
        payment = null;
      } finally {
        final paymentId = payment?.id;
        final invoiceId = invoice?.id;

        if (!_shouldPreserveFixtures &&
            paymentId != null &&
            invoiceId != null) {
          await _ignoreErrors(
            () => context.client.invoicePayments.deletePayment(
              invoiceId,
              paymentId,
            ),
          );
        }

        if (!_shouldPreserveFixtures && invoiceId != null) {
          await _ignoreErrors(
            () => context.client.invoices.deleteInvoice(invoiceId),
          );
        }
      }
    },
    skip: !_hasLiveEnvironment,
  );

  test('expenses support live CRUD, actions and payments', () async {
    final suffix = '${context.runId}-expense';
    Expense? expense;
    InvoicePayment? payment;

    try {
      expense = await context.client.expenses.createExpense(
        _buildExpense(context, suffix),
      );
      final expenseId = expense.id!;
      _reportPreservedFixture('expense', expenseId);

      final listed = await context.client.expenses.getExpenses(
        subjectId: context.baseSubject.id,
        page: 1,
      );
      final searched = await context.client.expenses.searchExpenses(
        query: suffix,
        tags: ['opencode-live', suffix],
        page: 1,
      );
      final fetched = await context.client.expenses.getExpense(expenseId);
      final updated = await context.client.expenses.updateExpense(
        expenseId,
        _buildExpense(context, suffix).copyWith(privateNote: 'updated-$suffix'),
      );

      await context.client.expenses.fireAction(
        expenseId,
        ExpenseFireAction.lock,
      );
      await context.client.expenses.fireAction(
        expenseId,
        ExpenseFireAction.unlock,
      );
      final expenseAttachment =
          fetched.attachments != null && fetched.attachments!.isNotEmpty
          ? fetched.attachments!.first
          : null;
      final expenseAttachmentBytes = expenseAttachment?.id == null
          ? null
          : await context.client.expenses.downloadAttachment(
              expenseId,
              expenseAttachment!.id!,
            );

      payment = await context.client.expensePayments.createPayment(
        expenseId,
        InvoicePayment(
          amount: '100.00',
          paidOn: _isoDate(DateTime.now().toUtc()),
          bankAccountId: context.bankAccountId,
        ),
      );
      _reportPreservedFixture('expense-payment', payment.id);

      expect(listed.items.any((item) => item.id == expenseId), isTrue);
      expect(searched.items, isA<List<Expense>>());
      expect(fetched.id, expenseId);
      expect(updated.privateNote, 'updated-$suffix');
      expect(expenseAttachment, isNotNull);
      expect(expenseAttachmentBytes, isNotNull);
      expect(expenseAttachmentBytes, isNotEmpty);
      expect(payment.id, isNotNull);

      if (!_shouldPreserveFixtures) {
        await context.client.expensePayments.deletePayment(
          expenseId,
          payment.id!,
        );
      }
      payment = null;
    } finally {
      final paymentId = payment?.id;
      final expenseId = expense?.id;

      if (!_shouldPreserveFixtures && paymentId != null && expenseId != null) {
        await _ignoreErrors(
          () => context.client.expensePayments.deletePayment(
            expenseId,
            paymentId,
          ),
        );
      }

      if (!_shouldPreserveFixtures && expenseId != null) {
        await _ignoreErrors(
          () => context.client.expenses.deleteExpense(expenseId),
        );
      }
    }
  }, skip: !_hasLiveEnvironment);

  test('inventory items and moves support live lifecycle', () async {
    final shortId = _shortRunId(context.runId);
    final suffix = 'inventory-$shortId';
    InventoryItem? item;
    InventoryMove? move;

    try {
      item = await context.client.inventoryItems.createItem(
        InventoryItem(
          name: 'OpenCode Item $suffix',
          sku: 'sku-$shortId',
          articleNumber: 'art-$shortId',
          trackQuantity: true,
          quantity: '10.0',
          minQuantity: '1.0',
          nativePurchasePrice: '50.00',
          nativeRetailPrice: '70.00',
          privateNote: 'Item $suffix',
        ),
      );
      final itemId = item.id!;
      _reportPreservedFixture('inventory-item', itemId);

      final listed = await context.client.inventoryItems.getInventoryItems(
        sku: item.sku,
        page: 1,
      );
      final searched = await context.client.inventoryItems.searchItems(
        query: suffix,
        page: 1,
      );
      final fetched = await context.client.inventoryItems.getItem(itemId);
      final updated = await context.client.inventoryItems.updateItem(
        itemId,
        item.copyWith(privateNote: 'updated-$suffix'),
      );

      await context.client.inventoryItems.archiveItem(itemId);
      final archived = await context.client.inventoryItems.getArchivedItems(
        sku: item.sku,
        page: 1,
      );
      await context.client.inventoryItems.unarchiveItem(itemId);
      await context.client.inventoryItems.getLowQuantityItems(page: 1);

      move = await context.client.inventoryMoves.createInventoryMove(
        itemId,
        InventoryMove(
          inventoryItemId: itemId,
          direction: InventoryMoveDirection.moveIn,
          movedOn: DateTime.now().toUtc(),
          quantityChange: '2.0',
          purchasePrice: '50.00',
          privateNote: 'Move $suffix',
        ),
      );
      _reportPreservedFixture('inventory-move', move.id);

      final globalMoves = await context.client.inventoryMoves
          .getAllInventoryMoves(inventoryItemId: itemId, page: 1);
      final itemMoves = await context.client.inventoryMoves.getInventoryMoves(
        itemId,
        page: 1,
      );
      final moveId = move.id!;
      final fetchedMove = await context.client.inventoryMoves.getInventoryMove(
        itemId,
        moveId,
      );
      final updatedMove = await context.client.inventoryMoves
          .updateInventoryMove(
            itemId,
            moveId,
            move.copyWith(quantityChange: '3.0'),
          );

      expect(listed.items.any((entry) => entry.id == itemId), isTrue);
      expect(searched.items, isA<List<InventoryItem>>());
      expect(fetched.id, itemId);
      expect(updated.privateNote, 'updated-$suffix');
      expect(archived.items.any((entry) => entry.id == itemId), isTrue);
      expect(globalMoves.items.any((entry) => entry.id == moveId), isTrue);
      expect(itemMoves.items.any((entry) => entry.id == moveId), isTrue);
      expect(fetchedMove.id, moveId);
      expect(updatedMove.quantityChange, '3.0');

      if (!_shouldPreserveFixtures) {
        await context.client.inventoryMoves.deleteInventoryMove(itemId, moveId);
      }
      move = null;
    } finally {
      final moveId = move?.id;
      final itemId = item?.id;

      if (!_shouldPreserveFixtures && moveId != null && itemId != null) {
        await _ignoreErrors(
          () =>
              context.client.inventoryMoves.deleteInventoryMove(itemId, moveId),
        );
      }

      if (!_shouldPreserveFixtures && itemId != null) {
        await _ignoreErrors(
          () => context.client.inventoryItems.deleteItem(itemId),
        );
      }
    }
  }, skip: !_hasLiveEnvironment);

  test(
    'generators and recurring generators support live lifecycle',
    () async {
      final suffix = '${context.runId}-generator';
      Generator? generator;
      RecurringGenerator? recurringGenerator;

      try {
        generator = await context.client.generators.createGenerator(
          _buildGenerator(context, suffix),
        );
        final generatorId = generator.id!;
        _reportPreservedFixture('generator', generatorId);
        final listed = await context.client.generators.getGenerators(page: 1);
        final fetched = await context.client.generators.getGenerator(
          generatorId,
        );
        final updated = await context.client.generators.updateGenerator(
          generatorId,
          generator.copyWith(note: 'updated-$suffix'),
        );

        recurringGenerator = await context.client.recurringGenerators
            .createRecurringGenerator(
              _buildRecurringGenerator(context, suffix),
            );
        final recurringId = recurringGenerator.id!;
        _reportPreservedFixture('recurring-generator', recurringId);
        final recurringList = await context.client.recurringGenerators
            .getRecurringGenerators(page: 1);
        final recurringFetched = await context.client.recurringGenerators
            .getRecurringGenerator(recurringId);
        final recurringUpdated = await context.client.recurringGenerators
            .updateRecurringGenerator(
              recurringId,
              _buildRecurringGenerator(
                context,
                suffix,
              ).copyWith(note: 'updated-$suffix'),
            );

        final paused = await context.client.recurringGenerators.pause(
          recurringId,
        );
        final activated = await context.client.recurringGenerators.activate(
          recurringId,
        );

        expect(listed.items.any((entry) => entry.id == generatorId), isTrue);
        expect(fetched.id, generatorId);
        expect(updated.note, 'updated-$suffix');
        expect(
          recurringList.items.any((entry) => entry.id == recurringId),
          isTrue,
        );
        expect(recurringFetched.id, recurringId);
        expect(recurringUpdated.note, 'updated-$suffix');
        expect(paused.active, isFalse);
        expect(activated.active, isTrue);
      } finally {
        final recurringId = recurringGenerator?.id;
        final generatorId = generator?.id;

        if (!_shouldPreserveFixtures && recurringId != null) {
          await _ignoreErrors(
            () => context.client.recurringGenerators.deleteRecurringGenerator(
              recurringId,
            ),
          );
        }

        if (!_shouldPreserveFixtures && generatorId != null) {
          await _ignoreErrors(
            () => context.client.generators.deleteGenerator(generatorId),
          );
        }
      }
    },
    skip: !_hasLiveEnvironment,
  );

  test('webhooks support live lifecycle', () async {
    final suffix = '${context.runId}-webhook';
    Webhook? webhook;

    try {
      webhook = await context.client.webhooks.createWebhook(
        Webhook(
          webhookUrl: 'https://example.com/fakturoid/$suffix',
          active: true,
          events: const ['invoice_paid'],
        ),
      );
      final webhookId = webhook.id!;
      _reportPreservedFixture('webhook', webhookId);

      final listed = await context.client.webhooks.getWebhooks(page: 1);
      final fetched = await context.client.webhooks.getWebhook(webhookId);
      final updated = await context.client.webhooks.updateWebhook(
        webhookId,
        webhook.copyWith(authHeader: 'Bearer $suffix'),
      );

      final failedDeliveriesUuid = updated.failedDeliveriesUuid;
      List<WebhookFailedDelivery>? failedDeliveries;
      if (failedDeliveriesUuid != null && failedDeliveriesUuid.isNotEmpty) {
        failedDeliveries = await context.client.webhooks.getFailedDeliveries(
          failedDeliveriesUuid,
          page: 1,
        );
      }

      expect(listed.items.any((entry) => entry.id == webhookId), isTrue);
      expect(fetched.id, webhookId);
      expect(updated.authHeader, 'Bearer $suffix');
      expect(
        failedDeliveries ?? <WebhookFailedDelivery>[],
        isA<List<WebhookFailedDelivery>>(),
      );
    } finally {
      final webhookId = webhook?.id;
      if (!_shouldPreserveFixtures && webhookId != null) {
        await _ignoreErrors(
          () => context.client.webhooks.deleteWebhook(webhookId),
        );
      }
    }
  }, skip: !_hasLiveEnvironment);

  test('inbox files support live lifecycle', () async {
    final suffix = '${context.runId}-inbox';
    InboxFile? inboxFile;
    FakturoidAuthException? ocrError;

    try {
      inboxFile = await context.client.inboxFiles.createInboxFile(
        _testPdfDataUri(suffix),
        filename: 'opencode-$suffix.pdf',
        sendToOcr: false,
      );
      final inboxFileId = inboxFile.id!;
      _reportPreservedFixture('inbox-file', inboxFileId);

      final listed = await context.client.inboxFiles.getInboxFiles(page: 1);
      final downloaded = await context.client.inboxFiles.downloadInboxFile(
        inboxFileId,
      );

      try {
        await context.client.inboxFiles.sendToOcr(inboxFileId);
      } catch (error) {
        ocrError = _authError(error);
        if (ocrError == null) {
          rethrow;
        }
      }

      expect(listed.items.any((entry) => entry.id == inboxFileId), isTrue);
      expect(downloaded, isNotEmpty);
      if (ocrError != null) {
        expect(ocrError.statusCode, 403);
        expect(ocrError.message, contains('extractions'));
      }
    } finally {
      final inboxFileId = inboxFile?.id;
      if (!_shouldPreserveFixtures && inboxFileId != null) {
        await _ignoreErrors(
          () => context.client.inboxFiles.deleteInboxFile(inboxFileId),
        );
      }
    }
  }, skip: !_hasLiveEnvironment);

  test('todo toggle runs when at least one todo exists', () async {
    final todos = await context.client.todos.getTodos(page: 1);
    if (todos.items.isEmpty) {
      expect(todos.items, isEmpty);
      return;
    }

    final todo = todos.items.first;
    final todoId = todo.id;
    expect(todoId, isNotNull);

    final toggled = await context.client.todos.toggleCompletion(todoId!);
    expect(toggled.id, todoId);

    await context.client.todos.toggleCompletion(todoId);
  }, skip: !_hasLiveEnvironment);
}
