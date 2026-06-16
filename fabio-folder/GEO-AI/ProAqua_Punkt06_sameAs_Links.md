# Pro Aqua Dubai – Website Korrektur Punkt 6
# sameAs Links im LocalBusiness Schema ergänzen

**Was ist das:**
Das `sameAs` Feld im bestehenden LocalBusiness Schema verknüpft die Website
mit den Social-Media-Profilen von Pro Aqua. Es fehlt aktuell komplett.

**Warum es wichtig ist:**
KI-Modelle sammeln Informationen über ein Unternehmen aus vielen Quellen gleichzeitig
— Website, Instagram, Facebook, Verzeichnisse. Das `sameAs` Feld sagt der KI
explizit: diese Instagram-Seite, diese Facebook-Seite und dieses Unternehmen
sind alle dasselbe. Das verhindert Verwechslungen und stärkt das Vertrauenssignal.
Beispiel: Jemand entdeckt Pro Aqua auf Instagram und fragt danach ChatGPT wer
das ist — die KI kann die Verbindung nur herstellen wenn `sameAs` vorhanden ist.

**Was konkret geändert wird:**
Kein neuer Block. Das bereits vorhandene LocalBusiness Schema wird um ein
einziges Feld ergänzt. Kleine Änderung, große Wirkung.

**Was sich auf der sichtbaren Website ändert:**
Nichts. Kein Design, kein Text, kein Bild wird verändert.

---

## Was zu ändern ist — Schritt für Schritt

Im bestehenden LocalBusiness Schema Block nach dieser Zeile suchen:

```json
"hasOfferCatalog": {
```

Direkt **davor** das `sameAs` Feld einfügen:

```json
"sameAs": [
  "https://www.instagram.com/proaquaservices/",
  "https://www.facebook.com/ProAquadxb"
],
```

---

## So sieht das LocalBusiness Schema danach aus

Der vollständige aktualisierte Block zur Kontrolle — 
die neuen Zeilen sind mit dem Kommentar `← NEU` markiert:

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Pro Aqua Dubai",
  "alternateName": "ProAqua Disinfection & Sterilization LLC",
  "description": "Pro Aqua is Dubai's owner-led specialist for AC duct cleaning, deep cleaning and mattress sanitizing. Franco's trained team delivers documented results at fixed prices — with before and after photo proof on every job. Serving 10,000+ happy Dubai customers since 2016.",
  "foundingDate": "2016",
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.7",
    "reviewCount": "60",
    "bestRating": "5",
    "worstRating": "1"
  },
  "url": "https://www.proaquadxb.com",
  "telephone": "+971567943412",
  "email": "info@proaquadxb.com",
  "priceRange": "AED 89 - AED 4300",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "Al Rabeea 2 Street, Al Warsan Building, 803",
    "addressLocality": "Barsha Heights",
    "addressRegion": "Dubai",
    "addressCountry": "AE"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": 25.0957,
    "longitude": 55.1713
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Friday"],
      "opens": "08:00",
      "closes": "17:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Saturday","Sunday"],
      "opens": "09:00",
      "closes": "17:00"
    }
  ],
  "sameAs": [
    "https://www.instagram.com/proaquaservices/",
    "https://www.facebook.com/ProAquadxb"
  ],
  "hasOfferCatalog": {
    "@type": "OfferCatalog",
    "name": "Cleaning & Disinfection Services Dubai",
    "itemListElement": [
      {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "AC Duct Cleaning Dubai"}},
      {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Villa Deep Cleaning Dubai"}},
      {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Office Cleaning Dubai"}},
      {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Disinfection & Sterilization"}},
      {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Fabric Sanitizing & Washing"}},
      {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Mattress Sanitizing Dubai"}}
    ]
  }
}
</script>
```

---

## Später ergänzen — wenn weitere Profile live gehen

Sobald LinkedIn, TikTok oder weitere Profile erstellt werden,
einfach die URLs zur `sameAs` Liste hinzufügen:

```json
"sameAs": [
  "https://www.instagram.com/proaquaservices/",
  "https://www.facebook.com/ProAquadxb",
  "https://www.linkedin.com/in/franco-lapeschi",
  "https://www.tiktok.com/@proaquadxb"
]
```

---

## Vollständige Reihenfolge im `<head>` nach dem Einbauen

```
Block 1: LocalBusiness Schema              ← aktualisiert mit sameAs ✅
Block 2: FAQPage Schema                    ← wird durch Punkt 2 aktualisiert ✅
Block 3: Person Schema Franco              ← Punkt 3 ✅
Block 4: Service — AC Duct Cleaning        ← Punkt 4 ✅
Block 5: Service — Villa Deep Cleaning     ← Punkt 4 ✅
Block 6: Service — Office Cleaning         ← Punkt 4 ✅
Block 7: Service — Disinfection            ← Punkt 4 ✅
Block 8: Service — Sofa/Mattress/Carpet   ← Punkt 4 ✅
Block 9: WebSite Schema                    ← Punkt 5 ✅
```

---

## Testen nach dem Einbauen

Google Rich Results Test:
👉 https://search.google.com/test/rich-results

Schema Validator:
👉 https://validator.schema.org

---

*Erstellt von Agent 11 – GEO & AI Visibility | Pro Aqua Dubai*
*Nächster Schritt: Punkt 7 – AggregateRating mit echten Google-Zahlen aktualisieren*
