import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('invoice messages section sends a message for a live invoice', (
    context,
  ) async {
    final suffix = '${context.runId}-invoice-message';
    Invoice? invoice;

    try {
      invoice = await context.client.invoices.createInvoice(
        buildInvoice(context, suffix),
      );
      final invoiceId = invoice.id!;
      reportPreservedFixture('invoice', invoiceId);

      await context.client.invoiceMessages.createMessage(
        invoiceId,
        email: context.baseSubject.email,
        subject: 'OpenCode invoice $suffix',
        message: 'Live integration test invoice message',
        deliverNow: false,
      );

      final fetched = await context.client.invoices.getInvoice(invoiceId);
      expect(fetched.id, invoiceId);
    } finally {
      final invoiceId = invoice?.id;
      if (!shouldPreserveFixtures && invoiceId != null) {
        await ignoreErrors(
          () => context.client.invoices.deleteInvoice(invoiceId),
        );
      }
    }
  });
}
