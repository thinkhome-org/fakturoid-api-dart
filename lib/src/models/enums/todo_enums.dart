import 'package:freezed_annotation/freezed_annotation.dart';

enum TodoType {
  @JsonValue('Invoice')
  invoice,
  @JsonValue('Subject')
  subject,
  @JsonValue('Expense')
  expense,
  @JsonValue('Generator')
  generator,
  @JsonValue('RecurringGenerator')
  recurringGenerator,
  @JsonValue('ExpenseGenerator')
  expenseGenerator,
}
