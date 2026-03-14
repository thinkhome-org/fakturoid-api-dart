import 'package:freezed_annotation/freezed_annotation.dart';

enum DocumentType {
  @JsonValue('invoice')
  invoice,
  @JsonValue('proforma')
  proforma,
  @JsonValue('partial_proforma')
  partialProforma,
  @JsonValue('correction')
  correction,
  @JsonValue('tax_document')
  taxDocument,
  @JsonValue('final_invoice')
  finalInvoice,
  @JsonValue('estimate')
  estimate,
}

enum InvoiceListDocumentType {
  regular('regular'),
  proforma('proforma'),
  correction('correction'),
  taxDocument('tax_document');

  final String value;

  const InvoiceListDocumentType(this.value);
}

enum InvoiceStatus {
  @JsonValue('open')
  open,
  @JsonValue('sent')
  sent,
  @JsonValue('overdue')
  overdue,
  @JsonValue('paid')
  paid,
  @JsonValue('cancelled')
  cancelled,
  @JsonValue('uncollectible')
  uncollectible,
}

enum PaymentMethod {
  @JsonValue('bank')
  bank,
  @JsonValue('cash')
  cash,
  @JsonValue('cod')
  cod,
  @JsonValue('card')
  card,
  @JsonValue('paypal')
  paypal,
  @JsonValue('custom')
  custom,
}

enum DocumentLanguage {
  @JsonValue('cz')
  cz,
  @JsonValue('sk')
  sk,
  @JsonValue('en')
  en,
  @JsonValue('de')
  de,
  @JsonValue('fr')
  fr,
  @JsonValue('it')
  it,
  @JsonValue('es')
  es,
  @JsonValue('ru')
  ru,
  @JsonValue('pl')
  pl,
  @JsonValue('hu')
  hu,
  @JsonValue('ro')
  ro,
}

enum ProformaFollowupDocument {
  @JsonValue('final_invoice_paid')
  finalInvoicePaid,
  @JsonValue('final_invoice')
  finalInvoice,
  @JsonValue('tax_document')
  taxDocument,
  @JsonValue('none')
  none,
}

enum VatPriceMode {
  @JsonValue('without_vat')
  withoutVat,
  @JsonValue('from_total_with_vat')
  fromTotalWithVat,
}

enum OssMode {
  @JsonValue('disabled')
  disabled,
  @JsonValue('service')
  service,
  @JsonValue('goods')
  goods,
}

enum IbanVisibility {
  @JsonValue('automatically')
  automatically,
  @JsonValue('always')
  always,
}

enum InvoiceFireAction {
  markAsSent('mark_as_sent'),
  deliver('deliver'),
  pay('pay'),
  cancel('cancel'),
  undoCancel('undo_cancel'),
  lock('lock'),
  unlock('unlock'),
  markAsUncollectible('mark_as_uncollectible'),
  undoUncollectible('undo_uncollectible');

  final String value;
  const InvoiceFireAction(this.value);
}
