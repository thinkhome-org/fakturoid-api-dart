# Limity a Chybové stavy

Fakturoid API v3 implementuje striktní limity na počet požadavků a SDK vám pomáhá tyto stavy správně ošetřit.

## 🚦 Rate Limiting

Standardní limit je **400 požadavků za minutu** na jeden uživatelský účet.

### Jak SDK informuje o limitech
Každá výjimka vyvolaná API voláním (`FakturoidException`) obsahuje objekt `FakturoidRateLimit`, pokud jsou tyto informace v odpovědi dostupné:

```dart
Future<void> checkInvoices(FakturoidClient client) async {
  try {
    await client.invoices.getInvoices();
  } on FakturoidRateLimitException catch (e) {
    final reset = e.rateLimit?.resetInSeconds;
    print('Limit vyčerpán! Reset za: $reset sekund');
  }
}
```

### Struktura FakturoidRateLimit
*   `quota` – Celkový počet povolených požadavků v okně.
*   `remaining` – Kolik požadavků ještě zbývá.
*   `resetInSeconds` – Za jak dlouho se limit obnoví.

## ❌ Typy Výjimek

Všechny výjimky dědí z `FakturoidException`:

| Výjimka | HTTP Kód | Popis |
| :--- | :--- | :--- |
| `FakturoidAuthException` | 401, 403 | Problém s tokenem nebo oprávněním. |
| `FakturoidNotFoundException` | 404 | Prostředek (např. faktura s daným ID) neexistuje. |
| `FakturoidValidationException` | 422 | Chyba v datech (např. neplatné IČO). Obsahuje mapu `errors`. |
| `FakturoidRateLimitException` | 429 | Překročen limit požadavků. |
| `FakturoidApiErrorException` | 4xx, 5xx | Ostatní chyby serveru. |

### Příklad ošetření validace
```dart
Future<void> createSubject(FakturoidClient client) async {
  try {
    await client.subjects.createSubject(const Subject(name: ''));
  } on FakturoidValidationException catch (e) {
    // e.errors obsahuje detaily, např. {name: [can't be blank]}
    print('Chyba validace: ${e.errors}');
  }
}
```

## ⏳ Timeouty a Throttling

V live testech a úklidových skriptech doporučujeme používat drobné prodlevy (`Future.delayed`), abyste předešli nárazovému vyčerpání limitu při zpracování velkého množství dat.

---
[Zpět na Home](Home.md)
