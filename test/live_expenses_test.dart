import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'expenses section supports create read update search actions and attachment downloads',
    (context) async {
      final suffix = '${context.runId}-expense';
      Expense? expense;

      try {
        expense = await context.client.expenses.createExpense(
          buildExpense(context, suffix),
        );
        final expenseId = expense.id!;
        reportPreservedFixture('expense', expenseId);

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
          buildExpense(
            context,
            suffix,
          ).copyWith(privateNote: 'updated-$suffix'),
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

        expect(listed.items.any((item) => item.id == expenseId), isTrue);
        expect(searched.items, isA<List<Expense>>());
        expect(fetched.id, expenseId);
        expect(updated.privateNote, 'updated-$suffix');
        expect(expenseAttachment, isNotNull);
        expect(expenseAttachmentBytes, isNotNull);
        expect(expenseAttachmentBytes, isNotEmpty);
      } finally {
        final expenseId = expense?.id;
        if (!shouldPreserveFixtures && expenseId != null) {
          await ignoreErrors(
            () => context.client.expenses.deleteExpense(expenseId),
          );
        }
      }
    },
  );
}
