# Pro Aqua Website - Critical UI/UX & Conversion Audit

Stand: 2026-06-15  
Auditor: Codex  
Basis: `AGENTS.md`, `MEMORY.md`, Conversion-Research-MDs, Wettbewerbsanalyse, aktuelle `index.html`, lokale Vorschau `http://localhost:8742/`.

## Kurzurteil

Die Seite ist deutlich staerker als eine normale lokale Dubai-Cleaning-Website. Sie hat eine klare strategische Kategorie: Franco/Owner-led Accountability, hospital-grade Cleaning, fair fixed price, WhatsApp-first und Proof-Logik. Das ist genau die Richtung aus den Research-Dateien.

Sie ist aber noch nicht "perfekt" und noch nicht sauber genug fuer grosses Paid-Traffic-Scaling. Der groesste Hebel ist jetzt nicht noch mehr Design, sondern Claim-Hygiene, direkte Hash-/Landing-State-Stabilitaet, Proof-Kontext und Mobile-Fokus.

**Gesamt-Score: 7.6 / 10**

Interpretation:

- **0-5:** nicht kampagnenfaehig
- **6-7:** solide, aber noch sichtbar unfertig
- **7-8:** starke Conversion-Basis, aber mit echten Risiken
- **8-9:** paid-traffic-ready nach Messung
- **9-10:** nahezu perfekt, datenvalidiert und proof-led

Pro Aqua liegt aktuell bei **ca. 76 % Fertigstellung** fuer eine starke One-Page-Conversion-Site. Fuer eine wirklich skalierbare Meta-/Google-/WhatsApp-Landingpage fehlen noch ca. 20-25 %: belastbare Nachweise, saubere Landing-States, Performance/Tracking und echte Job-Kontexte.

## Bewertungsmatrix

| Bereich | Score | Bewertung |
|---|---:|---|
| Positionierung | 8.7/10 | Stark. Franco + eigenes Team + Festpreis + Proof ist klar differenzierend gegen Apps und Premium-Corporates. |
| Hero / First View | 8.2/10 | Starker Contradiction-Hook, Franco sichtbar, Trust-Signale vorhanden. Mobile CTA liegt aber etwas spaet. |
| UI / Visual Polish | 7.4/10 | Modern, hochwertig, aber stellenweise zu viele Badges/CTAs und zu viel vertikale Leere bei Direktlandungen. |
| Mobile UX | 6.9/10 | Kein horizontaler Overflow, gute Lesbarkeit. Aber FAB/WhatsApp konkurrieren und Hash-Landings sind unsauber. |
| WhatsApp-Funnel | 8.4/10 | WhatsApp ist dominant und farblich konsistent (#25D366). Prefills sind gut, aber noch nicht komplett systematisch. |
| Trust / Proof | 7.0/10 | Viele echte Fotos und Franco sichtbar. Schwachpunkt: Before/After ohne echte Area/Month-Daten und teils harte Claims. |
| Claim-Hygiene / Compliance | 6.2/10 | Zu viele unbelegte oder zu starke Claims: "100% results", "certified", "medical-grade", "verified", 30-60 %, 2M+. |
| Ads-/Campaign-Readiness | 6.8/10 | Seasonal/B2B/Arabic sind da, aber direkte URL-/Hash-Landings und Tracking fehlen fuer skalierbare Kampagnen. |
| Performance / Technical UX | 7.0/10 | Keine Console-Errors, kein Overflow. Risiko: 22 MB Hero-Video, viele Assets, sehr lange One-Page. |
| Accessibility / Semantik | 7.1/10 | Grundstruktur ok, aber `aria-current` wird auch fuer Seasonal Cards benutzt; direkte Hash-Ziele sind nicht robust. |

## Was sehr gut ist

1. **Die strategische Kategorie ist richtig.**  
   Die Seite sagt nicht einfach "cleaning company", sondern "Franco's accountable specialist team". Das ist der beste psychologische Hebel gegen Justlife/ServiceMarket/App-Anbieter.

2. **Der Hero ist verkaufspsychologisch stark.**  
   "Your Dubai home looks clean. Your AC ducts don't." ist ein echter Pattern Interrupt. Die Copy verbindet Dubai-Kontext, verstecktes Problem, Zeitreduktion, Festpreis und Proof.

3. **WhatsApp ist konsequent als Hauptfunnel gebaut.**  
   Im DOM wurden 25 WhatsApp-Links gefunden. Die wichtigen WhatsApp-CTAs nutzen konsistent echtes WhatsApp-Gruen `rgb(37, 211, 102)`.

4. **Google-Rating ist jetzt als wiederverwendbare Badge-Komponente konsistent.**  
   `.google-rating-badge` wird in Hero, Sticky Trust, Comparison, Franco, Reviews und Chips genutzt. Das loest das urspruengliche Konsistenzproblem weitgehend.

5. **Die Research-Prinzipien sind sichtbar umgesetzt.**  
   Loss Aversion, Risk Reversal, Social Proof, Choice Architecture, Fixed-Price-Logik, Proof-Loops, Direct-Response-Checkliste, 60-Second Vent Check, Seasonal Trigger, B2B und Arabic sind vorhanden.

6. **Echte Fotos sind jetzt ein echter Vorteil.**  
   Franco-Foto, AC-Coil/AC-Duct/Mattress/Carpet-Bilder und WhatsApp-Review-Screenshots machen die Seite deutlich glaubwuerdiger als Stock-/SEO-Konkurrenz.

7. **Keine technischen Basiskatastrophen.**  
   Lokale Seite laedt, Title stimmt, keine Console-Errors/Warnungen, kein horizontaler Overflow auf Desktop 1280 px und Mobile 390 px.

## Kritische Schwachstellen

### 1. Claim-Hygiene ist der groesste Vertrauens- und Compliance-Risikopunkt

Die Research-Dateien sagen klar: keine unbelegten Superlative, keine harten Health-/Energy-/Certification-Claims ohne Nachweis. Aktuell stehen aber mehrere riskante Formulierungen auf der Seite:

- `Medical-grade equipment`
- `Certified technicians`
- `Certified Fabric & Mattress Sanitizing`
- `100% results guaranteed`
- `same-day available`
- `Dirty AC ducts force your system to work 30-60% harder`
- `2M+ Dust Mites Per Mattress`
- `Google Verified`, `60 verified reviews`
- `6,000+ Verified Clients`
- `mold & bacteria` an vielen Stellen

Ein Teil davon kann stimmen, aber die Seite muss beweisbarer werden. Besonders `100% results guaranteed`, `certified`, `verified`, `30-60%` und harte Mold/Bacteria-Aussagen sollten entweder belegt, entschärft oder sauber verlinkt werden.

### 2. Direct Hash / Landing-State UX ist nicht stabil genug

Bei direktem Aufruf von Hash-Zielen wie `#franco`, `#reviews`, `#pricing`, `#seasonal` und `#faq` landet der sichtbare Bereich auf Mobile/teilweise Desktop oft in der vorherigen Sektion oder mit viel Leerraum. Das ist problematisch fuer:

- interne Navigation
- Meta-/Instagram-Ads mit Section-Landing
- SEO-/AI-Search Deep Links
- Nutzer, die per Link direkt zu Reviews/Franco/FAQ geschickt werden

Die dynamische Navigation kann beim normalen Klick besser funktionieren, aber direkte URLs muessen ebenfalls sauber landen.

### 3. Zu viele gleichzeitige Reize auf Mobile

Auf Mobile konkurrieren:

- Sticky Header
- WhatsApp Button im Header
- Risk-Quiz-FAB
- Floating WhatsApp Button
- Section-CTAs
- Badge-Reihen

Das bringt Leben in die Seite, aber es ist nahe an "zu viel". Der Risk-FAB liegt haeufig ueber Content oder Bildern. Fuer Paid Traffic sollte klarer entschieden werden: je Landing-State entweder Risk Quiz oder WhatsApp dominant, nicht immer beide gleich stark.

### 4. Before/After-Proof ist stark, aber noch nicht glaubwuerdig genug beschriftet

Die Bilder sind echt und stark. Aber alle Karten nutzen noch generischen Kontext wie:

- `Dubai, UAE · 2025`

Das ist besser als nichts, aber fuer echten Proof nach Research-Standard fehlen:

- Service
- Stadtteil
- Property Type
- Monat/Jahr
- optional kurze Job-Notiz

Solange das fehlt, wirkt "Real job · photo documented" etwas weniger belastbar, weil der Kontext generisch bleibt.

### 5. Mobile Hero ist gut, aber nicht maximal conversion-effizient

Der mobile First View zeigt Hook, Subline, Franco-Video und Stats. Das ist emotional stark. Der primaere CTA sitzt aber erst nach Video/Stats knapp unterhalb oder ausserhalb des ersten Viewports. Fuer Meta-Traffic waere ein schneller sichtbarer WhatsApp-/Free-Inspection-CTA noch wichtiger.

### 6. Seite ist sehr lang und braucht Funnel-Priorisierung

Die Seite ist ca. 22.000 px hoch. Das ist fuer eine One-Page nicht verboten, aber der Nutzer wird stark gefuehrt. Aktuell wirkt sie wie eine komplette Sales Story plus mehrere Landingpages in einer Seite:

- Hero
- Reviews Bar
- Comparison
- Checklist
- Warning Signs
- Vent Check
- Quiz
- Why
- Solution
- Franco
- Services
- Before/After
- Booking
- Reviews
- Process
- Pricing
- CTA
- B2B
- Arabic
- Seasonal
- Areas
- FAQ

Das ist viel. Fuer Ads sollten spaeter kuerzere, intent-spezifische Landing States oder Service-Seiten entstehen.

### 7. Performance-Risiko durch Assets

Der wichtigste Einzelpunkt: `assets/ac-duct-cleaning-dubai-pro-aqua.mp4` ist ca. 22 MB. Das kann fuer Mobile Meta-Traffic und Core Web Vitals kritisch sein. Es gibt zwar ein Poster, aber vor Paid Scaling sollten LCP/INP/CLS und mobile Netzwerkbedingungen real getestet werden.

### 8. Arabic ist ein guter Anfang, aber noch kein echter Arabic Funnel

Die Arabic-Section ist sympathisch und visuell stark. Sie ersetzt aber keine echte arabische Landingpage mit RTL, `ar-AE`, eigener Copy, kulturellem Trust und arabischem WhatsApp-Flow.

### 9. Accessibility/Semantik hat kleinere Fehler

`aria-current="true"` wird auch fuer Seasonal Cards gesetzt. Dadurch tauchen bei Abfragen neben Nav-Links auch Seasonal Cards als "current" auf. Das ist fuer Screenreader nicht sauber. Besser waere ein anderes Attribut oder `aria-selected` in einem echten Tab-/Variant-Kontext.

### 10. MEMORY und aktueller Code sind nicht ganz synchron

`MEMORY.md` listet DED und Franco-Foto oben noch als offene TODOs, waehrend `index.html` DED No. `748159` und `assets/franco.webp` bereits enthaelt. Das Arbeitsgedaechtnis sollte bereinigt werden, sonst arbeiten Claude/Codex spaeter mit widerspruechlichem Stand.

## Psychologische Bewertung

### Hormozi Value Equation

**Dream Outcome:** Stark. Saubere Luft, sichere Familie, ruhiges Zuhause.  
**Perceived Likelihood:** Gut, aber nicht perfekt. 6.000+, 4.7, Franco, Fotos und Reviews helfen. Belege fehlen bei einigen harten Claims.  
**Time Delay:** Gut. 2-3 Stunden, same-day/next-day, free inspection. Aber "same-day" muss realistisch und ggf. abgeschwaecht bleiben.  
**Effort & Sacrifice:** Sehr gut. WhatsApp-first, Free Inspection, fixed quote, photos first.

**Score Hormozi: 8.0/10**

### Behavioral Science

**Loss Aversion:** Stark, aber teils zu scharf. Risiko wird klar gezeigt; harte Mold/Bacteria/Health-Claims sollten ruhiger werden.  
**Social Proof:** Stark, aber "verified" muss belegbar sein.  
**Authority:** Mittel. Franco ist stark, DED hilft, aber "certified/medical-grade" braucht Evidenz.  
**Choice Architecture:** Gut. Drei Servicepfade plus Quiz/WhatsApp.  
**Risk Reversal:** Sehr gut. Free inspection, fixed quote, photo proof, re-clean.

**Score Behavioral UX: 7.8/10**

### Seena-Rez / Pattern-Interrupt

Hero-Hook ist stark. Warning Signs und Vent Check sind ebenfalls gute Direct-Response-Mechaniken. Die Website darf aber nicht zu sehr nach "alles ist ein Hook" wirken. Die ruhigeren Proof-Abschnitte muessen deshalb noch belastbarer werden.

**Score Hook-System: 8.1/10**

## Priorisierte naechste Massnahmen

### P0 - vor Paid Scaling

1. **Claim-Hygiene bereinigen.**  
   Entschaerfen oder belegen: `100% results`, `certified`, `medical-grade`, `Google Verified`, `60 verified`, `30-60% harder`, `2M+`, harte Mold/Bacteria-Claims.

2. **Direkte Hash-/Landing-State-Ziele fixen.**  
   `#franco`, `#reviews`, `#pricing`, `#seasonal`, `#faq` muessen auf Desktop und Mobile direkt sauber im sichtbaren Bereich landen.

3. **FAB-Strategie Mobile klaeren.**  
   Risk-Quiz-FAB und WhatsApp-FAB duerfen nicht gleichzeitig permanent Content ueberdecken. Kontextgesteuert ausspielen: Risk-FAB frueh, WhatsApp-FAB spaeter oder kleiner.

4. **Before/After-Kontextdaten eintragen.**  
   Jede Karte braucht echte Area + Month/Year + Property Type. Keine Platzhalter.

5. **Tracking aktivieren.**  
   GA4 Measurement ID und Meta Pixel ID fehlen weiterhin. Ohne das bleiben CTA-/Quiz-/WhatsApp-Entscheidungen Bauchgefuehl.

### P1 - Design/Conversion Polish

1. Mobile Hero CTA hoeher ziehen oder Video/Stats minimal komprimieren.
2. Badge-Dichte reduzieren: weniger, dafuer staerkere Trust-Signale.
3. Review-Block ehrlicher formulieren, wenn "verified" nicht belegbar ist.
4. Arabic als echten Funnel planen: eigene Landingpage oder `?lang=ar`.
5. Seasonal Landing States auf Hero/CTA/WhatsApp-Prefill erweitern, nicht nur eigene Section.

### P2 - Skalierung

1. Service-Seiten bauen: AC duct, mattress, deep cleaning, villa, holiday home.
2. Hero-Video fuer Mobile optimieren: kleinere MP4/WebM-Varianten, lazy/conditional loading.
3. Google Business Profile / Review Loop / Proof Template operationalisieren.
4. A/B-Tests erst nach Tracking: CTA, Hero Proof Order, Quiz vs WhatsApp, Seasonal hero state.

## Finales Fazit

Die Website ist strategisch stark und deutlich ueber Marktdurchschnitt. Sie verkauft nicht nur Reinigung, sondern Vertrauen, Verantwortlichkeit und Risikoabsicherung. Das ist exakt der richtige psychologische Hebel fuer Dubai.

Aber sie ist noch nicht "perfekt". Die groessten aktuellen Risiken sind Glaubwuerdigkeit durch zu harte Claims, unsaubere direkte Section-Landings, mobile CTA-/FAB-Konkurrenz und fehlende echte Proof-Kontexte. Wenn diese Punkte bereinigt sind, kann die Seite realistisch in Richtung **8.5/10** gehen und wird deutlich besser fuer Meta-/Instagram-/Google-Traffic geeignet.

