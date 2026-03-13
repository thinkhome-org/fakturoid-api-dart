import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/test_helpers.dart';

const _requiredEnvironmentKeys = <String>[
  'FAKTUROID_CLIENT_ID',
  'FAKTUROID_CLIENT_SECRET',
];

const _defaultRedirectUri = 'https://example.com/callback';
const _defaultSessionFile = '/tmp/fakturoid_oauth_session.json';
const _subjectPrefixes = <String>[
  'OpenCode Live Base ',
  'OpenCode Subject ',
  'Attach Explore ',
];
const _subjectCustomPrefixes = <String>[
  'opencode-live-base-',
  'opencode-subject-',
  'attach-explore-',
];

bool get _hasLiveEnvironment {
  return _requiredEnvironmentKeys.every((key) {
    final value = Platform.environment[key];
    return value != null && value.isNotEmpty;
  });
}

bool get _shouldRunCleanup {
  final value = Platform.environment['FAKTUROID_RUN_CLEANUP'];
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

bool get _hasAuthCodeEnvironment {
  final callback = Platform.environment['FAKTUROID_OAUTH_CALLBACK_URI'];
  return callback != null && callback.isNotEmpty;
}

String _env(String key) {
  return Platform.environment[key] ?? (throw StateError('Missing env: $key'));
}

String _userAgent() {
  return Platform.environment['FAKTUROID_USER_AGENT'] ??
      'TestCompany (https://faktubot.thinkhome.org)';
}

Map<String, dynamic> _loadSession() {
  final sessionFile =
      Platform.environment['FAKTUROID_OAUTH_SESSION_FILE'] ??
      _defaultSessionFile;
  final sessionJson = File(sessionFile).readAsStringSync();
  return jsonDecode(sessionJson) as Map<String, dynamic>;
}

bool _startsWithAny(String? value, List<String> prefixes) {
  if (value == null) {
    return false;
  }

  return prefixes.any(value.startsWith);
}

bool _matchesSubject(Subject subject) {
  return _startsWithAny(subject.name, _subjectPrefixes) ||
      _startsWithAny(subject.customId, _subjectCustomPrefixes);
}

bool _matchesInventoryItem(InventoryItem item) {
  return item.name.startsWith('OpenCode Item ') ||
      (item.sku ?? '').startsWith('sku-') ||
      (item.articleNumber ?? '').startsWith('art-') ||
      (item.privateNote ?? '').startsWith('Item inventory-');
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

Future<List<T>> _collectPages<T>(
  Future<PaginatedResponse<T>> Function(int page) loader,
) async {
  final items = <T>[];
  var page = 1;

  while (true) {
    final response = await loader(page);
    items.addAll(response.items);
    if (!response.hasNextPage) {
      return items;
    }
    page += 1;
  }
}

Future<void> _ignoreErrors(Future<void> Function() action) async {
  try {
    await action();
  } catch (_) {}
}

final class _CleanupContext {
  _CleanupContext({required this.client, required this.tokenStorage});

  final FakturoidClient client;
  final InMemoryTokenStorage tokenStorage;

  static Future<_CleanupContext> bootstrap() async {
    final tokenStorage = InMemoryTokenStorage();
    final redirectUri =
        Platform.environment['FAKTUROID_REDIRECT_URI'] ?? _defaultRedirectUri;
    final bootstrapClient = FakturoidClient(
      slug: Platform.environment['FAKTUROID_SLUG'] ?? 'bootstrap',
      clientId: _env('FAKTUROID_CLIENT_ID'),
      clientSecret: _env('FAKTUROID_CLIENT_SECRET'),
      redirectUri: redirectUri,
      userAgent: _userAgent(),
      customTokenStorage: tokenStorage,
    );

    if (_hasAuthCodeEnvironment) {
      final session = _loadSession();
      await tokenStorage.saveAuthState(session['state'] as String);
      await tokenStorage.savePkceVerifier(session['verifier'] as String);
      await bootstrapClient.auth.exchangeAuthorizationCode(
        Uri.parse(Platform.environment['FAKTUROID_OAUTH_CALLBACK_URI']!),
      );
    } else {
      await bootstrapClient.auth.loginWithClientCredentials();
    }

    final user = await bootstrapClient.users.getCurrentUser();
    final slug = Platform.environment['FAKTUROID_SLUG'] ?? _resolveSlug(user);
    final client = FakturoidClient(
      slug: slug,
      clientId: _env('FAKTUROID_CLIENT_ID'),
      clientSecret: _env('FAKTUROID_CLIENT_SECRET'),
      redirectUri: redirectUri,
      userAgent: _userAgent(),
      customTokenStorage: tokenStorage,
    );

    return _CleanupContext(client: client, tokenStorage: tokenStorage);
  }

  Future<void> dispose() async {
    await tokenStorage.clearAll();
  }
}

void main() {
  _CleanupContext? context;

  setUpAll(() async {
    if (!_hasLiveEnvironment) {
      return;
    }

    context = await _CleanupContext.bootstrap();
  });

  tearDownAll(() async {
    if (!_hasLiveEnvironment) {
      return;
    }

    await context?.dispose();
  });

  test(
    'deletes all OpenCode live fixtures from the test tenant',
    () async {
      final activeContext = context;
      expect(activeContext, isNotNull);
      final client = activeContext!.client;

      final subjects = await _collectPages(
        (page) => client.subjects.getSubjects(page: page),
      );
      final matchedSubjects = subjects.where(_matchesSubject).toList();
      final subjectIds = matchedSubjects
          .map((subject) => subject.id)
          .whereType<int>()
          .toSet();

      final generators = <Generator>[];
      final recurringGenerators = <RecurringGenerator>[];
      final invoices = <Invoice>[];
      final expenses = <Expense>[];
      final deletedInvoicePaymentIds = <int>[];
      final deletedExpensePaymentIds = <int>[];

      for (final subjectId in subjectIds) {
        generators.addAll(
          await _collectPages(
            (page) => client.generators.getGenerators(
              subjectId: subjectId,
              page: page,
            ),
          ),
        );
        recurringGenerators.addAll(
          await _collectPages(
            (page) => client.recurringGenerators.getRecurringGenerators(
              subjectId: subjectId,
              page: page,
            ),
          ),
        );
        invoices.addAll(
          await _collectPages(
            (page) =>
                client.invoices.getInvoices(subjectId: subjectId, page: page),
          ),
        );
        expenses.addAll(
          await _collectPages(
            (page) =>
                client.expenses.getExpenses(subjectId: subjectId, page: page),
          ),
        );
      }

      final webhooks = await _collectPages(
        (page) => client.webhooks.getWebhooks(page: page),
      );
      final matchedWebhooks = webhooks
          .where(
            (webhook) => (webhook.webhookUrl ?? '').startsWith(
              'https://example.com/fakturoid/',
            ),
          )
          .toList();

      final inboxFiles = await _collectPages(
        (page) => client.inboxFiles.getInboxFiles(page: page),
      );
      final matchedInboxFiles = inboxFiles
          .where((file) => (file.filename ?? '').startsWith('opencode-'))
          .toList();

      final inventoryItems = [
        ...await _collectPages(
          (page) => client.inventoryItems.getInventoryItems(page: page),
        ),
        ...await _collectPages(
          (page) => client.inventoryItems.getArchivedItems(page: page),
        ),
      ];
      final matchedInventoryItems = inventoryItems
          .fold<Map<int, InventoryItem>>({}, (items, item) {
            final itemId = item.id;
            if (itemId != null && _matchesInventoryItem(item)) {
              items[itemId] = item;
            }
            return items;
          })
          .values
          .toList();

      for (final invoice in invoices) {
        final invoiceId = invoice.id;
        if (invoiceId != null) {
          final detailedInvoice = await client.invoices.getInvoice(invoiceId);
          for (final payment
              in detailedInvoice.payments ?? const <InvoicePayment>[]) {
            final paymentId = payment.id;
            if (paymentId != null) {
              deletedInvoicePaymentIds.add(paymentId);
              await _ignoreErrors(
                () =>
                    client.invoicePayments.deletePayment(invoiceId, paymentId),
              );
            }
          }

          await _ignoreErrors(() => client.invoices.deleteInvoice(invoiceId));
        }
      }

      for (final expense in expenses) {
        final expenseId = expense.id;
        if (expenseId != null) {
          final detailedExpense = await client.expenses.getExpense(expenseId);
          for (final payment
              in detailedExpense.payments ?? const <InvoicePayment>[]) {
            final paymentId = payment.id;
            if (paymentId != null) {
              deletedExpensePaymentIds.add(paymentId);
              await _ignoreErrors(
                () =>
                    client.expensePayments.deletePayment(expenseId, paymentId),
              );
            }
          }

          await _ignoreErrors(() => client.expenses.deleteExpense(expenseId));
        }
      }

      for (final recurringGenerator in recurringGenerators) {
        final recurringId = recurringGenerator.id;
        if (recurringId != null) {
          await _ignoreErrors(
            () => client.recurringGenerators.deleteRecurringGenerator(
              recurringId,
            ),
          );
        }
      }

      for (final generator in generators) {
        final generatorId = generator.id;
        if (generatorId != null) {
          await _ignoreErrors(
            () => client.generators.deleteGenerator(generatorId),
          );
        }
      }

      for (final item in matchedInventoryItems) {
        final itemId = item.id;
        if (itemId == null) {
          continue;
        }

        final moves = await _collectPages(
          (page) => client.inventoryMoves.getAllInventoryMoves(
            inventoryItemId: itemId,
            page: page,
          ),
        );

        for (final move in moves) {
          final moveId = move.id;
          if (moveId != null) {
            await _ignoreErrors(
              () => client.inventoryMoves.deleteInventoryMove(itemId, moveId),
            );
          }
        }

        await _ignoreErrors(() => client.inventoryItems.deleteItem(itemId));
      }

      for (final webhook in matchedWebhooks) {
        final webhookId = webhook.id;
        if (webhookId != null) {
          await _ignoreErrors(() => client.webhooks.deleteWebhook(webhookId));
        }
      }

      for (final inboxFile in matchedInboxFiles) {
        final inboxFileId = inboxFile.id;
        if (inboxFileId != null) {
          await _ignoreErrors(
            () => client.inboxFiles.deleteInboxFile(inboxFileId),
          );
        }
      }

      for (final subject in matchedSubjects.reversed) {
        final subjectId = subject.id;
        if (subjectId != null) {
          await _ignoreErrors(() => client.subjects.deleteSubject(subjectId));
        }
      }

      final remainingSubjects = await _collectPages(
        (page) => client.subjects.getSubjects(page: page),
      );
      final remainingMatchedSubjects = remainingSubjects
          .where(_matchesSubject)
          .toList();
      final remainingSubjectIds = remainingMatchedSubjects
          .map((subject) => subject.id)
          .whereType<int>()
          .toSet();

      final remainingWebhooks = await _collectPages(
        (page) => client.webhooks.getWebhooks(page: page),
      );
      final remainingInboxFiles = await _collectPages(
        (page) => client.inboxFiles.getInboxFiles(page: page),
      );
      final remainingInventoryItems = [
        ...await _collectPages(
          (page) => client.inventoryItems.getInventoryItems(page: page),
        ),
        ...await _collectPages(
          (page) => client.inventoryItems.getArchivedItems(page: page),
        ),
      ];

      expect(remainingMatchedSubjects, isEmpty);
      expect(
        remainingWebhooks.where(
          (webhook) => (webhook.webhookUrl ?? '').startsWith(
            'https://example.com/fakturoid/',
          ),
        ),
        isEmpty,
      );
      expect(
        remainingInboxFiles.where(
          (file) => (file.filename ?? '').startsWith('opencode-'),
        ),
        isEmpty,
      );
      expect(remainingInventoryItems.where(_matchesInventoryItem), isEmpty);
      expect(deletedInvoicePaymentIds, isA<List<int>>());
      expect(deletedExpensePaymentIds, isA<List<int>>());

      for (final subjectId in remainingSubjectIds) {
        final remainingInvoices = await _collectPages(
          (page) =>
              client.invoices.getInvoices(subjectId: subjectId, page: page),
        );
        final remainingExpenses = await _collectPages(
          (page) =>
              client.expenses.getExpenses(subjectId: subjectId, page: page),
        );
        final remainingGenerators = await _collectPages(
          (page) =>
              client.generators.getGenerators(subjectId: subjectId, page: page),
        );
        final remainingRecurring = await _collectPages(
          (page) => client.recurringGenerators.getRecurringGenerators(
            subjectId: subjectId,
            page: page,
          ),
        );

        expect(remainingInvoices, isEmpty);
        expect(remainingExpenses, isEmpty);
        expect(remainingGenerators, isEmpty);
        expect(remainingRecurring, isEmpty);
      }
    },
    skip: !_hasLiveEnvironment || !_shouldRunCleanup,
  );
}
