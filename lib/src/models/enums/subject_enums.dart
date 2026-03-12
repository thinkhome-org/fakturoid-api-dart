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
