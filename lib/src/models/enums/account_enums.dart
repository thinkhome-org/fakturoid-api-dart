import 'package:freezed_annotation/freezed_annotation.dart';

enum AccountVatMode {
  @JsonValue('vat_payer')
  vatPayer,
  @JsonValue('non_vat_payer')
  nonVatPayer,
  @JsonValue('identified_person')
  identifiedPerson,
}
