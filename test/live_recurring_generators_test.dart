import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'recurring generators section supports create read update pause activate and list flows',
    (context) async {
      final suffix = '${context.runId}-recurring';
      RecurringGenerator? recurringGenerator;

      try {
        recurringGenerator = await context.client.recurringGenerators
            .createRecurringGenerator(buildRecurringGenerator(context, suffix));
        final recurringId = recurringGenerator.id!;
        reportPreservedFixture('recurring-generator', recurringId);

        final listed = await context.client.recurringGenerators
            .getRecurringGenerators(page: 1);
        final fetched = await context.client.recurringGenerators
            .getRecurringGenerator(recurringId);
        final updated = await context.client.recurringGenerators
            .updateRecurringGenerator(
              recurringId,
              buildRecurringGenerator(
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

        expect(listed.items.any((entry) => entry.id == recurringId), isTrue);
        expect(fetched.id, recurringId);
        expect(updated.note, 'updated-$suffix');
        expect(paused.active, isFalse);
        expect(activated.active, isTrue);
      } finally {
        final recurringId = recurringGenerator?.id;
        if (!shouldPreserveFixtures && recurringId != null) {
          await ignoreErrors(
            () => context.client.recurringGenerators.deleteRecurringGenerator(
              recurringId,
            ),
          );
        }
      }
    },
  );
}
