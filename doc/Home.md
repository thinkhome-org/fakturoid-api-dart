# Fakturoid API v3 Dart SDK Dokumentace

Vítejte v oficiální dokumentaci pro Dart/Flutter SDK služby Fakturoid (API v3). Tato knihovna umožňuje snadnou integraci fakturačního systému Fakturoid do vašich Dart aplikací.

## 📖 Obsah dokumentace

1.  **[Začínáme (Usage Guide)](Usage-Guide.md)** – Jak knihovnu nainstalovat a provést první volání.
2.  **[Autentizace (OAuth 2.0)](Authentication.md)** – Podrobný návod na nastavení OAuth 2.0, PKCE a správu tokenů.
3.  **[Přehled repozitářů](Repositories.md)** – Seznam všech dostupných modulů (Faktury, Náklady, Sklad atd.).
4.  **[Datové modely](Models.md)** – Informace o entitách a enumech.
5.  **[Limity a chyby (Rate Limiting)](Rate-Limiting.md)** – Jak SDK nakládá s limity API a chybovými stavy.

## 🔗 Důležité odkazy

*   **[Oficiální Fakturoid API v3 Dokumentace](https://www.fakturoid.cz/api/v3)**
*   **[Changelog API v3](https://www.fakturoid.cz/api/v3/changelog)**
*   **[Registrace aplikace (Client ID)](https://app.fakturoid.cz/api)**

## 🏗 Architektura v kostce

SDK je rozděleno na specializované repozitáře přístupné skrze hlavní `FakturoidClient`. Každý repozitář odpovídá jedné sekci v oficiální dokumentaci.

---
*Dokumentace je platná pro verzi SDK 0.0.1 a Fakturoid API v3 (stav k březnu 2026).*
