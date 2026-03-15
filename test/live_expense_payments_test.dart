import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('expense payments section supports payment creation', (
    context,
  ) async {
    final suffix = '${context.runId}-expense-payment';
    Expense? expense;
    ExpensePayment? payment;

    try {
      expense = await context.client.expenses.createExpense(
        buildExpense(context, suffix),
      );
      final expenseId = expense.id!;
      reportPreservedFixture('expense', expenseId);

      payment = await context.client.expensePayments.createPayment(
        expenseId,
        ExpensePayment(
          amount: '100.00',
          paidOn: isoDate(DateTime.now().toUtc()),
          bankAccountId: context.bankAccountId,
        ),
      );
      reportPreservedFixture('expense-payment', payment.id);

      expect(payment.id, isNotNull);

      if (!shouldPreserveFixtures) {
        final paymentId = payment.id!;
        await ignoreErrors(
          () => context.client.expensePayments.deletePayment(
            expenseId,
            paymentId,
          ),
        );
        payment = null;
      }
    } finally {
      final paymentId = payment?.id;
      final expenseId = expense?.id;
      if (!shouldPreserveFixtures && paymentId != null && expenseId != null) {
        await ignoreErrors(
          () => context.client.expensePayments.deletePayment(
            expenseId,
            paymentId,
          ),
        );
      }
      if (!shouldPreserveFixtures && expenseId != null) {
        await ignoreErrors(
          () => context.client.expenses.deleteExpense(expenseId),
        );
      }
    }
  });
}
