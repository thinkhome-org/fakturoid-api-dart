import 'package:freezed_annotation/freezed_annotation.dart';

enum SubjectType {
  @JsonValue('customer')
  customer,
  @JsonValue('supplier')
  supplier,
  @JsonValue('both')
  both,
}

enum SubjectSetting {
  @JsonValue('inherit')
  inherit,
  @JsonValue('on')
  on,
  @JsonValue('off')
  off,
}

enum WebinvoiceHistory {
  @JsonValue('disabled')
  disabled,
  @JsonValue('recent')
  recent,
  @JsonValue('client_portal')
  clientPortal,
}

enum SubjectFireAction {
  archive('archive'),
  unarchive('unarchive');

  final String value;
  const SubjectFireAction(this.value);
}

enum SubjectStatus {
  @JsonValue('active')
  active,
  @JsonValue('archived')
  archived,
}
