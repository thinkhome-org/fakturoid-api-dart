import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'test_helpers.dart';

const requiredLiveEnvironmentKeys = <String>[
  'FAKTUROID_CLIENT_ID',
  'FAKTUROID_CLIENT_SECRET',
];

const defaultRedirectUri = 'https://example.com/callback';
const defaultSessionFile = '/tmp/fakturoid_oauth_session.json';

bool get hasLiveEnvironment {
  return requiredLiveEnvironmentKeys.every((key) {
    final value = Platform.environment[key];
    return value != null && value.isNotEmpty;
  });
}

bool get shouldPreserveFixtures {
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

bool get hasAuthCodeEnvironment {
  final callback = Platform.environment['FAKTUROID_OAUTH_CALLBACK_URI'];
  final clientId =
      Platform.environment['FAKTUROID_OAUTH_CLIENT_ID'] ??
      Platform.environment['FAKTUROID_CLIENT_ID'];
  final clientSecret =
      Platform.environment['FAKTUROID_OAUTH_CLIENT_SECRET'] ??
      Platform.environment['FAKTUROID_CLIENT_SECRET'];

  return callback != null &&
      callback.isNotEmpty &&
      clientId != null &&
      clientId.isNotEmpty &&
      clientSecret != null &&
      clientSecret.isNotEmpty;
}

String env(String key) {
  return Platform.environment[key] ?? (throw StateError('Missing env: $key'));
}

String oauthClientId() {
  return Platform.environment['FAKTUROID_OAUTH_CLIENT_ID'] ??
      env('FAKTUROID_CLIENT_ID');
}

String oauthClientSecret() {
  return Platform.environment['FAKTUROID_OAUTH_CLIENT_SECRET'] ??
      env('FAKTUROID_CLIENT_SECRET');
}

String oauthRedirectUri() {
  return Platform.environment['FAKTUROID_OAUTH_REDIRECT_URI'] ??
      Platform.environment['FAKTUROID_REDIRECT_URI'] ??
      defaultRedirectUri;
}

String userAgent() {
  return Platform.environment['FAKTUROID_USER_AGENT'] ??
      'TestCompany (https://faktubot.thinkhome.org)';
}

Map<String, dynamic> loadOAuthSession() {
  final sessionFile =
      Platform.environment['FAKTUROID_OAUTH_SESSION_FILE'] ??
      defaultSessionFile;
  final sessionJson = File(sessionFile).readAsStringSync();
  return jsonDecode(sessionJson) as Map<String, dynamic>;
}

String resolveSlug(User user) {
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

String isoDate(DateTime value) => value.toIso8601String().split('T').first;

String generateRunId() =>
    DateTime.now().microsecondsSinceEpoch.toRadixString(36);

String shortRunId(String value) {
  if (value.length <= 8) {
    return value;
  }

  return value.substring(0, 8);
}

String variableSymbol(String prefix, String value) {
  return '$prefix${shortRunId(value)}';
}

String testEmail(String suffix) => 'fakturoid-live+$suffix@example.com';

String testAttachmentPdfDataUri() {
  return 'data:application/pdf;base64,'
      'JVBERi0xLjQKJeLjz9MKMSAwIG9iago8PCAvVHlwZSAvQ2F0YWxvZyAvUGFnZXMgMiAwIFIgPj4KZW5kb2JqCjIgMCBvYmoKPDwgL1R5cGUgL1BhZ2VzIC9Db3VudCAxIC9LaWRzIFszIDAgUl0gPj4KZW5kb2JqCjMgMCBvYmoKPDwgL1R5cGUgL1BhZ2UgL1BhcmVudCAyIDAgUiAvTWVkaWFCb3ggWzAgMCAzMDAgMTQ0XSAvQ29udGVudHMgNCAwIFIgL1Jlc291cmNlcyA8PCAvRm9udCA8PCAvRjEgNSAwIFIgPj4gPj4gPj4KZW5kb2JqCjQgMCBvYmoKPDwgL0xlbmd0aCA1NSA+PgpzdHJlYW0KQlQKL0YxIDEyIFRmCjcyIDcyIFRkCihPcGVuQ29kZSBhdHRhY2htZW50IHRlc3QpIFRqCkVUCmVuZHN0cmVhbQplbmRvYmoKNSAwIG9iago8PCAvVHlwZSAvRm9udCAvU3VidHlwZSAvVHlwZTEgL0Jhc2VGb250IC9IZWx2ZXRpY2EgPj4KZW5kb2JqCnhyZWYKMCA2CjAwMDAwMDAwMDAgNjU1MzUgZiAKMDAwMDAwMDAxNSAwMDAwMCBuIAowMDAwMDAwMDY0IDAwMDAwIG4gCjAwMDAwMDAxMjEgMDAwMDAgbiAKMDAwMDAwMDI0NyAwMDAwMCBuIAowMDAwMDAwMzUxIDAwMDAwIG4gCnRyYWlsZXIKPDwgL1NpemUgNiAvUm9vdCAxIDAgUiA+PgpzdGFydHhyZWYKNDIxCiUlRU9GCg==';
}

String testPdfDataUri(String suffix) {
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

FakturoidAuthException? authError(Object error) {
  if (error is FakturoidAuthException) {
    return error;
  }

  if (error is DioException && error.error is FakturoidAuthException) {
    return error.error as FakturoidAuthException;
  }

  return null;
}

InvoiceLine lineItem(String name, String suffix) {
  return InvoiceLine(
    name: '$name $suffix',
    unitPrice: '100.00',
    quantity: '1.0',
    vatRate: 21,
  );
}

DocumentAttachment attachment(String suffix) {
  return DocumentAttachment(
    filename: 'opencode-$suffix.pdf',
    dataUrl: testAttachmentPdfDataUri(),
  );
}

void reportPreservedFixture(String type, int? id) {
  if (!shouldPreserveFixtures || id == null) {
    return;
  }

  debugPrint('Preserved $type: $id');
}

Invoice buildInvoice(
  LiveTestContext context,
  String suffix, {
  DocumentType documentType = DocumentType.proforma,
  ProformaFollowupDocument? proformaFollowupDocument,
  int? relatedId,
  int? correctionId,
  List<int>? taxDocumentIds,
  List<InvoiceLine>? lines,
  List<DocumentAttachment>? attachments,
}) {
  final effectiveFollowup = documentType == DocumentType.proforma
      ? (proformaFollowupDocument ?? ProformaFollowupDocument.none)
      : null;

  return Invoice(
    subjectId: context.baseSubject.id!,
    documentType: documentType,
    proformaFollowupDocument: effectiveFollowup,
    numberFormatId: context.numberFormatId,
    variableSymbol: variableSymbol('I', context.runId),
    note: 'OpenCode invoice note $suffix',
    privateNote: 'OpenCode invoice $suffix',
    tags: ['opencode-live', suffix],
    relatedId: relatedId,
    correctionId: correctionId,
    taxDocumentIds: taxDocumentIds,
    lines: lines ?? [lineItem('Invoice line', suffix)],
    attachments: attachments ?? [attachment('invoice-$suffix')],
  );
}

Expense buildExpense(LiveTestContext context, String suffix) {
  return Expense(
    subjectId: context.baseSubject.id!,
    variableSymbol: variableSymbol('E', context.runId),
    privateNote: 'OpenCode expense $suffix',
    tags: ['opencode-live', suffix],
    lines: [lineItem('Expense line', suffix)],
    attachments: [attachment('expense-$suffix')],
  );
}

Generator buildGenerator(LiveTestContext context, String suffix) {
  return Generator(
    name: 'OpenCode generator $suffix',
    subjectId: context.baseSubject.id!,
    numberFormatId: context.numberFormatId,
    note: 'Generator $suffix',
    tags: ['opencode-live', suffix],
    lines: [lineItem('Generator line', suffix)],
  );
}

RecurringGenerator buildRecurringGenerator(
  LiveTestContext context,
  String suffix,
) {
  final nextRun = isoDate(DateTime.now().toUtc().add(const Duration(days: 7)));

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
    lines: [lineItem('Recurring line', suffix)],
  );
}

Future<void> ignoreErrors(Future<void> Function() action) async {
  try {
    await action();
  } catch (_) {}
}

Future<Uint8List> downloadInvoicePdfWithRetry(
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

final class LiveTestContext {
  LiveTestContext({
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

  static Future<LiveTestContext> bootstrap() async {
    final tokenStorage = InMemoryTokenStorage();
    final bootstrapClient = FakturoidClient(
      slug: Platform.environment['FAKTUROID_SLUG'] ?? 'bootstrap',
      clientId: env('FAKTUROID_CLIENT_ID'),
      clientSecret: env('FAKTUROID_CLIENT_SECRET'),
      redirectUri:
          Platform.environment['FAKTUROID_REDIRECT_URI'] ?? defaultRedirectUri,
      userAgent: userAgent(),
      customTokenStorage: tokenStorage,
    );

    await bootstrapClient.auth.loginWithClientCredentials();
    final user = await bootstrapClient.users.getCurrentUser();
    final slug = Platform.environment['FAKTUROID_SLUG'] ?? resolveSlug(user);
    final client = FakturoidClient(
      slug: slug,
      clientId: env('FAKTUROID_CLIENT_ID'),
      clientSecret: env('FAKTUROID_CLIENT_SECRET'),
      redirectUri:
          Platform.environment['FAKTUROID_REDIRECT_URI'] ?? defaultRedirectUri,
      userAgent: userAgent(),
      customTokenStorage: tokenStorage,
    );

    final runIdValue = generateRunId();
    final numberFormats = await client.numberFormats.getNumberFormats();
    final bankAccounts = await client.bankAccounts.getBankAccounts();
    final baseSubject = await client.subjects.createSubject(
      Subject(
        name: 'OpenCode Live Base $runIdValue',
        email: testEmail(runIdValue),
        customId: 'opencode-live-base-$runIdValue',
      ),
    );
    reportPreservedFixture('base-subject', baseSubject.id);

    return LiveTestContext(
      client: client,
      tokenStorage: tokenStorage,
      user: user,
      slug: slug,
      runId: runIdValue,
      baseSubject: baseSubject,
      numberFormatId: numberFormats.isEmpty ? null : numberFormats.first.id,
      bankAccountId: bankAccounts.isEmpty ? null : bankAccounts.first.id,
    );
  }

  Future<void> dispose() async {
    final subjectId = baseSubject.id;
    if (!shouldPreserveFixtures && subjectId != null) {
      await ignoreErrors(() => client.subjects.deleteSubject(subjectId));
    }

    await ignoreErrors(client.auth.revokeToken);
  }

  Future<Subject> createSubject(String suffix) {
    return client.subjects.createSubject(
      Subject(
        name: 'OpenCode Subject $suffix',
        email: testEmail(suffix),
        customId: 'opencode-subject-$suffix',
      ),
    );
  }
}

void runLiveTest(
  String description,
  Future<void> Function(LiveTestContext context) body,
) {
  late LiveTestContext context;

  setUpAll(() async {
    if (!hasLiveEnvironment) {
      return;
    }

    context = await LiveTestContext.bootstrap();
  });

  tearDownAll(() async {
    if (!hasLiveEnvironment) {
      return;
    }

    await context.dispose();
  });

  test(description, () async {
    await body(context);
  }, skip: !hasLiveEnvironment);
}
