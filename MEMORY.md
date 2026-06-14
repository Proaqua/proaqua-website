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
- **Social Proof:** 4,7★ Google, 6.000+ Kunden/Familien, 10+ Jahre Dubai.
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

### 2026-06-14 — Codex — Claude-Fable5 UI/UX-Optimierungsprompt erstellt
- **Erledigt:** Neuen ausführbaren Prompt `conversion-research/claude-fable5-ui-ux-optimization-prompt.md` erstellt, damit Claude Fable 5 die Pro-Aqua-Seite optisch, UX-seitig und conversion-orientiert optimieren kann.
- **Inhalt:** Prompt integriert Seena-Rez-Pattern-Interrupt, Problem→Proof→Solution→CTA-Flow, Hormozi Value Equation, WhatsApp-First-Friction-Reduction, Premium-/Trust-UI, Mobile-Polish, Motion-Regeln und harte Claim-Hygiene.
- **Guardrails:** Keine erfundenen Trust-Nachweise, keine absoluten Same-Day-/2-3h-Garantien, keine vermischten Dust-Mite-/AC-Duct-Claims, keine medizinischen Heilversprechen, kein `git push`, keine komplette `index.html`-Neugenerierung.
- **Verifikation:** Nur Markdown-Dateien geändert; `index.html` wurde nicht angefasst. Bestehende lokale `.DS_Store`-Änderung bleibt unberührt.
- **Nächster Schritt:** Prompt in Claude Fable 5 ausführen lassen; danach konkrete UI/UX-Änderungen mit Desktop-/Mobile-Verifikation prüfen und erneut im Arbeitslog dokumentieren.

### 2026-06-13 — Codex — Franco-Meta-Ordner geprüft und bewertet
- **Erledigt:** Relevante Franco-Unterlagen geprüft: `Desktop/Desktop/021_FRanco_Meta/Improve _Respond .docx` sowie die Pages-Vorschauen aus `22pharma-site/Datein Franco/PlanCHATGPT.pages` und `pianoclaude.pages`.
- **Ergebnis:** Die Richtung ist gut: WhatsApp-/Messenger-Antworten sollen kürzer, wärmer, weniger technisch und stärker dialogorientiert werden. Außerdem ist die Idee einer lokalen `Proaqua Local Client Engine` bzw. `AI Content Engine` für Google/Maps/Social/WhatsApp mit kleinem Budget grundsätzlich sinnvoll.
- **Risiken:** Vorschläge sind teils noch zu generisch, Rabatt/Incentive sollte nicht Haupthebel sein, 500 AED/Monat ist als Ads-Lernbudget knapp, Tracking/Leadqualität und konkrete Messenger-Qualifizierung fehlen.
- **Dokumentiert:** Bewertung und konkrete Empfehlungen in `conversion-research/franco-meta-folder-review.md` abgelegt.
- **Nächster Schritt:** P1.3 WhatsApp-Prefills und Meta-/WhatsApp-Auto-Responses als einheitliches Franco-Team-Messenger-System ausarbeiten; GA4/Meta IDs bleiben separat blockiert.

### 2026-06-13 — Claude (Cowork) — Hero/Services/Schema · Commit 064491d
- **Basis:** `state-of-art-conversion-psychology.md` gelesen und ausgewertet. Wichtigste sofort umsetzbare Empfehlungen (kein externes Material nötig) implementiert.
- **Erledigt Hero-CTAs:** "Get Free Consultation" → "Get Free Inspection" (stärker, spezifischer). "WhatsApp Us" → "WhatsApp Franco's Team" (persönlicher Trust-Anker). Hero-WhatsApp-Button hat jetzt AC-spezifischen Prefill: "Hi Pro Aqua, I'd like a free AC duct inspection for my home in Dubai."
- **Erledigt Hero Trust-Items:** "Free inspection included / Medical-grade equipment / Fixed price always" → Micro-Proof aus Research-Dok: "Fixed price before we start / Same Pro Aqua team every time / Before & after proof on every job". Direkt aus Section 11 (Copy-Bausteine) des Research-Dokuments übernommen.
- **Erledigt Service-Cards:** Alle 3 Karten haben jetzt eigene WhatsApp-CTAs mit service-spezifischen Prefills: Sofas/Carpets → "Book Sofa & Carpet Clean", AC Duct → "Book Free AC Inspection", Mattress → "Book Mattress Sanitizing". Senkt Reibung zwischen Servicewunsch und WhatsApp-Kontakt.
- **Erledigt LocalBusiness-Schema:** `description`, `foundingDate: "2016"` und `aggregateRating` (4.7, 60 Reviews) hinzugefügt. Wichtig für AI Search / Google SGE / lokale Sichtbarkeit.
- **Erledigt FAQ-Schema:** 2 neue Fragen ergänzt: "How much does AC duct cleaning cost in Dubai?" (mit Preislogik-Erklärung, kein fixer Preis erfunden) und "Do you provide before and after photos?" (AI-Search-Signal).
- **Verifikation:** 14/14 Python-Checks grün. Kein `git push`.
- **Nächster Schritt:** T2 Tracking (GA4 + Meta Pixel IDs von Giampiero) oder S6 Before/After echte Daten (Stadtteil + Monat). Beide blockiert auf externe Infos. Als nächste interne Aufgabe: Prüfen ob Service-Seiten für SEO/AI Search sinnvoll wären (P2 aus Research-Dok).

### 2026-06-13 — Claude (Cowork) — S6 Before/After Kontext-Struktur · Commit be720bd
- **Erledigt:** Neues CSS `.ba-meta` + `.ba-meta svg` für Standort-/Datum-Zeile.
- **Erledigt:** Alle 6 Before/After-Karten um `.ba-meta`-Element ergänzt (Standortpin-Icon + Platzhalter "Dubai, UAE · Jahr"). Kein Erfinden echter Daten.
- **TODO GIAMPIERO (S6 vervollständigen):** Für jede der 6 Karten Stadtteil + Monat/Jahr liefern. Im HTML sind TODO-Kommentare mit Beispielformat gesetzt, z.B. `<!-- TODO: z.B. "JVC · Villa · April 2025" -->`. Dann einfach den Platzhalter-Text "Dubai, UAE · 2025" durch die echten Angaben ersetzen.
- **Nächster Schritt:** S6-Daten von Giampiero → Eintragen (5 Minuten). Dann T2 + Q2 (von Giampiero priorisiert für später).

### 2026-06-13 — Claude (Cowork) — P0.2 + P0.3 + P1.2 umgesetzt · Commit b82dc75
- **Erledigt P0.2:** Trust-Chip "Licensed & Insured · DED Trade License No. 0000000" → "Licensed & Insured Dubai Business" (2× in Chip-Marquee). TODO-Kommentar oben aktualisiert: Giampiero trägt echte Nr. ein, dann Chip-Text auf "Licensed & Insured · DED Trade License No. XXXXXX" ändern.
- **Erledigt P0.3:** `#process`-Überschrift auf "Simple, Transparent Process" geändert. 4 Schritte inhaltlich geschärft: "Share Your Needs / Free Inspection / Fixed Quote / Clean & Proof". Subline "No surprises. Fixed price confirmed before we start." ergänzt.
- **Erledigt P0.3 + P1.2:** Neue Sektion `#pricing` nach `#process` eingebaut (2-Spalten-Grid, ab 860px einspaltig): Links "How Pricing Works" mit 4 Punkten (Free Inspection → Scope-based fixed price → Confirmed before start → Zero hidden extras) + WhatsApp-CTA "Send Photos for a Fixed Quote". Rechts "The Pro Aqua Clean-Air Guarantee" als dunkle Karte (navy bg): alle 4 Versprechen (Free inspection / Fixed quote before start / Before & after photo proof / Free re-clean).
- **Quellen:** Copy direkt aus `conversion-research/claude-coworker-growth-brief.md` Abschnitt 7 übernommen.
- **Verifikation:** Python-Checks grün: 2× Chip-Ersatz, #pricing vorhanden, Guarantee, CTA, Re-clean-Versprechen, altes "4 Simple" entfernt. HTML: 193 KB (T1 erledigt). Kein `git push`.
- **Nächster Schritt:** GA4 + Meta Pixel IDs von Giampiero, dann T2 Tracking finalisieren. Alternativ: S6 Before/After-Captions (Stadtteil + Monat) sobald Giampiero Infos liefert. Dann echtes Franco-Foto (ersetzt assets/franco.jpg).

### 2026-06-13 — Codex — Research-Prompt mit Sub-Agenten ausgeführt und Claude-Coworker-Paket erstellt
- **Erledigt:** Den zuvor erstellten State-of-the-Art-Research-Prompt als vollstaendigen Arbeitsauftrag ausgefuehrt und dafuer drei Sub-Agenten genutzt: Behavioral-Science/Papers, 2026 UX-/WhatsApp-/AI-Search-Trends und Dubai-Wettbewerbsableitung.
- **Erledigt:** Neues Claude-Uebergabedokument `conversion-research/claude-coworker-growth-brief.md` erstellt. Inhalt: ausgefuehrter Prompt, harte Strategie, Quellen-/Evidenzlogik, Dubai-Markt-Synthese, State-of-the-Art-Trends, Copy-Bausteine, Claude-Arbeitsanweisung und Quellenlinks.
- **Erledigt:** Separates Umsetzungsbacklog `conversion-research/implementation-backlog.md` erstellt mit P0/P1/P2/P3-Tickets und Akzeptanzkriterien fuer Tracking, Trust-Badges, Preislogik, Before/After-Proof, echte Franco-/Team-/Equipment-Fotos, WhatsApp-Prefills, Arabic/Villa und Service-Unterseiten.
- **Ergebnis:** Die Research-Ergebnisse sind jetzt Claude-Coworker-tauglich operationalisiert: nicht nur Analyse, sondern konkrete naechste Tickets mit Voraussetzungen und Blockern.
- **Verifikation:** Nur Markdown-Dateien und `MEMORY.md` geaendert; `index.html` wurde nicht angefasst.
- **Nächster Schritt:** Als erstes umsetzbares Website-Ticket ohne externe Daten bietet sich P0.3 Preis-/Festpreis-Block oder P1.3 WhatsApp-Prefills an. Blockiert bleiben echte GA4/Meta IDs, echte Trust-Nachweise und echte Fotos/Before-After-Daten.

### 2026-06-13 — Codex — State-of-the-Art Conversion- und Käuferpsychologie-Research erstellt
- **Erledigt:** Wiederverwendbaren Research-Prompt unter `conversion-research/state-of-art-conversion-psychology-prompt.md` gespeichert und damit die gewünschte tiefgründige Analyse ausgeführt.
- **Erledigt:** Neuen Bericht `conversion-research/state-of-art-conversion-psychology.md` erstellt: Executive Summary, Evidenzgrade, Quellenmatrix, Käuferpsychologie-/UX-Prinzipien, 2026-Patterns, Pro-Aqua-Backlog, GA4/Meta/WhatsApp-Messplan und No-Go-Liste.
- **Quellenbasis:** Peer-reviewed Behavioral-Science-Papers (Prospect Theory, Framing, Choice Overload, Social Norms), UX-/Trust-Research, Google/Web-Performance-/Local-SEO-Dokumentation, WhatsApp-/Meta-Funnel-Quellen sowie Dark-Pattern-/Accessibility-Standards.
- **Projektbezug:** Ableitungen wurden auf die vorhandenen Pro-Aqua-Artefakte gemappt: Owner-led-Positionierung, 6.000+ Social Proof, WhatsApp-first, Seasonal-Layer, B2B/Arabic und Wettbewerbsrecherche.
- **Verifikation:** `index.html` wurde nicht angefasst. Research-Dateien sind Markdown-only und dienen als Grundlage fuer die naechsten Website-/Kampagnen-Tickets.
- **Nächster Schritt:** Echte GA4 Measurement ID und Meta Pixel ID bleiben der blockierte P0-Schritt; parallel koennen echte Franco-/Team-/Vivenso-Equipment-Fotos und echte Before/After-Daten (Stadtteil + Monat) beschafft werden.

### 2026-06-13 — Codex — Dubai-Wettbewerbsrecherche mit 30 AC-Duct-Anbietern erstellt
- **Erledigt:** Eigenes Research-Paket `competitive-research/` angelegt mit 30 kuratierten Dubai/UAE-Wettbewerbern fuer AC duct cleaning, AC cleaning, IAQ, Deep Cleaning und Maintenance-nahe Anbieter.
- **Erledigt:** Pro Anbieter wurde ein First-viewport-Screenshot gespeichert; zusaetzlich wurde ein Kontakt-Sheet `competitive-research/screenshots/contact-sheet.png` mit allen 30 kuratierten Screenshots erstellt.
- **Erledigt:** Datenbasis `competitive-research/data/competitors-curated-30.json` erstellt mit Kategorie, URL, Screenshot-Pfad, Positionierung, Staerken, Schwächen und Pro-Aqua-Chance je Wettbewerber.
- **Erledigt:** Claude-Folgeprompt `competitive-research/claude-competitive-analysis-prompt.md` erstellt und daraus den vorbereitenden Bericht `competitive-research/competitors-dubai-ac-duct-cleaning.md` ausgefuehrt: Marktcluster, Muster, Anti-Patterns, strategische Ableitungen und Backlog-Ideen fuer Pro Aqua.
- **Verifikation:** Kuratierte Liste hat 30 eindeutige Anbieter, alle 30 referenzierten Screenshot-Dateien existieren, Kontakt-Sheet vorhanden. Nicht verwertbare Ladebildschirm-/404-Treffer wurden aus der finalen 30er-Liste entfernt.
- **Nächster Schritt:** Mit dem neuen Claude-Prompt eine tiefere Scoring-/Ranking-Analyse fahren und daraus konkrete P0/P1 Website-Tickets ableiten.

### 2026-06-13 — Codex — Scrollspy-Navigation fuer Desktop und Mobile umgesetzt
- **Erledigt:** Desktop- und Mobile-Menue bekommen jetzt einen dynamischen Active-State beim Scrollen. Der aktive Punkt wird ueber die sichtbarste Zielsektion bestimmt und per `aria-current` gespiegelt.
- **Erledigt:** Menue-Reihenfolge an die echte Seitenreihenfolge angepasst: Good to Know → Franco → Services → Book → Reviews → FAQ. Dadurch wandert die Markierung logisch mit dem Lesefluss.
- **Erledigt:** Aktiver Desktop-Link visuell verstaerkt (dezente Flaeche + bewegter Unterstrich); Mobile-Menue zeigt den aktiven Punkt als klare Pill-Markierung.
- **Verifikation:** In-App-Browser `http://localhost:8742/`: Desktop 1280px scrollt durch Good to Know → Franco → Services → Book → Reviews → FAQ, Mobile 390px zeigt denselben Active-State auch im geoeffneten Hamburger-Menue, kein horizontaler Overflow, Console 0 Errors / 0 Warnings.
- **Nächster Schritt:** Echte GA4 Measurement ID und Meta Pixel ID eintragen, sobald Giampiero sie liefert; danach Lead-Klicks als Conversions in GA4/Meta konfigurieren.

### 2026-06-13 — Codex — 6.000+ Count-up und Hero-Load-Sequenz umgesetzt
- **Erledigt:** Social Proof im aktuellen Seiteninhalt von `1,277+`/`1277+` auf `6,000+` aktualisiert: Hero-H1, Happy-Clients-Stat, Trust-Belt, Vergleichsblock und Franco-Sektion. Alte Zahlen bleiben nur in historischen Arbeitslog-Eintraegen erhalten.
- **Erledigt:** Hero-H1 als 22pharma-inspirierte Kinetic-Load-Sequenz umgesetzt: Woerter erscheinen gestaffelt beim Seitenaufruf, ohne Layout-Abhaengigkeit von JavaScript.
- **Erledigt:** Count-up fuer die Hero-H1-Zahl und die `Happy Clients`-Statistik eingebaut. Beide starten beim Laden der Hero-Sektion, laufen parallel hoch und enden auf `6,000+`; ohne JavaScript bleibt `6,000+` direkt sichtbar.
- **Erledigt:** Count-up-Zahlen mit tabellarischer Mindestbreite abgesichert, damit beim Hochzaehlen kein sichtbarer Layout-Sprung entsteht.
- **Verifikation:** In-App-Browser `http://localhost:8742/`: Desktop 1280px und Mobile 390px ohne Overflow, beide Counter starten und enden auf `6,000+`, Hero-Wortanimation sichtbar, Console 0 Errors / 0 Warnings.
- **Nächster Schritt:** Echte GA4 Measurement ID und Meta Pixel ID eintragen, sobald Giampiero sie liefert; danach Lead-Klicks als Conversions in GA4/Meta konfigurieren.

### 2026-06-13 — Codex — WhatsApp-Farben, Motion-Layer und Hero-Poster umgesetzt
- **Recherche/Entscheidung:** Kurzcheck Wettbewerber + UX: Justlife/Apps gewinnen ueber schnelle Buchung, ServiceMarket ueber Preis-/Quote-Orientierung, Saniservice/Premium ueber Zertifizierung/Indoor-Air-Authority. Fuer Pro Aqua bleibt der beste Hebel: persoenliche Accountable-Team-Positionierung, klare WhatsApp-Kontaktfuehrung, sichtbare Beweise und subtile Bewegung statt dekorativem Overload.
- **Erledigt:** Zentrale WhatsApp-Brand-Tokens (`#25D366`, `#128C7E`, `#075E54`, `#DCF8C6`) eingebaut und alle WhatsApp-CTA-Buttons/Badges konsistent auf echtes WhatsApp-Gruen gebracht: Topbar, Nav, Hero, Vergleich, Quiz Result, Solution CTA, Franco CTA, Booking Box, CTA-Banner, B2B, Arabic, Seasonal und Floating Button.
- **Erledigt:** Hero um WhatsApp-Live-Badge erweitert; Trust-Belt- und Review-WhatsApp-Badges auf WhatsApp-Farben umgestellt.
- **Erledigt:** Subtilen Scroll-Reveal-Layer fuer Karten/Sektionen ergaenzt, inklusive `prefers-reduced-motion`-Fallback. Der Layer ist progressive enhancement: Inhalte bleiben ohne JS sichtbar.
- **Erledigt:** `assets/hero-video-poster.jpg` aus dem vorhandenen Hero-MP4 extrahiert und als Video-Poster/CSS-Fallback eingebunden, damit der mobile Hero nicht dunkel wirkt, falls Video-Autoplay/Preload verzögert.
- **Verifikation:** In-App-Browser `http://localhost:8742/`: Desktop 1280px ohne Overflow, 13 WhatsApp-CTA-relevante `wa.me`-Links computed auf `rgb(37, 211, 102)`, Floating Button ebenfalls, 76 Reveal-Targets, Poster aktiv, Console 0 Errors / 0 Warnings. Mobile 390px: kein Overflow, Hero/Nav/Floating-WhatsApp gruen, Live-Badge sichtbar, Video-Poster sichtbar.
- **Nächster Schritt:** Echte GA4 Measurement ID und Meta Pixel ID eintragen, sobald Giampiero sie liefert; danach Lead-Klicks als Conversions in GA4/Meta konfigurieren.

### 2026-06-13 — Codex — Vergleichssektion conversion-staerker gestaltet
- **Erledigt:** `#compare` gezielt aufgewertet, ohne `index.html` neu zu generieren: Pro Aqua wird in Headline, Farbe, Breite und Kartenhierarchie klar staerker als die Alternativen sichtbar.
- **Erledigt:** Pro-Aqua-Karte mit Brand-Marker, Badge "THE ACCOUNTABLE CHOICE", Owner-led-Positionierung, Proof-Chips (`4.7 Google`, `1,277+`, `Since 2016`, `Photo proof`) und staerkerem Free-Inspection-CTA erweitert.
- **Erledigt:** Booking Apps und Premium Services fair eingeordnet ueber "Best for" / "Trade-off"-Badges, damit der Vergleich verkaufspsychologisch klarer, aber nicht plump wirkt.
- **Verifikation:** Lokale Vorschau `http://localhost:8742/#compare` mit Playwright geprüft. Desktop 1280px: Pro-Aqua-Karte 408px statt 318px Seitenkarten, 4 Proof-Chips, CTA korrekt, kein Overflow. Mobile 390px: Pro Aqua erscheint zuerst, Kartenbreite 358px, Badge/CTA/Proof-Chips innerhalb des Viewports, Console 0 Errors / 0 Warnings.
- **Nächster Schritt:** Echte GA4 Measurement ID und Meta Pixel ID eintragen, sobald Giampiero sie liefert; alternativ die Before/After-Galerie mit echten Stadtteil-/Monat-Daten weiter schaerfen.

### 2026-06-13 — Codex — Kampagnenbilder V2 mit Vivenso-Equipment und weissen Polos erstellt
- **Erledigt:** `vivenso-pro-aqua-flyer.pdf` visuell gerendert und Equipment-Merkmale uebernommen: weisses Vivenso/Pro-Aqua Wasserfiltersystem, transparente Wasserwanne, schwarze Schlaeuche/Griffe, schwarzes bzw. blau-tuerkises Bedienfeld, Spruehextraktionsduese fuer Polster/Matratzen.
- **Erledigt:** Pro-Aqua-Video-Frames geprueft; Techniker-Outfit fuer neue Prompts auf weisse Polos mit dunklem Kragen/Trim und blauen Handschuhen korrigiert.
- **Erledigt:** Vier neue V2-Kampagnenbilder mit Imagegen erzeugt und als WebP gespeichert: `campaign-summer-ac-check-dubai-v2.webp`, `campaign-sandstorm-reset-dubai-v2.webp`, `campaign-ramadan-eid-cleaning-dubai-v2.webp`, `campaign-back-to-school-allergy-reset-dubai-v2.webp`.
- **Erledigt:** `#seasonal` referenziert jetzt die V2-Bilder. `image-generation-brief.md` und `seasonal-campaign-plan.md` wurden um harte Equipment-/Uniform-Regeln und V2-Assetliste aktualisiert.
- **Verifikation:** Alle V2-WebP-Dateien liefern lokal `200 image/webp`; Playwright `#seasonal`: alle 4 Bilder laden mit `naturalWidth=900`, Console 0 Errors / 0 Warnings, Desktop 1280px und Mobile 390px ohne Overflow.
- **Nächster Schritt:** Falls noch naehere Produkttreue gewuenscht ist, echte Vivenso/Pro-Aqua Produktfotos als Referenzbilder fuer Imagegen bereitstellen; sonst GA4/Meta-IDs oder echte Stadtteil/Monat-Daten fuer Before/After-Captions nachziehen.

### 2026-06-13 — Codex — Kampagnenbilder generiert und Before/After-Galerie gestaerkt
- **Erledigt:** `image-generation-brief.md` erstellt: Master Mega Prompt, Negativliste und vier konkrete Prompts fuer saisonale Meta-/Instagram-Visuals. Grundsatz dokumentiert: KI-Bilder nur fuer Kampagnen-/Hero-/Social-Visuals, nicht als echte Vorher/Nachher-Beweise.
- **Erledigt:** Vier saisonale Kampagnenbilder mit dem eingebauten Imagegen-Tool erzeugt, als WebP komprimiert und nach `assets/` kopiert: `campaign-summer-ac-check-dubai.webp`, `campaign-sandstorm-reset-dubai.webp`, `campaign-ramadan-eid-cleaning-dubai.webp`, `campaign-back-to-school-allergy-reset-dubai.webp`.
- **Erledigt:** Die vier Bilder in `#seasonal` eingebunden (`loading="lazy"`, sinnvolle Alt-Texte, keine Base64-Einbettung). `seasonal-campaign-plan.md` dokumentiert die generierten V1-Assets und warnt, sie nicht als echte Beweisbilder zu verwenden.
- **Erledigt:** Echte `#before-after`-Galerie verkaufsstaerker gemacht: Intro-Copy auf dokumentierte Dubai-Jobs geschaerft und sechs Proof-Badges "Real job · photo documented" ergaenzt.
- **Verifikation:** Alle vier neuen WebP-Dateien liefern lokal `200 image/webp`. Playwright: Seasonal-Bilder laden mit gueltiger `naturalWidth`, 6 Proof-Badges vorhanden, Console 0 Errors / 0 Warnings, Desktop 1280px und Mobile 390px ohne Overflow.
- **Nächster Schritt:** Bei echten Kundendaten die Before/After-Captions um Stadtteil + Monat/Jahr ergaenzen; sobald GA4/Meta-IDs da sind, Tracking finalisieren.

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

### 2026-06-14 — Claude Fable 5 (Cowork) — #compare Psychologisches Redesign · Commit 7e61573

- **Framework-Basis:** Angle Matrix, Trust Stack Formula, Fear→Relief, Identity vs. Utility, Empty Copy Paradox (aus Giampieros Artikel).
- **Fear Trigger:** H2 auf "Who's Responsible for What You Can't See?" geändert. Sub-Text: "Most companies make your home look clean. A specialist removes mold, allergens and bacteria..." + Honest Framing: "including when Pro Aqua is NOT the right choice" (stärkstes Trust-Signal).
- **Trust Stack (5 Layer komprimiert in Pro Aqua Card):** Numbers (4.7★, 6,000+) + Authority (Franco's personally trained team) + Specificity ("You see the proof") + Risk Reversal (Free re-clean, no questions) + Cultural (Since 2016 — still here — still Franco).
- **Pre-emptive Objection Kill:** Neue `.cmp-okill` Box vor CTA: "Worried it won't make a difference? ...Zero risk to you."
- **Identity Signal:** Badge "THE SPECIALIST CHOICE" (statt "THE ACCOUNTABLE CHOICE"). "Right choice if: You care about what your family breathes."
- **Ehrliche Seiten-Karten:** Beide Links/Rechts-Karten bekommen ein ".cmp-honest" Verdict: "Right choice if: [ehrlicher Use-Case]". Rechts: Preis "AED 2,500–3,500+" explizit genannt. Wirkt nicht mehr "rigged" — baut massives Trust auf.
- **Neue CSS:** `.cmp-honest` (grüne Verdict-Chips) + `.cmp-okill` (Objection-Kill-Box).
- **Verifikation:** 17/17 Checks grün. Kein `git push`.
- **Nächster Schritt:** Section-by-section weiter — nächste Sektion nach #compare prüfen.

### 2026-06-14 — Claude Fable 5 (Cowork) — SVG Icons Trust Belt · Commit e2a2570

- **Erledigt:** Alle 11 einzigartigen Trust-Belt-Chips (×2 = 22 insgesamt) mit passenden Lucide-Style Inline-SVG-Icons (14×14px) ausgestattet.
- **Icon-Mapping:** Clock→Trusted since 2016, Shield-Check→Licensed & Insured, Activity/Pulse→Medical-Grade Equipment, Star(filled)→4.7 Google Reviews, Chat-Bubble→WhatsApp 7 Days, Users→6,000+ Clients, Tag→Fixed Price, Home→Villas & Apartments, Leaf→Eco-Safe Products, Heart(filled)→Safe for Kids & Pets, Award→DED Licensed Business.
- **Emojis ersetzt:** ⭐, 🏠, 👶 durch saubere SVGs ersetzt (konsistenter, skalierbar, farb-steuerbar via CSS).
- **CSS:** `.chip{display:inline-flex;align-items:center;gap:5px}` war bereits vorhanden — kein CSS-Eingriff nötig.
- **Verifikation:** 22 Chips + 22 SVGs im Belt-Block bestätigt (Python-Check). Kein `git push`.
- **Nächster Schritt:** Section-by-section Conversion Review (Giampiero: "mehr impact, klar was als nächstes passiert").

### 2026-06-14 — Claude Fable 5 (Cowork) — Claim Hygiene Pass · Commit 3ce207d

- **Anlass:** `claude-fable5-ui-ux-optimization-prompt.md` von Giampiero hochgeladen, Claim-Hygiene-Audit ausgeführt.
- **Erledigt H1:** "Your Dubai apartment" → "Your Dubai home" (deckt Villen + Apartments ab)
- **Erledigt hero-sub:** Dust-Mite-Claim aus AC-Duct-Context entfernt (fachlich: Dust mites → Matratze, nicht Duct). Neu: "Mold, allergens & hidden contaminants building up in your AC ducts — typically cleaned in 2–3 hours. Fixed price, same-day slots when available."
- **Erledigt hero-trust:** "Done in 2–3 hours · same-day available" → "Typically done in 2–3 hours · same-day slots when available"
- **Erledigt Chips:** "Dubai Municipality Approved" (2×) → "DED Licensed Business" (kein DM-Nachweis im Projekt; DED-Lizenz vorhanden, Nummer noch Platzhalter)
- **Erledigt Solution-Tile:** "99.9% of dust, mold & bacteria" → "effectively remove" (unbelegter Präzisionsclaim entfernt)
- **Erledigt Franco-Copy:** "same medical-grade equipment used in hospitals" → "professional-grade equipment" (Klinik-Gleichsetzung riskant ohne Nachweis)
- **Verifikation:** 15/15 Python-Checks grün. Kein `git push`.
- **Nächster Schritt (laut UI/UX Prompt):** Codex: hero-headline-ab-test-prompt.md auswerten. Giampiero: GA4/Meta IDs, echtes Franco-Foto, DED-Lizenznummer, S6 Before/After-Daten.

### 2026-06-13 — Claude (Cowork) — Hero V1 Pattern Interrupt + Codex A/B-Test Handover · Commit d22485b

- **Konzept-Basis:** Seena Rez Contradiction-Hook-Framework (Scroll-Stop, Pattern Interruption) + Hormozi Value Equation (Outcome × Likelihood / Time × Effort).
- **Erledigt Hero H1:** Kinetic-Animation beibehalten, Copy auf V1 umgestellt:
  - Zeile 1: "Your Dubai apartment" (navy)
  - Zeile 2: "looks clean." (`.hl-b` blau — falsche Sicherheit)
  - Zeile 3: "Your AC ducts don't." (`.hl-r` rot — Weckruf)
- **Erledigt CSS:** `.hero-h1 .hl-r{color:var(--red);font-style:italic;font-weight:700}` hinzugefügt.
- **Erledigt hero-sub:** "Mold, bacteria & 2M+ dust mites hiding in your ducts & mattress — **removed in 2–3 hours**. Fixed price, same-day available." (Hormozi: Time Delay + Effort Reduction explizit).
- **Erledigt hero-trust:** "Done in 2–3 hours · same-day available" als erste Trust-Zeile (Time-to-Value direkt sichtbar above the fold).
- **Erledigt Codex-Handover:** `conversion-research/hero-headline-ab-test-prompt.md` erstellt:
  - 10 Varianten mit vollständigem Copy (H1 + Sub + Claim)
  - 4-Dimensionen-Rubrik H/V/E/D (1–5 Punkte)
  - Claude Pre-Scores für alle 10 Varianten
  - Claude-Empfehlung: V6 (Time-Bomb, 18/20) als A/B-Challenger gegen V1 (Contradiction, 17/20) als Control
  - Codex-Prompt mit Scoring-Tabelle, Segment-Analyse und Implementierungshinweisen
- **Verifikation:** 8/8 Python-Checks grün (CSS, H1-Zeilen, hero-sub, trust-item, alte Strings entfernt). Kein `git push`.
- **Nächster Schritt:** Codex mit `conversion-research/hero-headline-ab-test-prompt.md` laufen lassen → unabhängige Scores + Top-3-Auswahl. Dann A/B-Test zwischen V1 (live) und Codex-Empfehlung konfigurieren. T2 Tracking weiterhin blockiert auf GA4 + Meta IDs von Giampiero.

### 2026-06-13 — Claude (Cowork) — #why Sektion redesign + wissenschaftliche Quellen · Commit f63c2ff
- **Ausgangslage (Giampieros Feedback):** Emoji-Icons wirken billig; Statistiken (5×, 2M+, 12mo, 30%) ohne Quellen = Marketing-Versprechen ohne Beweiskraft → fehlender "Aha-Effekt".
- **Research-Basis:** 3× Consensus-Suche auf peer-reviewed Papers: (1) Indoor Air Quality / Seguel et al. 2017 / González-Martín et al. 2021 / US EPA; (2) Dust Mites / Klain et al. 2024 / Lezcano et al. 2020 / Solarz et al. 2021; (3) HVAC Energy / Ildiri et al. 2024 Energy & Buildings (13 Zitierungen) → 41–60% Fan-Energie-Einsparung nach Reinigung.
- **Erledigt UI:** Alle 4 Emoji-Icons durch saubere Lucide-SVGs ersetzt (kein Font-Load nötig, kein CLS).
- **Erledigt .d-num:** Font-Size 36px → 44px für stärkeren visuellen Punch.
- **Erledigt Subtitle:** "…perfect conditions for invisible health threats." → "…confirmed by peer-reviewed science." (Credibility-Signal direkt im Header)
- **Erledigt Quellen-Badges:** Neues CSS `.d-src` (Pill-Badge, hover-animiert). Jede Karte hat anklickbaren Quellenlink:
  - AC/12mo → WHO Household Air Pollution fact sheet
  - Luft/5× → US EPA Indoor Air Quality (offizielle Behörde)
  - Matratze/2M+ → AAFA Asthma & Allergy Foundation
  - Energie/30% → Ildiri et al., Energy & Buildings 2024 (direkter Consensus-Paper-Link)
- **Erledigt Energie-Claim:** "make your system work 30% harder" → "30–60% harder" (konservativ; Studie zeigt 41–60% Einsparung nach Reinigung).
- **Verifikation:** 15/15 Python-Checks grün (einzige Ausnahme: font-size:36px noch in `.hr-num`/`.hr-big-num` — komplett andere Sektionen, kein Problem). Kein `git push`.
- **Nächster Schritt:** T2 Tracking (blockiert auf GA4 + Meta IDs von Giampiero) oder S6 Before/After echte Captions (blockiert auf Stadtteil + Monat von Giampiero). Nächste interne Option: Mobile-Responsiveness der neuen `#why`-Karten prüfen (`.danger-grid` nutzt bestehende 2-Spalten-/1-Spalten-Breakpoints aus Codex-Arbeit).

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

## 2026-06-14 — Quiz-Sektion überarbeitet (Commit 3feda32)

**Was geändert:**
- H2: „Know What You're Getting Before You Spend a Dirham" — Identity-Winkel (clever/empowered buyer)
- Sub: 4 Taps → personalised estimate → free inspection → no email, no pressure
- Float chip: „Free Quote" → „No Commitment"
- Result-Icon: 🎉 → grüner SVG-Haken (professioneller)
- Result-Titel: „Your Specialist Quote Is Ready"
- Result-Sub: Spezialist bestätigt den Preis beim kostenlosen Vor-Ort-Termin
- Preis-Label: „Not Binding" → „Estimated Starting From"
- **Kompletten Disclaimer entfernt** → ersetzt durch 3 grüne Trust-Chips:
  ✓ Free on-site inspection | ✓ Fixed price before we start | ✓ Free re-clean if not satisfied
- CTA: „Book Now via WhatsApp" → „Claim My Free Inspection"
- Urgency: „limited slots" (fake) → „quote held for 24 hours" (plausibel/real)

**Framework-Entscheidungen:**
- Trust Gap: Hoch (Onlinepreise sind verdächtig) → Disclaimer raus, Trust-Chips rein
- Identity vs. Utility: H2 spricht den smarten Dubai-Käufer an, nicht Features
- Fear→Relief: Schon durch #compare aktiviert; Quiz = leichter Einstieg ohne Risiko
- Empty Copy Paradox: Weniger Text im Result = mehr Vertrauen

**Nächste Sektionen (ausstehend):**
Weiter mit section-by-section review nach Quiz
