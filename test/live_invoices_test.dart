import 'package:dio/dio.dart';
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

  runLiveTest('invoices section supports additional document variants', (
    context,
  ) async {
    final suffix = '${context.runId}-invoice-variants';
    Invoice? regularInvoice;
    Invoice? proformaForInvoice;
    InvoicePayment? linkedProformaPayment;
    Invoice? linkedInvoice;
    Invoice? correctionInvoice;
    Invoice? proformaForFinalInvoice;
    InvoicePayment? proformaPayment;
    Invoice? taxDocument;
    Invoice? finalInvoice;
    Invoice? partialProforma;
    Object? partialProformaError;

    try {
      regularInvoice = await context.client.invoices.createInvoice(
        buildInvoice(
          context,
          '$suffix-regular',
          documentType: DocumentType.invoice,
        ),
      );
      reportPreservedFixture('invoice', regularInvoice.id);

      correctionInvoice = await context.client.invoices.createInvoice(
        buildInvoice(
          context,
          '$suffix-correction',
          documentType: DocumentType.correction,
          correctionId: regularInvoice.id,
        ),
      );
      reportPreservedFixture('invoice-correction', correctionInvoice.id);

      proformaForInvoice = await context.client.invoices.createInvoice(
        buildInvoice(
          context,
          '$suffix-proforma-linked',
          documentType: DocumentType.proforma,
          proformaFollowupDocument: ProformaFollowupDocument.finalInvoice,
        ),
      );
      reportPreservedFixture('proforma', proformaForInvoice.id);

      linkedProformaPayment = await context.client.invoicePayments
          .createPayment(
            proformaForInvoice.id!,
            InvoicePayment(
              paidOn: isoDate(DateTime.now().toUtc()),
              bankAccountId: context.bankAccountId,
              markDocumentAsPaid: true,
              proformaFollowupDocument: ProformaFollowupDocument.none,
            ),
          );
      reportPreservedFixture('invoice-payment', linkedProformaPayment.id);

      linkedInvoice = await context.client.invoices.createInvoice(
        buildInvoice(
          context,
          '$suffix-linked-invoice',
          documentType: DocumentType.invoice,
          relatedId: proformaForInvoice.id,
        ),
        relatedId: proformaForInvoice.id,
      );
      reportPreservedFixture('linked-invoice', linkedInvoice.id);

      proformaForFinalInvoice = await context.client.invoices.createInvoice(
        buildInvoice(
          context,
          '$suffix-proforma-final',
          documentType: DocumentType.proforma,
          proformaFollowupDocument: ProformaFollowupDocument.none,
        ),
      );
      reportPreservedFixture('proforma', proformaForFinalInvoice.id);

      proformaPayment = await context.client.invoicePayments.createPayment(
        proformaForFinalInvoice.id!,
        InvoicePayment(
          paidOn: isoDate(DateTime.now().toUtc()),
          bankAccountId: context.bankAccountId,
          markDocumentAsPaid: true,
          proformaFollowupDocument: ProformaFollowupDocument.none,
        ),
      );
      reportPreservedFixture('invoice-payment', proformaPayment.id);

      final taxDocumentPayment = await context.client.invoicePayments
          .createTaxDocument(proformaForFinalInvoice.id!, proformaPayment.id!);

      taxDocument = await context.client.invoices.getInvoice(
        taxDocumentPayment.taxDocumentId!,
      );
      reportPreservedFixture('tax-document', taxDocument.id);

      finalInvoice = await context.client.invoices.createInvoice(
        buildInvoice(
          context,
          '$suffix-final-invoice',
          documentType: DocumentType.finalInvoice,
          taxDocumentIds: [taxDocument.id!],
        ),
      );
      reportPreservedFixture('final-invoice', finalInvoice.id);

      try {
        partialProforma = await context.client.invoices.createInvoice(
          buildInvoice(
            context,
            '$suffix-partial-proforma',
            documentType: DocumentType.partialProforma,
          ),
        );
        reportPreservedFixture('partial-proforma', partialProforma.id);
      } catch (error) {
        partialProformaError = error;
      }

      expect(regularInvoice.documentType, DocumentType.invoice);
      expect(correctionInvoice.documentType, DocumentType.correction);
      expect(correctionInvoice.correctionId, regularInvoice.id);
      expect(proformaForInvoice.documentType, DocumentType.proforma);
      expect(linkedInvoice.documentType, DocumentType.invoice);
      expect(linkedInvoice.relatedId, proformaForInvoice.id);
      expect(taxDocument.documentType, DocumentType.taxDocument);
      expect(finalInvoice.documentType, DocumentType.finalInvoice);
      expect(finalInvoice.paidAdvances, isNotNull);
      expect(finalInvoice.paidAdvances, isNotEmpty);
      expect(partialProforma != null || partialProformaError != null, isTrue);
      if (partialProforma != null) {
        expect(partialProforma.documentType, DocumentType.partialProforma);
      } else {
        expect(
          partialProformaError,
          anyOf(
            isA<FakturoidValidationException>(),
            isA<FakturoidApiErrorException>(),
            isA<DioException>().having(
              (error) => error.error,
              'error',
              anyOf(
                isA<FakturoidValidationException>(),
                isA<FakturoidApiErrorException>(),
              ),
            ),
          ),
        );
      }
    } finally {
      final invoiceIds = [
        partialProforma?.id,
        finalInvoice?.id,
        taxDocument?.id,
        proformaForFinalInvoice?.id,
        linkedInvoice?.id,
        proformaForInvoice?.id,
        correctionInvoice?.id,
        regularInvoice?.id,
      ];

      if (!shouldPreserveFixtures) {
        final linkedPaymentId = linkedProformaPayment?.id;
        final linkedProformaId = proformaForInvoice?.id;
        if (linkedPaymentId != null && linkedProformaId != null) {
          await ignoreErrors(
            () => context.client.invoicePayments.deletePayment(
              linkedProformaId,
              linkedPaymentId,
            ),
          );
        }

        final paymentId = proformaPayment?.id;
        final proformaId = proformaForFinalInvoice?.id;
        if (paymentId != null && proformaId != null) {
          await ignoreErrors(
            () => context.client.invoicePayments.deletePayment(
              proformaId,
              paymentId,
            ),
          );
        }

        for (final invoiceId in invoiceIds) {
          if (invoiceId == null) {
            continue;
          }

          await ignoreErrors(
            () => context.client.invoices.deleteInvoice(invoiceId),
          );
        }
      }
    }
  });
}
