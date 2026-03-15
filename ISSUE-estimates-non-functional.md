# EstimatesRepository is non-functional: Fakturoid API v3 does not support estimates

## Summary

The `EstimatesRepository` and related models (`Estimate`, `EstimateStatus`, `EstimateDocumentType`, `EstimateFireAction`) are non-functional because the Fakturoid API v3 does not support estimates as a document type.

## Evidence from live API testing

### Listing estimates fails

`GET invoices.json?document_type=estimate` returns:
```
400: Parameter "document_type" is invalid
```

The valid `document_type` query parameter values are: `regular`, `proforma`, `correction`, `tax_document`.

### Creating estimates fails

`POST invoices.json` with `document_type: 'estimate'` returns:
```
422: document_type: [není v seznamu povolených hodnot] (not in the list of allowed values)
```

## What exists in the codebase

- `lib/src/repositories/estimates_repository.dart` — Uses `invoices.json` endpoint with `document_type=estimate` filter. All methods fail.
- `lib/src/models/estimate.dart` — Freezed model with estimate-specific fields (`acceptedAt`, `rejectedAt`, `cancelledAt`)
- `lib/src/models/enums/estimate_enums.dart` — `EstimateStatus`, `EstimateDocumentType`, `EstimateFireAction` enums
- `example/estimates.dart` — References `createEstimate` and `updateEstimate` methods that are not implemented
- `DocumentType.estimate` in `invoice_enums.dart` — Also rejected by the API

## Additional context

- The `Account` model has a `default_estimate_type` field (read-only), suggesting estimates exist in the Fakturoid system but are not exposed via API v3.
- The `Subject` model has `setting_estimate_pdf_attachments` and `custom_estimate_email_text` fields, further suggesting estimate support exists in the UI but not the API.
- Tested on plan: "Na maximum" (highest tier).

## Recommendation

Consider one of:
1. **Remove** the estimates module entirely until Fakturoid adds API support
2. **Mark as experimental/unsupported** with clear documentation that the API does not currently support these operations
3. **Monitor** the Fakturoid API changelog for future estimate support and re-enable when available
