import 'package:freezed_annotation/freezed_annotation.dart';

enum EstimateStatus {
  @JsonValue('open')
  open,
  @JsonValue('sent')
  sent,
  @JsonValue('accepted')
  accepted,
  @JsonValue('rejected')
  rejected,
  @JsonValue('cancelled')
  cancelled,
}

enum EstimateDocumentType {
  @JsonValue('estimate')
  estimate,
  @JsonValue('quote')
  quote,
}

enum EstimateFireAction {
  markAsSent('mark_as_sent'),
  accept('accept'),
  reject('reject'),
  cancel('cancel'),
  undoCancel('undo_cancel'),
  lock('lock'),
  unlock('unlock');

  final String value;
  const EstimateFireAction(this.value);
}
