# Limity a Chybové stavy

Fakturoid API v3 implementuje striktní limity na počet požadavků.

## 🚦 Rate Limiting

Standardní limit je **400 požadavků za minutu** na jeden uživatelský účet.

### Jak SDK informuje o limitech
Každá výjimka vyvolaná API voláním (`FakturoidException`) obsahuje objekt `FakturoidRateLimit`:

```dart
Future<void> checkRateLimit(FakturoidClient client) async {
  try {
    await client.invoices.getInvoices();
  } on FakturoidRateLimitException catch (e) {
    final reset = e.rateLimit?.resetInSeconds;
    print('Reset za: $reset sekund');
  }
}
```

## ❌ Typy Výjimek

Všechny výjimky dědí z `FakturoidException`:

| Výjimka | HTTP Kód | Popis |
| :--- | :--- | :--- |
| `FakturoidAuthException` | 401, 403 | Problém s tokenem nebo oprávněním. |
| `FakturoidNotFoundException` | 404 | Prostředek neexistuje. |
| `FakturoidValidationException` | 422 | Chyba v datech. Obsahuje mapu `errors`. |
| `FakturoidRateLimitException` | 429 | Překročen limit požadavků. |
| `FakturoidApiErrorException` | 4xx, 5xx | Ostatní chyby serveru. |

---
[Zpět na Home](Home.md)
