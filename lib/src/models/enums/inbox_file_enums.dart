import 'package:freezed_annotation/freezed_annotation.dart';

enum OcrStatus {
  @JsonValue('created')
  created,
  @JsonValue('processing')
  processing,
  @JsonValue('processing_failed')
  processingFailed,
  @JsonValue('processing_rejected')
  processingRejected,
  @JsonValue('processed')
  processed,
}
