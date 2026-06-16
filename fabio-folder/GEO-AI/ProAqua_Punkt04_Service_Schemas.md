# Pro Aqua Dubai – Website Korrektur Punkt 4
# Service Schemas

**Was ist das:**
Fünf unsichtbare JSON-LD Code-Blöcke — einer pro Service — die KI-Modellen
(ChatGPT, Claude, Perplexity) und Google mitteilen welche konkreten Services
Pro Aqua anbietet, was sie kosten, und in welchem Gebiet sie verfügbar sind.

**Warum es wichtig ist:**
Ohne Service Schema sieht die KI die Services nur als normalen Text auf der Website.
Mit Service Schema erkennt sie: das ist ein buchbarer Service, mit diesem Startpreis,
in diesem Gebiet. Wenn jemand fragt "AC duct cleaning Dubai price" oder
"villa deep cleaning Dubai" — wird Pro Aqua als direkter Treffer erkannt.

**Warum niedrige Startpreise besser sind:**
Die KI liest den Startpreis als Einstiegspunkt und nennt ihn bei Preisanfragen.
Ein niedriger, realistischer Startpreis macht Pro Aqua attraktiver und erhöht
die Chance auf Nennung — ähnlich wie bei Google Shopping.
Wichtig: Nur echte, erreichbare Preise eintragen. Wenn die KI AED 89 nennt
und der Kunde mehr bezahlt entsteht eine schlechte Erfahrung — das schadet
langfristig den Reviews und der KI-Sichtbarkeit.

**Wo einbauen:**
Im `<head>` der index.html — direkt nach dem Person Schema Block (Punkt 3).
Also als Blöcke 4 bis 8 nach LocalBusiness, FAQPage und Person.

**Was sich auf der sichtbaren Website ändert:**
Nichts. Kein Design, kein Text, kein Bild wird verändert.

---

## WICHTIGER HINWEIS FÜR DEN ENTWICKLER — Unterseiten

Die URLs in diesen Schemas zeigen aktuell auf die Startseite als Platzhalter.
Sobald eigene Unterseiten pro Service erstellt werden — was dringend empfohlen wird —
müssen die URLs aktualisiert werden:

| Service | Aktuelle URL (Platzhalter) | Ziel-URL (sobald Unterseite existiert) |
|---|---|---|
| AC Duct Cleaning | https://www.proaquadxb.com | https://www.proaquadxb.com/ac-duct-cleaning |
| Villa Deep Cleaning | https://www.proaquadxb.com | https://www.proaquadxb.com/villa-deep-cleaning |
| Office Cleaning | https://www.proaquadxb.com | https://www.proaquadxb.com/office-cleaning |
| Disinfection | https://www.proaquadxb.com | https://www.proaquadxb.com/disinfection |
| Sofa/Mattress/Carpet | https://www.proaquadxb.com | https://www.proaquadxb.com/sofa-mattress-carpet-cleaning |

**Warum Unterseiten wichtig sind:**
- Jede Unterseite kann für eigene Keywords bei Google ranken
- KI-Modelle können direkt auf die relevante Seite verweisen
- Besucher die auf eine Service-Seite kommen konvertieren schneller
- Jede Seite bekommt ihr eigenes Schema ohne Überlappung

---

## Schema 1 – AC Duct Cleaning

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Service",
  "@id": "https://www.proaquadxb.com/#service-ac-duct-cleaning",
  "name": "AC Duct Cleaning Dubai",
  "alternateName": [
    "Air Duct Cleaning Dubai",
    "HVAC Cleaning Dubai",
    "AC Cleaning Dubai",
    "Duct Cleaning Dubai"
  ],
  "description": "Professional AC duct cleaning service in Dubai by Pro Aqua Dubai. Using industrial HEPA-filtered vacuum equipment, Franco's trained team removes dust, mould, bacteria, and allergens from your entire ventilation system. Every job includes before-and-after photo documentation. Combined UV disinfection and fogging available. Serving all Dubai areas including Dubai Marina, Jumeirah, Palm Jumeirah, Arabian Ranches, Business Bay, DIFC, Downtown Dubai, Al Barsha, Mirdif, and JBR.",
  "provider": {
    "@type": "LocalBusiness",
    "@id": "https://www.proaquadxb.com/#business",
    "name": "Pro Aqua Dubai"
  },
  "areaServed": {
    "@type": "City",
    "name": "Dubai",
    "sameAs": "https://www.wikidata.org/wiki/Q5117"
  },
  "offers": {
    "@type": "Offer",
    "priceCurrency": "AED",
    "priceSpecification": {
      "@type": "PriceSpecification",
      "minPrice": "399",
      "priceCurrency": "AED",
      "description": "Starting from AED 399 depending on number of AC units and property size. Free on-site inspection before any work begins."
    },
    "availability": "https://schema.org/InStock",
    "url": "https://www.proaquadxb.com"
  },
  "serviceType": "AC Duct Cleaning",
  "category": "Home Cleaning Services",
  "termsOfService": "Free inspection included. Fixed price confirmed before work begins. Before and after photo proof on every job. Re-clean guarantee if not satisfied."
}
</script>
```

---

## Schema 2 – Villa Deep Cleaning

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Service",
  "@id": "https://www.proaquadxb.com/#service-villa-deep-cleaning",
  "name": "Villa Deep Cleaning Dubai",
  "alternateName": [
    "House Deep Cleaning Dubai",
    "Home Deep Cleaning Dubai",
    "Move In Cleaning Dubai",
    "Move Out Cleaning Dubai",
    "Deep Cleaning Dubai"
  ],
  "description": "Comprehensive villa and apartment deep cleaning service in Dubai by Pro Aqua Dubai. Top-to-bottom professional cleaning covering bathrooms, kitchen appliances (inside and out), behind furniture and appliances, window frames, skirting boards, AC vents, and all hard-to-reach areas. Disinfection and sterilization included as standard. Trusted by expat families, property managers, and homeowners across Dubai since 2016.",
  "provider": {
    "@type": "LocalBusiness",
    "@id": "https://www.proaquadxb.com/#business",
    "name": "Pro Aqua Dubai"
  },
  "areaServed": {
    "@type": "City",
    "name": "Dubai",
    "sameAs": "https://www.wikidata.org/wiki/Q5117"
  },
  "offers": {
    "@type": "Offer",
    "priceCurrency": "AED",
    "priceSpecification": {
      "@type": "PriceSpecification",
      "minPrice": "800",
      "priceCurrency": "AED",
      "description": "Starting from AED 800 depending on villa size, number of rooms, and condition of property. Free WhatsApp quote available."
    },
    "availability": "https://schema.org/InStock",
    "url": "https://www.proaquadxb.com"
  },
  "serviceType": "Villa Deep Cleaning",
  "category": "Home Cleaning Services",
  "termsOfService": "Free inspection included. Fixed price confirmed before work begins. Disinfection included as standard. Re-clean guarantee if not satisfied."
}
</script>
```

---

## Schema 3 – Office Cleaning

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Service",
  "@id": "https://www.proaquadxb.com/#service-office-cleaning",
  "name": "Office Cleaning Dubai",
  "alternateName": [
    "Commercial Cleaning Dubai",
    "Workplace Cleaning Dubai",
    "Business Bay Office Cleaning",
    "DIFC Office Cleaning",
    "Downtown Dubai Office Cleaning"
  ],
  "description": "Professional office and commercial cleaning service in Dubai by Pro Aqua Dubai. Serving businesses in Business Bay, DIFC, Downtown Dubai, and across the emirate. Services include regular office cleaning, deep cleaning, and certified disinfection — scheduled around your working hours to minimise disruption. Trusted by office managers, facility managers, and property managers across Dubai.",
  "provider": {
    "@type": "LocalBusiness",
    "@id": "https://www.proaquadxb.com/#business",
    "name": "Pro Aqua Dubai"
  },
  "areaServed": [
    {
      "@type": "Place",
      "name": "Business Bay, Dubai"
    },
    {
      "@type": "Place",
      "name": "DIFC, Dubai"
    },
    {
      "@type": "Place",
      "name": "Downtown Dubai"
    },
    {
      "@type": "City",
      "name": "Dubai"
    }
  ],
  "offers": {
    "@type": "Offer",
    "priceCurrency": "AED",
    "priceSpecification": {
      "@type": "PriceSpecification",
      "minPrice": "300",
      "priceCurrency": "AED",
      "description": "Starting from AED 300 depending on office size and scope of cleaning required. Contact via WhatsApp for a fast quote."
    },
    "availability": "https://schema.org/InStock",
    "url": "https://www.proaquadxb.com"
  },
  "serviceType": "Office Cleaning",
  "category": "Commercial Cleaning Services",
  "termsOfService": "Flexible scheduling around business hours. Fixed price confirmed before work begins. Re-clean guarantee if not satisfied."
}
</script>
```

---

## Schema 4 – Disinfection & Sterilization

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Service",
  "@id": "https://www.proaquadxb.com/#service-disinfection",
  "name": "Disinfection & Sterilization Dubai",
  "alternateName": [
    "Home Disinfection Dubai",
    "Office Disinfection Dubai",
    "Sanitization Service Dubai",
    "Fogging Service Dubai",
    "Sterilization Service Dubai"
  ],
  "description": "Certified disinfection and sterilization service in Dubai by Pro Aqua Dubai. Using EU-approved disinfection products and professional fogging equipment, Pro Aqua eliminates bacteria, viruses, mould, and allergens from residential and commercial properties. Safe for children and pets once dry. Available as a standalone service or combined with AC duct cleaning or villa deep cleaning in a single visit.",
  "provider": {
    "@type": "LocalBusiness",
    "@id": "https://www.proaquadxb.com/#business",
    "name": "Pro Aqua Dubai"
  },
  "areaServed": {
    "@type": "City",
    "name": "Dubai",
    "sameAs": "https://www.wikidata.org/wiki/Q5117"
  },
  "offers": {
    "@type": "Offer",
    "priceCurrency": "AED",
    "priceSpecification": {
      "@type": "PriceSpecification",
      "minPrice": "149",
      "priceCurrency": "AED",
      "description": "Starting from AED 149 depending on property size and scope. Can be combined with other services for maximum value."
    },
    "availability": "https://schema.org/InStock",
    "url": "https://www.proaquadxb.com"
  },
  "serviceType": "Disinfection & Sterilization",
  "category": "Health & Hygiene Services",
  "termsOfService": "EU-approved products used. Safe for children and pets once dry. Fixed price confirmed before work begins."
}
</script>
```

---

## Schema 5 – Sofa, Mattress & Carpet Cleaning

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Service",
  "@id": "https://www.proaquadxb.com/#service-sofa-mattress-carpet",
  "name": "Sofa, Mattress & Carpet Cleaning Dubai",
  "alternateName": [
    "Sofa Cleaning Dubai",
    "Mattress Cleaning Dubai",
    "Carpet Cleaning Dubai",
    "Upholstery Cleaning Dubai",
    "Fabric Cleaning Dubai",
    "Mattress Sanitizing Dubai"
  ],
  "description": "Professional sofa, mattress, and carpet cleaning service in Dubai by Pro Aqua Dubai. Using deep-extraction cleaning methods to remove dust mites, stains, allergens, and bacteria from upholstered furniture and floor coverings. Before and after photo proof on every job. Ideal for families with children, allergy sufferers, and pet owners. Available across all Dubai areas.",
  "provider": {
    "@type": "LocalBusiness",
    "@id": "https://www.proaquadxb.com/#business",
    "name": "Pro Aqua Dubai"
  },
  "areaServed": {
    "@type": "City",
    "name": "Dubai",
    "sameAs": "https://www.wikidata.org/wiki/Q5117"
  },
  "offers": {
    "@type": "Offer",
    "priceCurrency": "AED",
    "priceSpecification": {
      "@type": "PriceSpecification",
      "minPrice": "89",
      "priceCurrency": "AED",
      "description": "Starting from AED 89 per item depending on size and material. Contact via WhatsApp for a fast quote."
    },
    "availability": "https://schema.org/InStock",
    "url": "https://www.proaquadxb.com"
  },
  "serviceType": "Upholstery & Carpet Cleaning",
  "category": "Home Cleaning Services",
  "termsOfService": "Fixed price confirmed before work begins. Before and after photo proof on every job. Safe products for children and pets."
}
</script>
```

---

## Reihenfolge im `<head>` nach dem Einbauen

```
Block 1: LocalBusiness Schema    ← bereits vorhanden ✅
Block 2: FAQPage Schema          ← wird durch Punkt 2 aktualisiert ✅
Block 3: Person Schema Franco    ← Punkt 3 ✅
Block 4: Service — AC Duct Cleaning        ← NEU 🆕
Block 5: Service — Villa Deep Cleaning     ← NEU 🆕
Block 6: Service — Office Cleaning         ← NEU 🆕
Block 7: Service — Disinfection            ← NEU 🆕
Block 8: Service — Sofa/Mattress/Carpet   ← NEU 🆕
```

---

## Testen nach dem Einbauen

Google Rich Results Test:
👉 https://search.google.com/test/rich-results

Schema Validator:
👉 https://validator.schema.org

---

*Erstellt von Agent 11 – GEO & AI Visibility | Pro Aqua Dubai*
*Nächster Schritt: Punkt 5 – WebSite Schema*
