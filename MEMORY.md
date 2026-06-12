# MEMORY.md — Gemeinsames Arbeitsgedächtnis (Claude ↔ Codex)

> **Pflicht für jeden KI-Assistenten (Claude, Codex, Copilot):**
> 1. Diese Datei **zu Beginn jeder Session lesen.**
> 2. Nach jedem abgeschlossenen Arbeitsschritt den Abschnitt "Arbeitslog" **ergänzen** (Datum, Wer, Was, Ergebnis, Nächster Schritt).
> 3. Niemals Einträge anderer löschen — nur ergänzen oder als überholt markieren.
> 4. Git-Regeln aus CLAUDE.md/AGENTS.md gelten immer: **niemals pushen**, nur lokal arbeiten.

## Projekt-Steckbrief

- **Firma:** Pro Aqua Disinfection & Sterilization LLC, Dubai, seit 2016. Inhaber: Franco (als Person auf der Website sichtbar).
- **Leistungen:** AC Duct Cleaning, Deep Cleaning, Mattress/Fabric Sanitizing.
- **Website:** Statische One-Page-Site, `index.html` (~3,2 MB, alles inline). Netlify-Deployment via `netlify.toml`. Repo: github.com/Proaqua/proaqua-website (nur lokal arbeiten!).
- **Social Proof:** 4,7★ Google, 1.277+ Kunden, 10+ Jahre Dubai.
- **Ziel:** Klare Marktpositionierung, mehr Anfragen/Conversions.

## Werkzeuge & Konventionen

- **Lokale Vorschau:** Doppelklick auf `lokale-vorschau.command` → Server auf http://localhost:8742 + öffnet Chrome. Nach Änderungen: ⌘R im Browser.
- **index.html editieren:** Gezielt mit Suchen/Ersetzen — NIE komplett neu generieren (3,2 MB!).
- **Analyse-Prompt:** `prompt-marketing-analyse.md` (für manuelle Nutzung in Codex).
- **Sprache mit Giampiero:** Deutsch.

## Offene Entscheidungen / TODOs (Giampiero)

- [ ] **Echte DED Trade License No.** liefern → ersetzt Platzhalter "0000000" in den Trust-Chips (2 Stellen in index.html)
- [ ] **DM-Approval bestätigen** — Chip "Dubai Municipality Approved" ist auf Zuruf eingebaut, Nachweis fehlt noch
- [ ] **Echtes Foto Franco** → ersetzt `assets/franco.jpg` (aktuell Dummy-Silhouette; einfach Datei austauschen, Code bleibt)
- [ ] **Ab-Preise prüfen:** AC Duct ab AED 400? Villa Deep Clean? Mattress AED 89? (TODO-Kommentare oben in index.html)
- [x] **Positionierungs-These FINAL (13.06.2026, mit Giampiero abgestimmt):** Persönlicher Spezialist (Franco als Gesicht) + Krankenhaus-Standard zum fairen Festpreis. B2B/Property als eigene Sektion, NICHT in der Hauptbotschaft. EN-Kurzform: "Hospital-grade cleaning at family-fair fixed prices. One team, one face you know — proof on every job."

## Arbeitslog

### 2026-06-13 — Codex — SVG-Console-Fehler und Mobile-Overflow beseitigt
- **Erledigt:** Ungültigen Logo-/Favicon-SVG-Pfad korrigiert (`...C33 17 22 5Z` → gültiger Abschluss mit explizitem Zielpunkt). Betroffen waren Favicon, Header-Logo und Footer-Logo.
- **Erledigt:** Die bisher bekannte 2px-Mobile-Überbreite in der Franco-Sektion behoben. Ursache war `.franco-photo-wrap` als Grid-Kind mit effektivem Überlauf; gelöst über `min-width:0`, `max-width:100%` und leicht kompaktere mobile Stat-Chips.
- **Verifikation:** Playwright auf `http://localhost:8742/`: Console 0 Errors / 0 Warnings. Mobile 390px: `scrollWidth=390`, kein Overflow. Desktop 1280px: `scrollWidth=1280`, kein Overflow.
- **Nächster Schritt:** Echte GA4 Measurement ID und Meta Pixel ID eintragen, sobald Giampiero sie liefert; alternativ S6 Vorher/Nachher-Captions mit Stadtteil+Monat, sobald echte Infos vorliegen.

### 2026-06-13 — Codex — Seasonal Campaign Layer + Lead-Tracking-Hooks umgesetzt
- **Erledigt:** `#seasonal` ist jetzt dynamisch kampagnenfaehig. Die Seite reagiert auf `?season=summer-ac`, `?season=sandstorm`, `?season=ramadan-eid`, `?season=back-to-school` sowie passende Werte in `utm_campaign`, `utm_content` oder `utm_term`.
- **Erledigt:** Seasonal-Headline, Copy, aktive Karte, CTA-Text und WhatsApp-Prefill werden je nach Kampagne automatisch angepasst. Ohne URL-Parameter wird ein saisonaler Fokus nach Monat gesetzt: Feb-Apr Sandstorm, Mai-Jul Summer AC, Aug-Sep Back-to-School. Ramadan/Eid bleibt bewusst URL-gesteuert, weil die Daten jedes Jahr wechseln.
- **Erledigt:** Globaler Lead-Tracking-Hook eingebaut. Klicks auf `wa.me`, `tel:` und `mailto:` senden `lead_click` in `dataLayer` und spaeter automatisch an `gtag`/`fbq`, sobald GA4 bzw. Meta Pixel vorhanden sind. Erfasste Felder: Channel, Website-Abschnitt, Linktext, Season, UTM-Quelle/-Medium/-Kampagne und Page Path.
- **Erledigt:** Neues Arbeitsdokument `seasonal-campaign-plan.md` erstellt mit Kampagnen-URLs, saisonalen Fenstern, Meta-/Instagram-Creative-Angles und Messpunkten.
- **Verifikation:** Playwright pruefte `?season=sandstorm...#seasonal` und `?utm_campaign=back_to_school_allergy_reset...#seasonal`. Headline, CTA, aktive Karte und `lead_click`-Payload korrekt. Mobile 390px: aktive Karte und CTA passen in den Viewport. Bestehende 2px Mobile-Überbreite und zwei SVG-Console-Errors unveraendert.
- **Nächster Schritt:** Echte GA4 Measurement ID und Meta Pixel ID von Giampiero eintragen, dann WhatsApp-Leads als Conversion in GA4/Meta konfigurieren.

### 2026-06-13 — Codex — IST-Analyse-Schwächen Arabic + Seasonality beseitigt
- **Erledigt:** Neue Sektion `#arabic` direkt vor den Areas ergänzt: arabische RTL-Kurzfassung für Villen-/Apartment-Reinigung, AC-Duct-Cleaning, Mattress/Fabric-Sanitizing, Free Inspection, Festpreis vor Start und Vorher/Nachher-Fotos.
- **Erledigt:** Arabischer WhatsApp-CTA mit arabischem Prefill eingebaut, damit Emiratis und arabische Expats ohne englische Hürde anfragen können.
- **Erledigt:** Neue Sektion `#seasonal` ergänzt: Summer AC Check, Sandstorm Reset, Ramadan & Eid sowie Back-to-School Allergy Reset als konkrete Dubai-Trigger.
- **Analyse aktualisiert:** `analyse-marketing.md` markiert die IST-Schwächen/Lücken jetzt als behoben bzw. teilweise behoben und verweist auf `#compare`, `#business`, `#arabic` und `#seasonal`.
- **Verifikation:** Lokale Vorschau `#arabic` und `#seasonal` mit Playwright geprüft. Desktop 1280px ohne Overflow; mobile Elemente passen innerhalb 390px. Bestehende 2px Mobile-Überbreite und zwei SVG-Console-Errors sind unverändert und gehören nicht zu diesem Schritt.
- **Nächster Schritt:** T2 Tracking: GA4 einbauen und Klick-Events auf alle `wa.me`-/`tel:`-Links ergänzen.

### 2026-06-13 — Codex — T1 Base64-Bilder ausgelagert
- **Erledigt:** Alle tatsächlich vorhandenen Base64-`<img>`-Bilder aus `index.html` ausgelagert. Analyse ergab 13 Base64-Bilder (nicht 16): Franco-Foto, Service-/Before-After-Bilder und 3 WhatsApp-Review-Screenshots.
- **Assets:** 13 WebP-Dateien in `assets/` erzeugt und `src`-Attribute gezielt ersetzt. Bestehende `loading="lazy"`-Attribute blieben erhalten; alle 13 WebP-Referenzen haben weiterhin Lazy Loading.
- **Ergebnis:** `index.html` von ca. 3,25 MB auf 154.167 Bytes reduziert und damit deutlich unter dem Ziel <500 KB initial.
- **Verifikation:** Keine Base64-`<img>`-Quellen mehr (`0`), 13 WebP-Referenzen, 13/13 Dateien lokal vorhanden. Lokaler Server liefert alle WebP-Dateien mit `200 image/webp`; Playwright prüfte sichtbare WebP-Bilder mit gültiger `naturalWidth`. Bestehende zwei SVG-Console-Errors bleiben unverändert und gehören nicht zu T1.
- **Nächster Schritt:** T2 Tracking: GA4 einbauen und Klick-Events auf alle `wa.me`-/`tel:`-Links ergänzen.

### 2026-06-13 — Codex — S3 B2B-Sektion umgesetzt
- **Erledigt:** Neue Sektion `#business` direkt vor `#areas` eingefügt: "For Property Managers, Holiday Homes & Offices".
- **Inhalt:** B2B/Property bleibt als eigene Sektion getrennt von der Hauptbotschaft. Zielgruppen-Karten für Property Managers, Holiday Homes und Offices plus dunkles Kontaktpanel für mehrere Einheiten/reguläre Planung.
- **CTA:** Eigener WhatsApp-Link "WhatsApp for Business Quote" mit Business-Prefill: Property/Holiday Home/Office, AC duct cleaning, deep cleaning, multiple units.
- **Verifikation:** Lokale Vorschau `http://localhost:8742/#business` mit Playwright geprüft. Desktop 1280px: kein Overflow, drei Karten in Reihe, nächster Abschnitt ist `#areas`. Mobile 390px: Karten und Panel stapeln sauber, CTA passt in den Viewport. Bestehende zwei SVG-Console-Errors bleiben unverändert und liegen nicht im neuen S3-Block.
- **Nächster Schritt:** T1 Bilder auslagern: 16 Base64-Bilder gezielt nach `assets/` als WebP auslagern, `loading="lazy"`, initiale HTML-Größe deutlich reduzieren. Vorsicht: `index.html` nie komplett neu generieren.

### 2026-06-13 — Codex — S1 Vergleichsblock + Hero-Claim umgesetzt
- **Erledigt:** Hero-Subline ergänzt: "Hospital-grade cleaning at family-fair fixed prices. One team, one face you know — proof on every job."
- **Erledigt:** Neuer Vergleichsblock `#compare` direkt nach Hero/Trust-Belt und vor dem Quiz eingebaut: 3 Spalten "Booking Apps / Pro Aqua Dubai / Premium Services" ohne Konkurrenznamen.
- **Positionierung:** Pro-Aqua-Spalte betont Franco/gleiches Team, AC-Duct-/Mattress-/Fabric-Spezialisierung, fairen Festpreis vor Start, Vorher/Nachher-Fotos und Free-Re-clean-Garantie. Keine neue konkrete Ab-Preis-Zahl eingebaut, weil Preise noch von Giampiero zu prüfen sind.
- **Verifikation:** Lokale Vorschau `http://localhost:8742/#compare` mit Playwright geprüft. Desktop 1280px: 3 gleich breite Spalten, kein Overflow. Mobile 390px: Karten stapeln, Pro Aqua erscheint zuerst, Kartenbreite 358px mit Seitenabstand. In-App-Browser war nicht verfügbar, deshalb Playwright-Fallback genutzt. Bestehende Console-Errors in SVG-Paths (nicht S1) bleiben unverändert.
- **Hinweis:** Globale 2px Mobile-Überbreite kommt laut Prüfung aus bestehenden Trust-Belt/Franco-Elementen, nicht aus dem neuen Vergleichsblock; nicht im S1-Schritt geändert.
**Nächster Schritt:** S3 B2B-Sektion "For Property Managers, Holiday Homes & Offices" mit eigenem WhatsApp-CTA (Business-Prefill) vor dem Areas-Abschnitt.

### 2026-06-13 (später) — Claude (Cowork) — Quick Wins umgesetzt
Commit `82991d9` (lokal, NICHT gepusht). Änderungen in index.html:
- **Q1:** Typo "AC Duct Conduct Cleaning" → "AC Duct Deep Cleaning" (+ alt-Text)
- **Q2:** Beide `fc-av`-Initialen-Avatare → `<img src="assets/franco.jpg">` mit onerror-Fallback auf "Fr". Dummy-Bild liegt in assets/ — echtes Foto einfach Datei ersetzen.
- **Q3:** Hero "Dubai's #1 Choice." → "Trusted by 1,277+ Families."; Trust-Chip "#1 Choice" (2×) → "Dubai Municipality Approved"
- **Q4:** Chip "Licensed & Insured Dubai" (2×) → "Licensed & Insured · DED Trade License No. 0000000" (PLATZHALTER!)
- **Q6:** Review "20+ years" gekürzt (Widerspruch zu since 2016)
- **Q7:** 87%-Karte → "12mo / Is All It Takes" (unbelegte Statistik entschärft)
- **Q8:** Zahlung (FAQ sichtbar + JSON-LD): "card payment, cash and bank transfer"
- **T3:** `og-image.jpg` (1200×630) generiert, liegt im Root — Meta-Tag zeigte schon dorthin
- 3 TODO-HTML-Kommentare oben in index.html (Preise, License, Foto)
- Browser-Check auf localhost:8742: Hero + Foto-Platzhalter rendern korrekt.
**Nächste Schritte (Reihenfolge laut Plan, für Claude ODER Codex):**
1. **S1 Vergleichs-Block** above-the-fold-nah: 3 Spalten "Booking Apps / Premium Services / Pro Aqua" (ohne Konkurrenznamen), Pro-Aqua-Spalte = finale Positionierung (siehe oben). Kurzform-Claim "Hospital-grade cleaning at family-fair fixed prices..." als Subline im Hero einbauen.
2. **S3 B2B-Sektion** "For Property Managers, Holiday Homes & Offices" mit eigenem WhatsApp-CTA (Prefill-Text business), vor dem Areas-Abschnitt.
3. **T1 Bilder auslagern:** 16 Base64-Bilder → WebP in assets/, loading="lazy", Ziel <500 KB initial (3,2 MB aktuell). Vorsicht: gezielt arbeiten, Datei nie komplett neu generieren.
4. **T2 Tracking:** GA4 + Klick-Events auf alle wa.me/tel-Links.
5. **S6:** Vorher/Nachher-Captions um Stadtteil+Monat ergänzen (Infos von Giampiero nötig).

### 2026-06-13 — Claude (Cowork)
- Repo von GitHub geklont → lokal auf Desktop/Proaqua-website. Branch `main`, sauber.
- CLAUDE.md + AGENTS.md mit Git-Regeln angelegt (niemals pushen, nur lokal).
- Projekt in VS Code geöffnet.
- `lokale-vorschau.command` erstellt (lokaler Server Port 8742), funktioniert, Seite lädt in Chrome.
- `prompt-marketing-analyse.md` erstellt.
- Marketing-/Konkurrenz-Analyse abgeschlossen → **Bericht: `analyse-marketing.md`** (Bewertungen, Positionierungs-These, Maßnahmen Q1–Q8/S1–S7/T1–T3, Umsetzungsplan).
- Verifiziert gegen index.html: Tippfehler "Conduct Cleaning" (1×, in Before/After-Galerie), KEIN Analytics/Tracking vorhanden, `og-image.jpg` fehlt (assets/ enthält nur mp4 + placeholder), WhatsApp-Prefill-Links existieren bereits.
- Marktdaten: ServiceMarket AC ab AED 180/Unit & Duct ab ~550; Saniservice Premium AED 2.500–3.200+ (NADCA); Markt-Mitte AED 750–1.200. Lücke für Pro Aqua: persönlicher Spezialist, Festpreis AED 400–1.500.
- **Nächster Schritt:** Giampiero gibt Positionierungs-These + Prioritäten frei (offene Fragen am Ende von analyse-marketing.md: Lizenz-Nr., Fotos von Franco, Ab-Preise, Kartenzahlung). Danach Quick Wins Q1–Q5 + T3 in index.html umsetzen (gezielt per Suchen/Ersetzen, lokal committen, NICHT pushen).
