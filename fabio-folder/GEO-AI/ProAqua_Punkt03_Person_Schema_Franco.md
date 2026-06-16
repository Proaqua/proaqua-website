# Pro Aqua Dubai – Website Korrektur Punkt 3
# Person Schema: Franco Lapeschi

**Was ist das:**
Ein unsichtbarer JSON-LD Code-Block der KI-Modellen (ChatGPT, Claude, Perplexity)
und Google mitteilt wer Franco Lapeschi ist, welche Expertise er hat, und dass er
der Gründer und CEO von Pro Aqua Dubai ist.

**Wo einbauen:**
Im `<head>` der index.html — direkt nach dem bestehenden FAQPage Schema Block.
Also als dritter JSON-LD Block nach LocalBusiness und FAQPage.

**Was sich auf der sichtbaren Website ändert:**
Nichts. Kein Design, kein Text, kein Bild wird verändert.
Nur KI-Modelle und Google lesen diesen Block.

**Wann LinkedIn ergänzen:**
Sobald Franco ein LinkedIn-Profil hat, die auskommentierte Zeile
`// "sameAs": ["https://www.linkedin.com/in/franco-lapeschi"]`
aktivieren — Schrägstriche entfernen und die echte LinkedIn-URL eintragen.

---

## Der Code — direkt nach dem FAQPage Schema Block einfügen

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Person",
  "@id": "https://www.proaquadxb.com/#franco-lapeschi",
  "name": "Franco Lapeschi",
  "givenName": "Franco",
  "familyName": "Lapeschi",
  "jobTitle": "Founder & CEO",
  "description": "Franco Lapeschi is an Italian entrepreneur and the founder and CEO of Pro Aqua Dubai, a licensed professional cleaning and disinfection company established in Dubai in 2016. With nearly a decade of hands-on experience in AC duct cleaning, villa deep cleaning, and certified disinfection across Dubai, Franco leads every job personally — ensuring the same trained team, the same standards, and before-and-after photo proof on every single visit. His philosophy: every job has my name on it.",
  "url": "https://www.proaquadxb.com",
  "image": "https://www.proaquadxb.com/assets/franco.webp",
  "nationality": {
    "@type": "Country",
    "name": "Italy"
  },
  "worksFor": {
    "@type": "Organization",
    "@id": "https://www.proaquadxb.com/#business",
    "name": "Pro Aqua Dubai",
    "url": "https://www.proaquadxb.com"
  },
  "foundingDate": "2016",
  "knowsAbout": [
    "AC Duct Cleaning Dubai",
    "Villa Deep Cleaning Dubai",
    "Indoor Air Quality Dubai",
    "Disinfection and Sterilization UAE",
    "HVAC Cleaning Dubai",
    "Mould Remediation Dubai",
    "Mattress and Sofa Cleaning Dubai",
    "Office Cleaning Dubai",
    "Dubai Municipality Hygiene Standards",
    "Expat Home Services Dubai"
  ],
  "hasOccupation": {
    "@type": "Occupation",
    "name": "Professional Cleaning & Disinfection Expert",
    "occupationLocation": {
      "@type": "City",
      "name": "Dubai"
    },
    "description": "Specialist in AC duct cleaning, villa deep cleaning, and certified disinfection services across Dubai since 2016."
  },
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "Dubai",
    "addressCountry": "AE"
  }
}
</script>
```

---

## Wo genau im Code einfügen?

Im `<head>` der index.html nach diesem bestehenden Block suchen:

```html
</script>   ← Ende des FAQPage Schema Blocks
```

Und direkt danach den neuen Person-Block einfügen:

```html
</script>   ← Ende des FAQPage Schema Blocks (bereits vorhanden)

<script type="application/ld+json">   ← NEU: Person Schema hier einfügen
{
  "@context": "https://schema.org",
  "@type": "Person",
  ...
}
</script>
```

---

## Testen nach dem Einbauen

Hier prüfen ob der Block korrekt erkannt wird:
👉 https://search.google.com/test/rich-results

URL eingeben → Google zeigt ob das Schema fehlerfrei ist.

Zusätzlich hier prüfen:
👉 https://validator.schema.org

Den JSON-LD Code direkt einfügen → zeigt Fehler und Warnungen an.

---

## LinkedIn — sobald vorhanden ergänzen

Wenn Franco ein LinkedIn-Profil erstellt hat, dieses Feld zum Person Schema hinzufügen
(direkt vor der letzten geschweiften Klammer `}` einfügen):

```json
"sameAs": [
  "https://www.linkedin.com/in/franco-lapeschi"
]
```

Das verknüpft Franco's digitale Präsenz mit dem Unternehmen und stärkt
das E-E-A-T Signal für KI-Modelle erheblich.

---

*Erstellt von Agent 11 – GEO & AI Visibility | Pro Aqua Dubai*
*Nächster Schritt: Punkt 4 – Service Schemas*
