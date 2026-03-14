import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('generators section supports create read update and list flows', (
    context,
  ) async {
    final suffix = '${context.runId}-generator';
    Generator? generator;

    try {
      generator = await context.client.generators.createGenerator(
        buildGenerator(context, suffix),
      );
      final generatorId = generator.id!;
      reportPreservedFixture('generator', generatorId);

      final listed = await context.client.generators.getGenerators(page: 1);
      final fetched = await context.client.generators.getGenerator(generatorId);
      final updated = await context.client.generators.updateGenerator(
        generatorId,
        generator.copyWith(note: 'updated-$suffix'),
      );

      expect(listed.items.any((entry) => entry.id == generatorId), isTrue);
      expect(fetched.id, generatorId);
      expect(updated.note, 'updated-$suffix');
    } finally {
      final generatorId = generator?.id;
      if (!shouldPreserveFixtures && generatorId != null) {
        await ignoreErrors(
          () => context.client.generators.deleteGenerator(generatorId),
        );
      }
    }
  });
}
