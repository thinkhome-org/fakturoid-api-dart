import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api_dart/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'inbox files section supports create read download and OCR path',
    (context) async {
      final suffix = '${context.runId}-inbox';
      InboxFile? inboxFile;
      FakturoidAuthException? ocrFailure;

      try {
        inboxFile = await context.client.inboxFiles.createInboxFile(
          testPdfDataUri(suffix),
          filename: 'opencode-$suffix.pdf',
          sendToOcr: false,
        );
        final inboxFileId = inboxFile.id!;
        reportPreservedFixture('inbox-file', inboxFileId);

        final listed = await context.client.inboxFiles.getInboxFiles(page: 1);
        final downloaded = await context.client.inboxFiles.downloadInboxFile(
          inboxFileId,
        );

        try {
          await context.client.inboxFiles.sendToOcr(inboxFileId);
        } catch (error) {
          ocrFailure = authError(error);
          if (ocrFailure == null) {
            rethrow;
          }
        }

        expect(listed.items.any((entry) => entry.id == inboxFileId), isTrue);
        expect(downloaded, isNotEmpty);
        if (ocrFailure != null) {
          expect(ocrFailure.statusCode, 403);
        }
      } finally {
        final inboxFileId = inboxFile?.id;
        if (!shouldPreserveFixtures && inboxFileId != null) {
          await ignoreErrors(
            () => context.client.inboxFiles.deleteInboxFile(inboxFileId),
          );
        }
      }
    },
  );
}
