# Pro Aqua Implementation Backlog — Conversion Research Execution

Stand: 2026-06-13  
Quelle: `conversion-research/claude-coworker-growth-brief.md`

## P0 — Conversion und Trust

### P0.1 GA4 + Meta Pixel aktivieren

**Status:** Blockiert, echte IDs fehlen.  
**Ziel:** WhatsApp-/Call-/Quote-Leads messbar machen.

Akzeptanzkriterien:

- Echte GA4 Measurement ID eingetragen.
- Echte Meta Pixel ID eingetragen.
- `lead_click` sendet fuer `wa.me`, `tel:`, `mailto:`.
- Parameter: `channel`, `section`, `text`, `season`, `utm_source`, `utm_medium`, `utm_campaign`, `page_path`.
- Keine Telefonnummern, Namen oder WhatsApp-Nachrichtentexte in Analytics.
- Browser-Test: `dataLayer`, `gtag`, `fbq` funktionieren ohne Console-Errors.

### P0.2 Trust-Badges bereinigen

**Status:** Teilweise blockiert, Nachweise fehlen.  
**Ziel:** Keine sichtbaren Platzhalter oder unbewiesenen Authority-Claims.

Akzeptanzkriterien:

- `DED Trade License No. 0000000` nicht sichtbar.
- `Dubai Municipality Approved` nur sichtbar, wenn Nachweis vorhanden.
- Kein NADCA-/ISO-/medizinischer Claim ohne Nachweis.
- Alternative Copy bei fehlendem Nachweis: `Dubai cleaning company since 2016` oder `Trusted by 6,000+ Dubai families`.
- `MEMORY.md` offene TODOs bleiben korrekt.

### P0.3 Preis-/Festpreis-Block

**Status:** Umsetzbar ohne konkrete Preise, wenn nur Preislogik erklaert wird.  
**Ziel:** Preissicherheit geben, ohne Billigoptik oder ungepruefte Ab-Preise.

Akzeptanzkriterien:

- Abschnitt `How pricing works` oder gleichwertig sichtbar.
- Erklaert: free inspection, scope factors, final fixed quote before start, no hidden extras.
- Falls Ab-Preise fehlen: keine Zahlen erfinden.
- CTA: `Send photos for a fixed quote`.
- FAQ spiegelt dieselbe Logik.

### P0.4 Before/After Proof-Modul schaerfen

**Status:** Teilweise blockiert, echte Area/Month-Daten fehlen.  
**Ziel:** Proof wirkt echt, lokal und verkaufsstark.

Akzeptanzkriterien:

- Jede Karte: `Service · Dubai Area · Month/Year`.
- Badge: `Real documented job`.
- Keine KI-Bilder als Ergebnisbeweis.
- CTA unter Galerie mit servicebezogenem WhatsApp-Prefill.
- Wenn Daten fehlen: intern als TODO markieren, nicht erfinden.

### P0.5 Franco/Team/Equipment Realness

**Status:** Blockiert durch echte Fotos.  
**Ziel:** groessten Trust-Leak schliessen.

Akzeptanzkriterien:

- `assets/franco.jpg` durch echtes Franco-Foto ersetzt.
- Mindestens ein echtes Teamfoto mit weissen Polos.
- Mindestens ein echtes Vivenso/Pro-Aqua-Equipmentfoto.
- Keine KI-Personenbilder als reale Teambeweise.
- Alt-Texte beschreiben reale Szene.

## P1 — Positionierung und Funnel

### P1.1 Vergleichsblock weiter schaerfen

**Ziel:** Pro Aqua als accountable middle-premium positionieren.

Akzeptanzkriterien:

- Apps = bequem, aber anonym/wechselnde Teams.
- Premium = stark, aber teuer/corporate.
- Pro Aqua = Franco, eigenes Team, Festpreis, Foto-Proof.
- Keine Konkurrenznamen.
- Keine abwertende oder rechtlich riskante Formulierung.

### P1.2 Prozess-/Guarantee-Sektion

**Ziel:** Vertrauen durch Ablauf und Risikoabsicherung.

Akzeptanzkriterien:

- Schritte: inspect, quote, protect, clean/sanitize, proof.
- Garantie: free inspection, fixed quote before start, before/after proof, free re-clean if not right.
- Keine medizinischen Heilversprechen.
- Visuell mit echten oder vorhandenen passenden Assets; KI nur als Kampagnenvisual, nicht als Proof.

### P1.3 WhatsApp-Prefills systematisieren

**Ziel:** Landingpage + WhatsApp als ein Funnel.

Akzeptanzkriterien:

- Prefills je Service: AC, Deep Clean, Mattress/Fabric.
- Prefills je Audience: Family, B2B/Property, Arabic.
- Prefills je Season: Summer AC, Sandstorm, Back-to-School, Ramadan/Eid.
- Fragen nach Area, Property Type, Fotos, bevorzugtem Termin.
- Keine personenbezogenen Tracking-Parameter.

### P1.4 Arabic/Villa Path

**Ziel:** kaufkraeftige arabische Haushalte/Villen ernsthaft ansprechen.

Akzeptanzkriterien:

- Arabischer CTA und Prefill sind nicht nur Deko.
- RTL und Mobile getestet.
- Villa/Apartment/AC/Deep Clean klar.
- Spaeterer Pfad fuer `/ar/` oder `?lang=ar` dokumentiert.

## P2 — SEO, AI Search und Content

### P2.1 Service-Unterseiten

Prioritaet:

1. `/ac-duct-cleaning-dubai/`
2. `/mattress-sanitizing-dubai/`
3. `/deep-cleaning-dubai/`
4. `/villa-deep-cleaning-dubai/`
5. `/holiday-home-cleaning-dubai/`

Akzeptanzkriterien:

- Answer-first Hero.
- Preislogik.
- Prozess.
- Equipment/Team.
- echte Proofs.
- Reviews passend zum Service.
- FAQ.
- WhatsApp Prefill.
- LocalBusiness/Service/FAQ Schema.

### P2.2 Intent-Content

Themen:

- `AC duct cleaning Dubai price`
- `mold smell from AC Dubai`
- `sandstorm cleaning Dubai`
- `summer AC cleaning Dubai`
- `mattress cleaning Dubai kids safe`
- `holiday home cleaning Dubai`
- Arabic equivalents

Akzeptanzkriterien:

- Keine generischen SEO-Textwaende.
- Echte Erfahrung und Dubai-Kontext sichtbar.
- FAQ strukturiert.
- Keine unbelegten Gesundheitsstatistiken.

## P3 — Experimente

| Test | Hypothese | Primaere Metrik | Voraussetzung |
|---|---|---|---|
| `WhatsApp Franco's Team` vs `WhatsApp Us` | persoenlicher CTA erhoeht Leads | WhatsApp clicks/session | GA4/Meta aktiv |
| Proof Order | Team/Festpreis vor 6,000+ wirkt staerker | lead rate, scroll depth | GA4 aktiv |
| Owner video vs equipment video | Gesicht vs Kompetenzanker testen | CTA clicks after media | echte Videos/Fotos |
| Quiz-first vs WhatsApp-first | Quiz qualifiziert besser | booked leads / leads | Leadqualitaet erfassen |
| Seasonal hero state | Message Match erhoeht Meta Conversion | campaign lead rate | UTM/season tracking |
| Arabic CTA position | Arabic-Leads steigen | Arabic WhatsApp clicks | Arabic Prefill |

## Reihenfolge

1. GA4/Meta IDs eintragen, sobald vorhanden.
2. Trust-Badges bereinigen, auch ohne Nachweise.
3. Preis-/Festpreis-Block ohne konkrete Zahlen umsetzen.
4. WhatsApp-Prefills systematisieren.
5. Prozess-/Guarantee-Sektion bauen.
6. Echte Fotos/Proof-Daten nachziehen, sobald Giampiero liefert.
7. Danach Service-Unterseiten und Experimente.
