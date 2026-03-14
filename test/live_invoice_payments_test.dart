import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'invoice payments section supports payment and tax document creation',
    (context) async {
      final suffix = '${context.runId}-invoice-payment';
      Invoice? invoice;
      InvoicePayment? payment;

      try {
        invoice = await context.client.invoices.createInvoice(
          buildInvoice(context, suffix),
        );
        final invoiceId = invoice.id!;
        reportPreservedFixture('invoice', invoiceId);

        payment = await context.client.invoicePayments.createPayment(
          invoiceId,
          InvoicePayment(
            amount: '100.00',
            paidOn: isoDate(DateTime.now().toUtc()),
            bankAccountId: context.bankAccountId,
            proformaFollowupDocument: ProformaFollowupDocument.none,
          ),
        );
        reportPreservedFixture('invoice-payment', payment.id);

        final taxDocument = await context.client.invoicePayments
            .createTaxDocument(invoiceId, payment.id!);

        expect(payment.id, isNotNull);
        expect(taxDocument.id, isNotNull);
        expect(taxDocument.taxDocumentId, isNotNull);
        reportPreservedFixture('tax-document', taxDocument.taxDocumentId);

        if (!shouldPreserveFixtures) {
          final paymentId = payment.id!;
          await ignoreErrors(
            () => context.client.invoicePayments.deletePayment(
              invoiceId,
              paymentId,
            ),
          );
          payment = null;
        }
      } finally {
        final paymentId = payment?.id;
        final invoiceId = invoice?.id;
        if (!shouldPreserveFixtures && paymentId != null && invoiceId != null) {
          await ignoreErrors(
            () => context.client.invoicePayments.deletePayment(
              invoiceId,
              paymentId,
            ),
          );
        }
        if (!shouldPreserveFixtures && invoiceId != null) {
          await ignoreErrors(
            () => context.client.invoices.deleteInvoice(invoiceId),
          );
        }
      }
    },
  );
}
