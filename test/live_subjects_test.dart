import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('subjects section supports create read update and search', (
    context,
  ) async {
    final suffix = '${context.runId}-subject';
    Subject? subject;

    try {
      subject = await context.createSubject(suffix);
      final subjectId = subject.id!;
      reportPreservedFixture('subject', subjectId);

      final fetched = await context.client.subjects.getSubject(subjectId);
      final listed = await context.client.subjects.getSubjects(
        customId: subject.customId,
        page: 1,
      );
      final searched = await context.client.subjects.searchSubjects(
        query: suffix,
        page: 1,
      );
      final updated = await context.client.subjects.updateSubject(
        subjectId,
        subject.copyWith(privateNote: 'updated-$suffix'),
      );

      expect(fetched.id, subjectId);
      expect(listed.items.any((item) => item.id == subjectId), isTrue);
      expect(searched.items, isA<List<Subject>>());
      expect(updated.privateNote, 'updated-$suffix');
    } finally {
      final subjectId = subject?.id;
      if (!shouldPreserveFixtures && subjectId != null) {
        await ignoreErrors(
          () => context.client.subjects.deleteSubject(subjectId),
        );
      }
    }
  });
}
