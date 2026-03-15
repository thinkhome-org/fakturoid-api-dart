import 'package:freezed_annotation/freezed_annotation.dart';

enum ExpenseDocumentType {
  @JsonValue('invoice')
  invoice,
  @JsonValue('bill')
  bill,
  @JsonValue('other')
  other,
}

enum ExpenseStatus {
  @JsonValue('open')
  open,
  @JsonValue('overdue')
  overdue,
  @JsonValue('paid')
  paid,
}

enum ExpenseFireAction {
  lock('lock'),
  unlock('unlock');

  final String value;
  const ExpenseFireAction(this.value);
}
