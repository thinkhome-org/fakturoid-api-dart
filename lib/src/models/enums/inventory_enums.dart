import 'package:freezed_annotation/freezed_annotation.dart';

enum ArticleNumberType {
  @JsonValue('ian')
  ian,
  @JsonValue('ean')
  ean,
  @JsonValue('isbn')
  isbn,
}

enum VatRateType {
  @JsonValue('standard')
  standard,
  @JsonValue('reduced')
  reduced,
  @JsonValue('reduced2')
  reduced2,
  @JsonValue('zero')
  zero,
}

enum SupplyType {
  @JsonValue('goods')
  goods,
  @JsonValue('service')
  service,
}

enum ItemSuggestFor {
  @JsonValue('invoices')
  invoices,
  @JsonValue('expenses')
  expenses,
  @JsonValue('both')
  both,
}
