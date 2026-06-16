# Pro Aqua Dubai – Website Korrektur Punkt 5
# WebSite Schema

**Was ist das:**
Ein einzelner JSON-LD Block der KI-Modellen und Google mitteilt dass diese
Website existiert, zu welchem Unternehmen sie gehört, und wie sie heißt.
Er fungiert als "Anker" der alle anderen Schemas (LocalBusiness, Person, Services)
zu einem kohärenten Gesamtbild verbindet.

**Warum es wichtig ist:**
Ohne WebSite Schema fehlt KI-Modellen die direkte Verbindung zwischen
der URL proaquadxb.com und dem Unternehmen Pro Aqua Dubai.
Zusätzlich aktiviert das Schema die SearchAction — ein Signal an Google
dass die Website durchsuchbar ist. Google kann dadurch eine Suchbox
direkt in den Suchergebnissen anzeigen.

**Wo einbauen:**
Im `<head>` der index.html — direkt nach den fünf Service Schema Blöcken (Punkt 4).
Also als Block 9 nach LocalBusiness, FAQPage, Person und den 5 Service Schemas.

**Was sich auf der sichtbaren Website ändert:**
Nichts. Kein Design, kein Text, kein Bild wird verändert.

---

## Der Code — direkt nach den Service Schemas einfügen

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "@id": "https://www.proaquadxb.com/#website",
  "name": "Pro Aqua Dubai",
  "alternateName": "ProAqua Disinfection & Sterilization LLC",
  "url": "https://www.proaquadxb.com",
  "description": "Pro Aqua Dubai — Licensed AC duct cleaning, villa deep cleaning, office cleaning, disinfection & sterilization, and sofa, mattress & carpet cleaning in Dubai. Founded 2016 by Franco Lapeschi. Fixed prices, before and after photo proof on every job.",
  "inLanguage": "en-AE",
  "publisher": {
    "@type": "LocalBusiness",
    "@id": "https://www.proaquadxb.com/#business",
    "name": "Pro Aqua Dubai"
  },
  "potentialAction": {
    "@type": "SearchAction",
    "target": {
      "@type": "EntryPoint",
      "urlTemplate": "https://www.proaquadxb.com/?s={search_term_string}"
    },
    "query-input": "required name=search_term_string"
  }
}
</script>
```

---

## Vollständige Reihenfolge im `<head>` nach dem Einbauen

```
Block 1: LocalBusiness Schema              ← bereits vorhanden ✅
Block 2: FAQPage Schema                    ← wird durch Punkt 2 aktualisiert ✅
Block 3: Person Schema Franco              ← Punkt 3 ✅
Block 4: Service — AC Duct Cleaning        ← Punkt 4 ✅
Block 5: Service — Villa Deep Cleaning     ← Punkt 4 ✅
Block 6: Service — Office Cleaning         ← Punkt 4 ✅
Block 7: Service — Disinfection            ← Punkt 4 ✅
Block 8: Service — Sofa/Mattress/Carpet   ← Punkt 4 ✅
Block 9: WebSite Schema                    ← NEU 🆕
```

---

## Testen nach dem Einbauen

Google Rich Results Test:
👉 https://search.google.com/test/rich-results

Schema Validator:
👉 https://validator.schema.org

---

*Erstellt von Agent 11 – GEO & AI Visibility | Pro Aqua Dubai*
*Nächster Schritt: Punkt 6 – sameAs Links im LocalBusiness Schema ergänzen*
