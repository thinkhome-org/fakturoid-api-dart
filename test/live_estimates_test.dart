import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api_dart/fakturoid_api.dart';
import 'support/live_test_support.dart';

void main() {
  runLiveTest('estimates repository live coverage', (context) async {
    final estimate = Estimate(
      subjectId: context.baseSubject.id!,
      lines: [
        InvoiceLine(
          name: 'Test Estimate Line',
          quantity: '1',
          unitPrice: '100',
          vatRate: 21,
        ),
      ],
      note: 'Live test estimate',
    );

    // 1. Create
    final created = await context.client.estimates.createEstimate(estimate);
    expect(created.id, isNotNull);
    expect(created.status, EstimateStatus.open);

    // 2. Get
    final retrieved = await context.client.estimates.getEstimate(created.id!);
    expect(retrieved.id, created.id);

    // 3. Update
    final updated = await context.client.estimates.updateEstimate(
      created.id!,
      created.copyWith(note: 'Updated note'),
    );
    expect(updated.note, 'Updated note');

    // 4. Fire Action (mark as sent)
    await context.client.estimates.fireAction(
      created.id!,
      EstimateFireAction.markAsSent,
    );
    final sent = await context.client.estimates.getEstimate(created.id!);
    expect(sent.status, EstimateStatus.sent);

    // 5. Search
    final search = await context.client.estimates.searchEstimates(
      query: 'Live test',
    );
    expect(search.items.any((e) => e.id == created.id), isTrue);

    // 6. List
    final list = await context.client.estimates.getEstimates(
      status: EstimateStatus.sent,
    );
    expect(list.items.any((e) => e.id == created.id), isTrue);

    // 7. Download PDF
    final pdf = await context.client.estimates.downloadEstimatePdf(created.id!);
    expect(pdf, isNotEmpty);

    // 8. Create Message
    await context.client.estimates.createMessage(
      created.id!,
      email: 'samuel@fakturoid.cz',
      subject: 'Test Estimate Message',
      message: 'This is a live test message for estimate.',
    );

    // 9. Delete
    await context.client.estimates.deleteEstimate(created.id!);

    // Verification via list
    final afterDelete = await context.client.estimates.getEstimates();
    expect(afterDelete.items.any((e) => e.id == created.id), isFalse);
  }, skip: true);
}
