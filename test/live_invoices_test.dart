import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'invoices section supports create read update search actions and downloads',
    (context) async {
      final suffix = '${context.runId}-invoice';
      Invoice? invoice;

      try {
        invoice = await context.client.invoices.createInvoice(
          buildInvoice(context, suffix),
        );
        final invoiceId = invoice.id!;
        reportPreservedFixture('invoice', invoiceId);

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
          buildInvoice(
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

        final pdf = await downloadInvoicePdfWithRetry(
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

        expect(listed.items.any((item) => item.id == invoiceId), isTrue);
        expect(searched.items, isA<List<Invoice>>());
        expect(fetched.id, invoiceId);
        expect(updated.privateNote, 'updated-$suffix');
        expect(pdf, isNotEmpty);
        expect(invoiceAttachment, isNotNull);
        expect(invoiceAttachmentBytes, isNotNull);
        expect(invoiceAttachmentBytes, isNotEmpty);
      } finally {
        final invoiceId = invoice?.id;
        if (!shouldPreserveFixtures && invoiceId != null) {
          await ignoreErrors(
            () => context.client.invoices.deleteInvoice(invoiceId),
          );
        }
      }
    },
  );
}
