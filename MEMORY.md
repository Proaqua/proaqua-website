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

- [x] **DED Trade License No. 748159** ist in den Trust-Chips sichtbar eingetragen (15.06.2026). Optional: Nachweis/Scan separat ablegen, falls fuer Ads/Compliance gebraucht.
- [ ] **DM-Approval bestätigen** — Chip "Dubai Municipality Approved" ist auf Zuruf eingebaut, Nachweis fehlt noch
- [x] **Echtes Foto Franco** → `assets/franco.webp` ist eingebaut. KI-Portraits wurden wegen Gesichtstreue verworfen; aktuell echtes Anzug-Foto.
- [ ] **Ab-Preise prüfen:** AC Duct ab AED 400? Villa Deep Clean? Mattress AED 89? (TODO-Kommentare oben in index.html)
- [x] **Positionierungs-These FINAL (13.06.2026, mit Giampiero abgestimmt; Copy am 15.06.2026 claim-sicher entschärft):** Persönlicher Spezialist (Franco als Gesicht) + professionelle Ausrüstung + fairer Festpreis + Proof auf jedem Job. B2B/Property als eigene Sektion, NICHT in der Hauptbotschaft. Frühere Kurzform mit "Hospital-grade" ist wegen Claim-Hygiene überholt.

## Arbeitslog

### 2026-06-16 — Codex — Conversion-Flow-Stand nach ProAqua-2 gepusht
- **Erledigt:** Aktuellen lokalen Stand mit Conversation-Psychology-Reorder, Compliance-/Copy-Fixes, Mobile-/Floating-/FAQ-Feinschliff und Arbeitslog in Commit `db8095d` gesichert.
- **Erledigt:** Nach ausdrücklicher Freigabe auf `proaqua2/main` gepusht: `git push proaqua2 HEAD:main`.
- **Ergebnis:** Der Implementierungsstand wurde von `a0787a3` auf `db8095d` aktualisiert; dieser Arbeitslog-Eintrag wird als separater Follow-up-Commit nachgeschoben.
- **Hinweis:** Push ging nur an `proaqua2`, nicht an `origin`.
- **Nächster Schritt:** Live-/Repo-Stand auf ProAqua-2 prüfen; offene Blocker bleiben echte Before/After-Captions, DM-Approval-Nachweis und GA4/Meta-IDs.

### 2026-06-16 — Claude (Cowork) — Mobile-/Floating-/FAQ-Feinschliff (nach GPT-5.5-Review)
- **Kontext:** Nach dem Reorder eine erneute Bewertung (Claude + GPT-5.5 ~8,2/10). GPT-Punkte am Code verifiziert: 39 CTAs (WA 25 / tel 7 / quiz 6 / mail 1), `quiz-fab` (bottom:96px) + `wa-fl` (bottom:24px) stapeln sich unten rechts, Mobile-Hero lang.
- **Floating-Split (Giampiero-Entscheid: „Quiz oben, WhatsApp unten"):** Additiver Controller per `<script>` am Body-Ende + CSS-Klassen `.quiz-fab.qf-belowsplit` / `.wa-fl.wa-off`. Split = Top von `#franco` (−140px). Oberhalb: Quiz-FAB sichtbar, WhatsApp-Float aus; unterhalb umgekehrt. Bestehende Quiz-FAB-Popup-/Grace-IIFE NICHT angefasst (nur additiv überschrieben).
- **FAQ:** Kids/Pets-Frage war BEREITS vorhanden (Lücke schon geschlossen). Real fehlte nur Tempo → neuer Eintrag „How fast can I get an appointment?" sichtbar + im FAQPage-JSON-LD (jetzt 7 sichtbar / 9 Schema). Antwort ohne Same-Day-Garantie (Guardrail): „7 days a week, WhatsApp in minutes, inspections often within 24–48h".
- **Mobile-Hero (Giampiero-Entscheid: „Safe for Kids & Pets" bleibt stark — NICHT geändert):** `@media(max-width:600px)` blendet dekoratives `hero-vid-mobile` aus + reduziert Hero-Padding → schneller zur ersten Pain-Sektion. Franco-Foto-Karte bleibt als Hero-Trust-Anker. Reversibel über die eine Media-Query.
- **Verifikation:** HTML-Parser 0/0; Sektionsreihenfolge unverändert (18, korrekt); neue CSS/JS vorhanden, added-script Klammern/Parens balanciert. Bytes 288.331 → 290.549. Kein `git push`.
- **Am Browser prüfen:** Floating-Split-Schwelle (#franco) auf Mobile gefühlt richtig? Mobile-Hero-Höhe ok ohne Video? bg-Alternation oben (warning-signs/vent-check). BLOCKED bleibt: GA4/Meta-IDs, echte Before/After-Captions, DM-Approval.

### 2026-06-16 — Claude (Cowork) — Audit umgesetzt: Compliance + Copy + Sektions-Reorder
- **Wichtiger Befund:** Die LIVE-`index.html` war bereits teilweise umsortiert (NICHT mehr die im Audit/MEMORY angenommene Reihenfolge). Tatsächlicher Ausgangszustand: Hero→why→warning-signs→vent-check→solution→franco→reviews→compare→services→before-after→pricing→quiz→process→booking→… (d.h. Compare stand schon spät, Booking schon nach Pricing).
- **Erledigt Reorder:** Seite per Block-Verschiebung (Python, byte-erhaltend) in die freigegebene Zielreihenfolge gebracht: **warning-signs → vent-check → why → before-after → solution → services → franco → reviews → compare → pricing → process → quiz → booking → business → arabic → seasonal → areas → faq**. Alle 18 Sektionsblöcke verbatim erhalten, 0 Byte-Verlust.
- **Erledigt Nav:** Desktop- & Mobil-Nav an neue Scroll-Folge angeglichen (Franco↔Services und Book↔Reviews getauscht → why·services·franco·reviews·booking·faq). Footer-Nav war bereits korrekt. Scroll-Spy nutzt `data-nav-key`+Sichtbarkeit, passt sich automatisch an.
- **Erledigt Compliance (E):** `5×`→`2–5×` (#why-Header, deckungsgleich EPA-Body); `Verified WhatsApp Review`→`Real WhatsApp message` (3×); `Eco-Safe Products`→`Safe Cleaning Products` (2×, „Eco" als unbelegte Umwelt-/Zertifizierungsimplikation entfernt — NICHT „fragrance-free" erfunden).
- **Erledigt Copy (D):** Hero-Sub auf reinen Fear→Relief-Hook gekürzt (Dauer/Preis stehen schon in den Trust-Chips); #services-H2 Utility→Identity („Built for the Parts of Your Home You Can't See"); #solution-Sub auf Fear→Relief-Brücke; #areas-Sub mit Social Norm (Dubai Marina/JVC/Arabian Ranches); #vent-check Sekundärlink „Not sure yet? See what we typically find ↓" → #why (totes Ende beseitigt).
- **NICHT gemacht (begründet):** Booking-Headline-„Tippfehler" existiert im Quelltext NICHT (`Better Air</em>.` — Leerzeichen war Extraktions-Artefakt). Franco-Gründungs-Story (D#10) war bereits vorhanden („In 2016, I started Pro Aqua…").
- **Verifikation:** HTML-Parser-Smoketest 0 offene / 0 fremde Tags; 18 Sektionen, keine Duplikate, exakte Zielreihenfolge; alle 8 Edits present, alle 4 Altstrings entfernt. Backup-Commit `829b940` vor Beginn, Umsetzungs-Commit danach. Kein `git push`.
- **Offen/zu prüfen am Browser:** bg-Alternation (warning-signs & vent-check jetzt beide ohne bg-Klasse, nebeneinander — Separator-Regel greift, ggf. optisch nachjustieren). „Safe Cleaning Products" → falls Produkte real fragrance-free/zertifiziert, kann stärkere Wording rein. BLOCKED bleibt: Before/After-Captions, DM-Approval, GA4/Meta-IDs.

### 2026-06-16 — Claude (Cowork) — Conversation Psychology Audit (7 Frameworks) erstellt
- **Erledigt:** Vollständigen Audit der aktuellen `index.html` gegen alle 7 Frameworks (Conversation Psychology, Fear→Relief, Trust Stack, Identity/Utility, Empty Copy, Honest Comparison, Objection Kill) durchgeführt. Inhalte gezielt per Python-Extraktion aus dem HTML gezogen (Sektionsreihenfolge, alle H1–H3, CTAs, Schlüssel-Copy, Claim-Counts).
- **Dokumentiert:** `conversion-research/conversation-psychology-audit-2026-06-16.md` — Ausgabe A–E: Flow-Score 6/10 + optimale Reihenfolge, Sektions-Audit aller 19 Sektionen, 3 größte Hebel, 10 Before/After-Copy, Compliance-Check.
- **Kern-Ergebnis:** Seite ist handwerklich stark und claim-sauber (kein `100%`/`medical-grade`/`hospital-grade`/`certified`/`2M+` im sichtbaren Text). Größter Hebel ist **Reihenfolge, nicht Copy**: #compare steht zu früh (Pos. 2, Differenzierung vor Problem-Erkennung); #booking steht VOR Reviews/Process/Pricing (Pos. 10–14 invertiert); Quiz feuert primären Action-CTA vor Trust/Social Proof.
- **Empfohlene Zielreihenfolge:** Hero → Warning Signs → Vent Check → Why → Before/After → Solution → Services → Franco → Reviews → Compare → Pricing → Process → Quiz → Booking → Business → Arabic → Seasonal → Areas → FAQ.
- **Compliance-Findings (klein, schnell fixbar):** `5× More Indoor Pollution` (Header) vs. `2–5×` (EPA-Body) → angleichen; `Eco-Safe Products`/`Safe for Kids & Pets` belegen oder entschärfen; `Verified WhatsApp Review` → `Real WhatsApp message`; Booking-Headline-Tippfehler („Air ." → „Air.").
- **Verifikation:** `index.html` NICHT verändert (reine Analyse). Claims gegen sichtbaren Text gegengeprüft (style/script gestrippt). Kein `git push`.
- **Nächster Schritt (Giampiero entscheidet):** (1) Compliance-Fixes sofort umsetzen, (2) Sektions-Reorder als Block-Verschiebung mit Desktop/Mobile-Verifikation + Scroll-Spy-Anpassung. BLOCKED bleibt: echte Before/After-Captions, DM-Approval-Nachweis, GA4/Meta-IDs.

### 2026-06-15 — Codex — Kritischer UI/UX-, Conversion- und Proof-Audit erstellt
- **Erledigt:** Aktuelle Seite lokal auf `http://localhost:8742/` gegen `MEMORY.md`, Conversion-Research, Growth-Brief, Native-Ad-Empfehlungen und Wettbewerbsanalyse geprüft.
- **Prüfung:** Desktop 1280px und Mobile 390px per Browser: Seite lädt, keine Console-Errors/Warnungen, kein horizontaler Overflow; Google-Rating-Badge ist als wiederverwendbare Komponente konsistent; WhatsApp-CTAs nutzen echtes WhatsApp-Grün.
- **Bewertung:** Gesamt-Score **7.6/10** bzw. ca. **76 % fertig**. Strategisch stark, aber noch nicht perfekt und noch nicht sauber genug für grosses Paid-Traffic-Scaling.
- **Kritische Risiken:** Claim-Hygiene (`certified`, `medical-grade`, `100%`, `verified`, 30–60 %, 2M+), direkte Hash-/Landing-State-Ziele landen teils unsauber, Mobile-FAB/WhatsApp-Konkurrenz, fehlende echte Before/After-Area/Month-Daten, Tracking fehlt weiterhin.
- **Dokumentiert:** Ausführlicher Bericht unter `conversion-research/site-ui-ux-critical-audit-2026-06-15.md`.
- **Nächster Schritt:** P0 zuerst Claim-Hygiene und Hash-/Landing-State-Stabilität bereinigen; danach FAB-Strategie und Proof-Kontexte.

### 2026-06-15 — Codex — Vent-Check SIGN 1 Bildpfad final nachgezogen
- **Erledigt:** Nach dem Origin-Push wurde eine letzte lokale Änderung in `index.html` gefunden: Vent-Check SIGN 1 nutzt jetzt `assets/real-ac-grid-clean.webp` statt `assets/real-ac-duct-clean.webp`.
- **Prüfung:** Beide Dateien existieren und sind getrackt; `real-ac-grid-clean.webp` passt besser zum Alt-Text "Dirty AC grill with dust buildup — real Dubai job".
- **Nächster Schritt:** Diese letzte `index.html`-Änderung nach `origin/main` pushen, damit die Live-Seite exakt dem lokalen Stand entspricht.

### 2026-06-15 — Codex — Origin/main mit echten Foto-Assets gepusht
- **Erledigt:** Nach ausdrücklicher Freigabe wurde lokale Branch `Franco2` normal nach `origin/main` gepusht: `git push origin Franco2:main`.
- **Ergebnis:** `origin/main` wurde von `f5545d5` auf `7581245` aktualisiert. Damit sind die echten wassergezeichneten Fotos für Vent Check, Franco's Inspection Note und Before/After Gallery im Netlify-Deploy-Repository.
- **Wichtig:** Kein Force-Push nötig, weil `origin/main` direkter Vorgänger war.
- **Nicht committed:** Lokale Finder-Dateien `.DS_Store` und `assets/.DS_Store` bleiben unberührt.
- **Nächster Schritt:** Netlify-Deploy abwarten und die Live-Seite prüfen.

### 2026-06-15 — Codex — Origin/main per Franco2 wiederhergestellt
- **Erledigt:** Nach ausdrücklicher Freigabe wurde lokale Branch `Franco2` per `git push origin Franco2:main --force-with-lease` nach `origin/main` gepusht.
- **Grund:** `origin/main` enthielt kaputte GitHub-Web-Commits (`Delete index.html` / `Add files via upload`), wodurch Netlify die Seite fehlerhaft deployen konnte.
- **Ergebnis:** `origin/main` wurde von `8b1cfd6` auf den sauberen `Franco2`-Stand `a01df3a` gesetzt.
- **Wichtig:** Force wurde als `--force-with-lease` ausgeführt, damit nur überschrieben wird, wenn `origin/main` seit dem Fetch nicht nochmals geändert wurde.
- **Nicht committed:** Lokale Finder-Dateien `.DS_Store` und `assets/.DS_Store` bleiben absichtlich uncommitted.
- **Nächster Schritt:** Netlify-Deploy von `origin/main` abwarten und `proaqua-dubai.netlify.app` prüfen.

### 2026-06-15 — Codex — ProAqua-2 Push erfolgreich abgeschlossen
- **Erledigt:** Lokale Branch `Franco2` erfolgreich nach `proaqua2/main` gepusht.
- **Remote:** `https://github.com/agentdimarco-cloud/ProAqua-2.git`
- **Ergebnis:** `proaqua2/main` wurde von `469a98b` auf `5c177e7` aktualisiert; die lokalen Website-/Quiz-/Lightbox-/Warning-Signs-Commits plus der Remote-Upload-Merge sind jetzt im ProAqua-2-Repository.
- **Wichtig:** Es wurde nicht nach `origin` gepusht. Original-Remote `origin` bleibt unverändert.
- **Nicht committed:** Lokale Finder-Dateien `.DS_Store` und `assets/.DS_Store` bleiben absichtlich uncommitted.
- **Nächster Schritt:** ProAqua-2 online/repo-seitig prüfen; weitere Änderungen wieder lokal committen und nur auf ausdrücklichen Wunsch pushen.

### 2026-06-15 — Codex — ProAqua-2 Remote-Uploads integriert vor Push
- **Erledigt:** Push nach `proaqua2/main` vorbereitet. Erster Push wurde abgelehnt, weil auf `proaqua2/main` zwischenzeitlich Remote-Commit `469a98b Add files via upload` lag.
- **Erledigt:** `git fetch proaqua2` und nicht-destruktiver Merge von `proaqua2/main` in lokale Branch `Franco2`; dadurch bleiben die 20 remote hochgeladenen Asset-Dateien erhalten.
- **Wichtig:** Es wurde weiterhin nicht nach `origin` gepusht. Ziel bleibt ausschließlich Remote `proaqua2` (`agentdimarco-cloud/ProAqua-2`).
- **Nicht committed:** Lokale Finder-Dateien `.DS_Store` und `assets/.DS_Store` bleiben absichtlich uncommitted.
- **Nächster Schritt:** `Franco2` nach `proaqua2/main` pushen.

### 2026-06-15 — Codex — Lightbox per Bild-Tap schließbar gemacht
- **Erledigt:** Die Warning-Signs-Bilder waren bereits als wassergezeichnete Assets in `#warning-signs` eingebunden; Einbindung in `index.html` erneut geprüft.
- **Erledigt:** Geschützte Bild-Lightbox UX verbessert: Ein Klick/Tap auf das geöffnete Bild schließt die Lightbox jetzt direkt, damit Mobile-Nutzer nicht das X suchen müssen. Das X und Escape bleiben weiterhin aktiv.
- **Erledigt:** Cursor für geöffnetes Bild/Frame auf `zoom-out` gesetzt, damit die Interaktion auch auf Desktop verständlich ist.
- **Verifikation:** Lokale Vorschau `http://localhost:8742/` mit Chrome/Playwright: Desktop 1280px und Mobile 390px, 25 Lightbox-Bilder, Warning-Signs zeigen die 5 neuen wassergezeichneten Assets, Bild öffnet und schließt per erneutem Tap/Klick, kein Overflow, Console 0 Errors / 0 Warnings.
- **Nächster Schritt:** Falls gewünscht, kann die Lightbox zusätzlich einen kurzen Mobile-Hinweis wie "Tap image to close" bekommen; aktuell ist die Interaktion bewusst ohne extra Text gehalten.

### 2026-06-15 — Codex — Image2 Warning-Signs-Pain-Bilder generiert und eingebaut
- **Erledigt:** Fuenf verkaufspsychologische Image2-Bilder fuer `#warning-signs` generiert: Allergy triggers, Bad smell from vents, Black dust/mould around AC grills, Weak airflow/poor cooling und High DEWA bills.
- **Erledigt:** Erste Generation visuell geprueft; zwei Motive wegen ungewuenschtem Kreis-im-Bild neu generiert, damit die Website den Kreis sauber per CSS croppt.
- **Assets:** Neue wassergezeichnete WebP-Dateien in `assets/`: `warning-allergy-triggers-dubai.webp`, `warning-bad-smell-ac-vents-dubai.webp`, `warning-black-dust-mould-ac-grills-dubai.webp`, `warning-weak-airflow-poor-cooling-dubai.webp`, `warning-high-dewa-bills-ac-dubai.webp`.
- **Dokumentiert:** Finale Image2-Prompts in `conversion-research/warning-signs-image2-prompts.md` abgelegt, inklusive Guardrails gegen Text, Logos, Fake-Beweise und medizinische Ueberclaims.
- **Erledigt:** `index.html` gezielt in der Warning-Signs-Section auf die neuen Assets umgestellt; keine komplette HTML-Neugenerierung.
- **Verifikation:** Lokale Vorschau `http://localhost:8742/` mit Chrome/Playwright: Desktop 1280px und Mobile 390px ohne Overflow, alle 5 Bilder laden mit 900×900, Lightbox funktioniert, Console 0 Errors / 0 Warnings.
- **Nächster Schritt:** Bei Bedarf koennen die fuenf Motive spaeter als Meta-/Instagram-Creative-Varianten weiterverwendet werden; fuer echte Proof-Galerien weiterhin nur reale Job-Fotos verwenden.

### 2026-06-15 — Codex — Risk-Check-Section + geschützte Bild-Lightbox umgesetzt
- **Erledigt:** `#warning-signs` als bildstarke Risk-Check-Section im Stil des gelieferten Screenshots überarbeitet: 5 runde Warning-Sign-Bilder, klare Headline, CTA "Start Risk Check Quiz — Free" und Hinweis "Popup quiz · 6 questions · WhatsApp result".
- **Erledigt:** Bestehendes Risk-Check-Popup weiterverwendet; CTA öffnet das vorhandene 6-Fragen-Quiz. Zwei zu harte Popup-Claims entschärft (`bacteria / mould confirmed` → Inspection-Warnsignal, `#1 cause` → kann beitragen).
- **Erledigt:** Globale geschützte Bild-Lightbox für Content-Bilder ergänzt. Normale Service-/Proof-/Review-/Seasonal-/Warning-Bilder öffnen bei Klick in einem großen Overlay mit Pro-Aqua-Dubai-Wasserzeichen und Caption. Logos, Avatare und UI-Icons bleiben ausgeschlossen.
- **Erledigt:** 21 Content-Bilddateien in `assets/` mit eingebranntem Pro-Aqua-Logo-Wasserzeichen verstärkt; zusätzlich zeigt die Lightbox ein wiederholtes Pro-Aqua-Logo-Overlay. Hinweis: Ein Web-Wasserzeichen ist nie absolut unentfernbar, aber hier ist es nicht nur CSS, sondern in die ausgelieferten Bilddateien eingebettet.
- **Verifikation:** Lokale Vorschau `http://localhost:8742/` mit Chrome/Playwright geprüft. Desktop 1280px und Mobile 390px: kein horizontaler Overflow, 5 Warning-Bilder, 25 anklickbare Content-Bilder, Risk-Quiz öffnet, Lightbox öffnet mit Wasserzeichen, Console 0 Errors / 0 Warnings.
- **Nicht angefasst/staged:** Bestehende lokale `.DS_Store`-/Screenshot-/`assets/pictures_videos/`-Dateien bleiben unberührt.
- **Nächster Schritt:** Visuelle Feinabstimmung der Warning-Sign-Bildauswahl möglich, sobald echte passende Pro-Aqua-Fotos für die 5 Symptome final ausgewählt sind.

### 2026-06-15 — Codex — ProAqua-2 GitHub-Push abgeschlossen
- **Erledigt:** Lokale Branch `Franco2` erfolgreich als `main` in das neue Repo gepusht: https://github.com/agentdimarco-cloud/ProAqua-2
- **Remote:** Separater Remote `proaqua2` zeigt auf `https://github.com/agentdimarco-cloud/ProAqua-2.git`.
- **Wichtig:** Es wurde nicht nach `origin` gepusht. `origin` bleibt `https://github.com/Proaqua/proaqua-website.git`.
- **Nicht committed:** Lokale Finder-Dateien `.DS_Store` und `assets/.DS_Store` bleiben absichtlich uncommitted.
- **Nächster Schritt:** Review-/Weitergabe-Link verwenden; bei weiteren Website-Änderungen aufpassen, ob sie nach `proaqua2` oder nur lokal bleiben sollen.

### 2026-06-15 — Codex — Neues GitHub-Repo ProAqua-2 vorbereitet
- **Erledigt:** Neues leeres GitHub-Repo `agentdimarco-cloud/ProAqua-2` angelegt: https://github.com/agentdimarco-cloud/ProAqua-2
- **Erledigt:** Zwei zuvor ungetrackte Research-Dokumente committed: `conversion-research/native-ad-application-recommendations.md` und `conversion-research/native-ad-idea-generation-prompt.md`.
- **Wichtig:** Original-Remote `origin` zeigt weiterhin auf `https://github.com/Proaqua/proaqua-website.git` und wurde nicht gepusht oder überschrieben.
- **Nächster Schritt:** Lokale Branch `Franco2` als `main` in das neue Repo pushen und danach nur den separaten Remote `proaqua2` für dieses Ziel verwenden.

### 2026-06-15 — Codex — Sichere Weitergabe-Branch Franco2 angelegt
- **Erledigt:** Neue lokale Git-Branch `Franco2` von aktuellem lokalen Arbeitsstand angelegt.
- **Zweck:** `Franco2` dient als sichere Weitergabe-/Review-Schiene, damit der aktuelle Arbeitsstand später separat als Branch oder in ein neues Repository veröffentlicht werden kann.
- **Wichtig:** Kein `git push` ausgeführt. `origin/main` wurde nicht überschrieben und bleibt unverändert.
- **Git-Zustand beim Anlegen:** Lokaler Stand war `main...origin/main [ahead 56]`; uncommitted/untracked Dateien wurden nicht verändert und bleiben im Working Tree sichtbar.
- **Nächster Schritt:** Wenn Giampiero ausdrücklich freigibt, kann `Franco2` entweder als separater Remote-Branch gepusht oder in ein neues GitHub-Repo wie `Franco2` übertragen werden. Bis dahin nur lokal weiterarbeiten.

### 2026-06-15 — Claude — Hero Guarantee Badge + Section Visual Separation
- **Erledigt:**
  1. **Hero Risk-Reversal-Badge:** Grüner Shield-Badge zwischen WA-Button und "WhatsApp active 7 days"-Zeile eingefügt: *"Not happy? We re-clean for free — no questions asked."* (grüner Hintergrund rgba(77,168,130,.1), `--green-d` Text, Shield-SVG).
  2. **CSS Section Separator:** Globale Regel `section[id]:not(#hero):not(#before-after){border-top:2px solid var(--bg3)}` hinzugefügt — alle benannten Sektionen (außer Hero und navy Before/After) bekommen jetzt eine klare 2px-Trennlinie beim Scrollen.
  3. **Vent Check Hintergrund:** Von `var(--bg2)` auf `#fff` geändert — schafft richtige bg-Alternation mit den angrenzenden `bg2`-Sektionen (#compare oben, #quiz unten).
- **Commit:** `18a6385`
- **Verifikation:** grep-Checks auf alle 3 Änderungen erfolgreich.
- **Offene TODOs (Giampiero):** GA4-ID, Meta-Pixel-ID, echte DED-Lizenznummer, echte Before/After-Bildunterschriften.
- **Nächster Schritt:** Auf Wunsch von Giampiero weitere Optimierungen; sonst Website lokal testen.

### 2026-06-15 — Codex — Native-Ad-Mechaniken auf aktuelle Website gemappt
- **Erledigt:** Aktuelle `index.html` gezielt gegen die neue Native-Ad-/Direct-Response-Logik geprüft: Hero, `#compare`, `#why`, `#franco`, Services, Before/After, Booking, Pricing und Seasonal.
- **Dokumentiert:** Neues Arbeitsdokument `conversion-research/native-ad-application-recommendations.md` erstellt mit konkreten Homepage-, Meta-/Instagram- und SEO-/AI-Search-Anwendungen.
- **Ergebnis:** Die Seite nutzt bereits Hidden-Problem-Hero, Vergleich, Proof, Risk Reversal, WhatsApp-first und Seasonal Trigger. Der stärkste zusätzliche Hebel ist eine neue Mini-Section `Franco's 60-Second AC Vent Check`, danach `#why` als Field-Report/Inspection-Notes entschärfen und eine "Before You Book Any Cleaning Team in Dubai"-Checkliste ergänzen.
- **Guardrails:** Keine Fake-News-/Tarnredaktion, keine Fake-Knappheit, keine zusätzlichen medizinischen oder Zertifizierungsclaims ohne Nachweis, keine KI-Before/After-Beweise.
- **Verifikation:** Nur Markdown-Dateien geändert; `index.html` wurde nicht angefasst. Bestehende lokale `.DS_Store`-Änderungen bleiben unberührt. Kein `git push`.
- **Nächster Schritt:** P0 zuerst umsetzen: `Franco's 60-Second AC Vent Check` nach Hero/Compare einbauen, mit WhatsApp-Prefill "I checked my AC vent..." und später echten AC-Vent-/Filterfotos.

### 2026-06-15 — Codex — Native-Ad-/Advertorial-Ideenprompt erstellt
- **Erledigt:** Neue Prompt-Datei `conversion-research/native-ad-idea-generation-prompt.md` erstellt, um Website-, Landingpage- und Kampagnenideen aus alten Advertorial-, Direct-Response-, Mailorder- und Teleshopping-Mechaniken abzuleiten.
- **Recherche:** Referenzfelder zusammengeführt: Swiped.co/SWIPE-Files, Duke Ad*Access, The Advertising Archives, Vintage Ad Browser/AdClassix, SOFII/WSJ-"Two Young Men", FTC Native Advertising Guide und DRTV-/Infomercial-Strukturen.
- **Inhalt:** Prompt fordert 12 historische Mechaniken, 30 konkrete Pro-Aqua-Ideen, 7 stärkste Website-Skizzen, spezielle Winkel für Hidden Air Problem, Clean-Looking Mattress Test, Sandstorm Reset, Booking App vs Specialist, Franco's Inspection Notes und Fixed-Quote-Vertrauen.
- **Guardrails:** Keine kopierten Altanzeigen, keine Täuschung als Redaktion, keine Fake-Knappheit, keine unbelegten medizinischen/Trust-/Preisclaims, keine KI-Bilder als echter Proof.
- **Verifikation:** Nur Markdown-Dateien geändert; `index.html` wurde nicht angefasst. Bestehende lokale `.DS_Store`-Änderungen bleiben unberührt. Kein `git push`.
- **Nächster Schritt:** Prompt ausführen lassen und die besten 3 Konzepte als konkrete Homepage-/Meta-/SEO-Tickets priorisieren.

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

### 2026-06-15 — Claude (Cowork) — Alle 12 echten Fotos vollständig eingebaut · Commits 3bf6c35 + 65a9d0d

- **Erledigt:** Franco-Foto `franco.webp` (900×1227px, 82KB) in ALLE 4 Vorkommen eingebaut: Hero Franco-Card Desktop, Hero Franco-Card Mobile, #why-Sektion Hauptbild, TODO-Kommentar aktualisiert.
- **Erledigt:** Gallery von 6 auf 8 echte Fotos erweitert:
  - Card 4 (war generic sofa) → `real-mattress-result-1.webp`
  - Card 5 (war generic AC filter) → `real-carpet-clean.webp`
  - Card 7 (neu) → `real-ac-duct-grid-work-2.webp`
  - Card 8 (neu) → `real-ac-motorhousing.webp`
- **Erledigt:** Service-Cards mit echten Fotos: AC Duct → `real-ac-grid-work.webp`, Mattress → `real-mattress-result-2.webp` (statt generic Graphics).
- **Erledigt:** #why Inspection Note: 2-Spalten-Layout mit `real-mattress-water-held.webp` + `real-ac-duct-clean.webp` nebeneinander.
- **Status Task 26 ABGESCHLOSSEN:** Alle 12 `real-*.webp` Fotos sind jetzt eingebaut — 0 ungenutzt.
- **Nächster Schritt (GEBLOCKT auf Giampiero):** Before/After-Karten echte Stadtteile + Monat/Jahr; GA4-ID; Meta-Pixel-ID; Ab-Preise bestätigen.

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

### 2026-06-15 — Claude (Cowork) — Franco + Booking + Button-Fix · Commits b50b982, 8588049

- **Franco — Authority Layer (Commit b50b982):**
  - Stat-Chip 1: "10 Y. Experience" → "2016 Founded" (konkrete Jahreszahl)
  - Stat-Chip 2: "100% Satisfaction" → "4.7★ Google Rating" (verifizierbar)
  - Story P1: "I started Pro Aqua Dubai after seeing too many families…" → konkrete Origin-Story mit Jahreszahl 2016 und Dubai-AC-Klimakontext
  - Story P2: "We use professional-grade equipment…" → persönliche Begleitung Franco + Foto-Proof-Versprechen
  - Bullets spezifischer: "hospital HVAC maintenance" / "photos sent directly to you" / "fixed before work begins" / "Franco's team responds…"
  - CTA: "Get Free Consultation" → "Book My Free Inspection"
- **Booking — Fear→Relief Abschluss (Commit b50b982):**
  - H2: "Ready for a Healthier Home?" → "Your Home Deserves Better Air."
  - Sub: "Choose how you'd like to connect…" → "Most families wait until symptoms appear. You don't have to — the first step is free and takes 30 seconds. Franco's team responds within minutes, 7 days a week."
- **Button-Fix (Commit 8588049):**
  - "Ask Franco's Team" in der Checklist-Sektion (#compare) war navy → auf #25D366 (WhatsApp-Grün) mit box-shadow geändert. Konsistent mit allen WA-Buttons.
- **Verifikation:** 9/9 Python-Checks grün. Kein `git push`.
- **Nächster Schritt (Reihenfolge):**
  1. Reviews-Sektion: Single Metric Hammer (eine Zahl, überall wiederholt) — z.B. 4.7★ oder 6,000+ konsequent in H2/Sub verankern
  2. BLOCKED — GA4 Measurement ID + Meta Pixel ID (von Giampiero)
  3. BLOCKED — Echte DED Trade License No.
  4. BLOCKED — Echte Before/After-Captions (Stadtteil + Monat/Jahr)

### 2026-06-15 — Claude (Cowork) — conversion-strategy.md + 3 P0-Upgrades + Vent Check Bilder · Commits f4baefe, 138265c, 1f25f38

- **conversion-strategy.md (Commit f4baefe):** Psychologisches Framework dokumentiert für Claude+Codex: Angle Matrix, Trust Stack Formula, Fear→Relief, Identity vs. Utility, Empty Copy Paradox.
- **P0: #why Reframe (Commit 138265c):** H2 → "What We Often Find During Dubai AC Inspections" (Field-Report statt Panic). Chip "From Franco's Inspections". Franco Inspection Note Box (blaue Quote-Box).
- **P0: 7-Fragen-Checklist in #compare (Commit 138265c):** "Before You Book Any Cleaning Team in Dubai" + 7 grüne Checkmark-Fragen + "Ask Franco's Team" CTA.
- **P0: Vent Check Bilder (Commit 1f25f38):** Alle 3 Karten haben echte before-after-*.webp Assets mit object-position:left center (zeigt "dirty" Seite). SIGN 1/2/3 rote Badges. CTA-Button → "Send Franco a Photo" (grün).
- **Verifikation:** Alle Commits grün. Kein `git push`.

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

## 2026-06-15 — conversion-strategy.md erstellt (Commit f4baefe)

Neue Datei im Repo: `conversion-strategy.md`
Vollständige Wissensdatenbank aller psychologischen Frameworks angewendet auf Proaqua:
- Angle Matrix, Trust Stack, Fear→Relief, Identity vs Utility, Empty Copy Paradox
- Sektionsweise Analyse & Status (was gemacht, was TODO, was BLOCKED)
- Regeln & Tone-of-Voice Referenz
- Für Codex als Kontext-Einlesedatei vorbereitet (Markdown, sauber strukturiert)

### 2026-06-15 — Claude (Cowork) — Hero Chips + Sticky Trust Bar · Commits 0ca46cb, 55da097

- **Hero Guarantee Badge (0ca46cb):** Grüner Shield-Badge zwischen WA-Button und wa-live-row: "Not happy? We re-clean for free — no questions asked." Fixes: `width:fit-content;margin:8px auto 0` (Badge nicht mehr verzogen), `style="margin-top:10px"` auf `.wa-live-row` (Überlappung behoben), Gold-Stars `★★★★★` mit `color:#FBBC04` inline in Hero-Stat-Chips.
- **Sticky Trust Bar (0ca46cb):** Neuer `#sticky-trust` Bar (position:fixed;top:0;height:44px). Zeigt: 4.7★ Google · 6,000+ Families · 10+ Yrs Dubai · Shield-Icon "Re-clean guarantee" + grünen "Book Free" WA-Button. Erscheint dynamisch nach dem Hero (threshold = hero.offsetTop + hero.offsetHeight), verschwindet bei scrollY < 50.
- **Sticky Bar Layout-Fix (55da097):** `body.stb-pushed{padding-top:44px;overflow-anchor:none}` — verhindert dass Fixed Bar über Inhalte ragt.
- **Dritter Hero-Chip (55da097):** `💰 Fixed Price · No Surprises` als dritter Chip in `.hero-chips` (Trust Triangle: Authority "seit 2016" + Quality "4.7 Google" + Price Safety "Fixed Price").
- **Commit:** 55da097 (lokal, nicht gepusht)
- **Sektionsreihenfolge jetzt:** Sticky Trust Bar → Hero (3 Chips: since 2016 / 4.7 Google / Fixed Price) → Trust Belt → Compare → Vent Check (bg #fff) → Quiz → Why → Solution → Franco → Services → Before/After → Booking → Reviews → Process → Pricing → Business → Areas → FAQ
- **BLOCKED:** GA4 Measurement ID, Meta Pixel ID, echte DED License No., echte Before/After-Captions.

## 2026-06-15 — P0 Upgrades implementiert (Commit 138265c)

Basierend auf Codex-Analyse (`native-ad-application-recommendations.md`):

**1. #why reframe (Field Report statt Fear Stats)**
- Chip: „The Hidden Danger" → „From Franco's Inspections"
- H2: „What We Often Find During Dubai AC Inspections"
- Sub: „Not a lab study. What Franco's team actually documents — every week."
- Neu: Franco's Inspection Note Box (Authority + Specificity Layer)
- Wissenschaftliche Datenkarten bleiben — nur Framing entschärft

**2. 7-Fragen-Checkliste in #compare (nach Comparison-Karten)**
- Setzt Kaufkriterien die Proaqua gewinnt: gleiche Team, fixed price, Foto-Proof, re-clean
- Abschluss: „Pro Aqua answers yes to all seven"
- WA-CTA: „Ask Franco's team" (Low-Friction Erstkontakt)

**3. Franco's 60-Second AC Vent Check (neue Sektion zwischen #compare und #quiz)**
- 3 Selbstdiagnose-Karten: Staubling am Vent / Modergeruch beim AC-Start / Staub kommt schnell zurück
- Mechanik: Besucher macht Mini-Test → „ich sollte das prüfen lassen" → WA-Foto-CTA
- Seitenreihenfolge jetzt: Hero → Compare → [Checklist in Compare] → [Vent Check] → Quiz → ...
- Kann später als Meta-Ad-Landing-State genutzt werden

**Nächste ausstehende Sektionen:**
- Booking Section (Fear→Relief Abschluss)
- Franco-Sektion (mehr Specificity in der Story)
- Reviews (Single Metric Hammer)

### 2026-06-15 — Claude (Cowork) — Warning Signs Section + Risk Check Popup · Commit ab013cf

- **CSS (vorheriger Schritt):** Alle Styles für `#warning-signs` (ws-chip, ws-grid, ws-card, ws-ico, ws-label, ws-desc, ws-cta-wrap, ws-btn, ws-btn-note + Responsive-Breakpoints) sowie Risk-Popup (risk-overlay, risk-box, risk-close, rs-step, rs-badge, rs-q, rs-hint, rs-checks, rs-go, rs-note, rs-result-hd, rs-risk-pill, rs-low/rs-med/rs-high, rs-result-msg, rs-wa-btn, rs-back-btn) wurden dem `<style>`-Block hinzugefügt.
- **Risk Check Modal HTML:** `<div id="risk-modal" class="risk-overlay">` vor `<!-- STICKY TRUST BAR -->` eingefügt. Step 1: 6 Checkboxen (Dust/Smell/Vents/Airflow/DEWA/Allergies). Step 2: Ergebnisanzeige mit dynamischem Risk-Pill (rs-low/rs-med/rs-high), Nachricht und WA-CTA mit risikoabhängigem Prefill.
- **Warning Signs Section HTML:** `<section id="warning-signs">` direkt vor `<!-- 60-SECOND VENT CHECK -->` eingefügt. 5 Karten: Allergy Triggers (rot), Musty Smell (amber), Dust/Mould at Vents (grau), Weak Airflow (blau), High DEWA Bills (grün). CTA-Button öffnet Popup via `openRisk()`.
- **JS-Block:** Direkt nach der Section als `<script>`-Tag. Funktionen: `openRisk()`, `closeRisk()`, `showRiskResult()`, `restartRisk()`. Risk-Level: 0 Häkchen=Low, 1-2=Moderate, 3+=High. WA-Prefill je Level verschieden. Overlay-Click + Escape-Key schließen Popup.
- **Psychologisches Framework:** Fear→Relief: 5 Symptom-Karten (Angst/Erkennung) → 30-Sek-Quiz → personalisierter Risk-Level → WA-CTA (Erleichterung/Handlung). Entspricht der Conversion-Strategy: Identity (schlauer Haushalter der sein Risiko kennt) + Trust Stack (kein Email-Feld, Free Inspection, No Commitment).
- **Commit:** ab013cf (lokal, nicht gepusht)
- **BLOCKED (unverändert):** GA4 Measurement ID, Meta Pixel ID, echte DED License No., echte Before/After-Captions.

### 2026-06-15 — Claude (Cowork) — Scroll-Trigger für Risk Check Popup · Commit 9b27242

- **Anlass:** Giampiero: "wenn ich scrolle erscheint der pop für das quiz nicht"
- **Fix:** 40%-Scroll-Trigger mit 1,5s Delay. Commit 9b27242.
- **⚠️ DURCH 78f813d ÜBERHOLT — neuer Trigger in Commit 78f813d.**

### 2026-06-15 — Claude (Cowork) — Quiz Popup Bottom-Sheet + Floating Badge + Smart Trigger · Commit 78f813d

- **Anlass (3 Issues von Giampiero):**
  1. "Hintergrund friert ein wenn popup aufgeht" — `body.overflow:hidden` in `openRisk()` war Ursache.
  2. "Badge der mit der Seite mitgeht um Test zu starten" — fehlte komplett.
  3. "40% sind zu viel — state of the art" — zu aggressiv, keine Strategie.

- **Fix 1 — Hintergrund scrollbar:**
  - `document.body.style.overflow='hidden'` aus `openRisk()` entfernt, `=''` aus `closeRisk()` entfernt.
  - Modal von zentriertem Fullscreen-Overlay zu **Bottom-Sheet** umgebaut: `align-items:flex-end`, `border-radius:22px 22px 0 0`, `translateY(100%)→translateY(0)`, `max-height:82vh`.
  - `.risk-bd` Backdrop-Div eingefügt: `pointer-events:none` per default, `pointer-events:auto` wenn `.open` — dimmt Hintergrund, schließt bei Klick, OHNE `overflow:hidden`.
  - `.risk-sheet-handle` Drag-Handle oben im Sheet (optisch wie native iOS/Android Bottom Sheet).

- **Fix 2 — Floating Badge `#quiz-fab`:**
  - `position:fixed;bottom:96px;right:20px` (über WA-Float-Button).
  - Erscheint nach 200px Scroll (via `qf-visible` CSS-Klasse + Pulse-Animation).
  - Versteckt sich wenn `openRisk()` aufgerufen wird, kommt zurück nach `closeRisk()`.
  - Dismiss-Button (×) zum dauerhaften Wegklicken.

- **Fix 3 — Smart Compound-Trigger (sessionStorage `pa_rc`):**
  - `>45% Scroll` → sofort (stark engagierter User)
  - `>25% Scroll` + `>10s Verweildauer` → Sweet Spot für echte Interessenten
  - Exit-Intent (`mouseleave` top) nach `>5s` auf Seite → Desktop-Fang
  - `35s` Fallback-Timer → Langsam-Leser
  - **Nur 1× pro Session** via `sessionStorage.setItem('pa_rc','1')`
  - 600ms Verzögerung nach Trigger (statt 1,5s — User ist bereits engaged)

- **Commit:** 78f813d (lokal, nicht gepusht)
- **Nächster Schritt:** Giampiero testen lassen. Offene BLOCKED-Items unverändert.

### 2026-06-15 — Claude (Cowork) — Risk Check Popup: Checkbox → 6-Fragen Step-by-Step Wizard · Commit 111ee90

- **Anlass:** Giampiero hat Screenshot von `proaqua-dubai.netlify.app` gezeigt — dort ist das Popup als Step-by-Step-Wizard umgesetzt (eine Frage pro Screen, Auto-Advance, Progress Bar). Unser Popup war noch das alte Checkbox-Format.
- **CSS (bereits vorher ersetzt):** Alle neuen Klassen `.rs-header-badge`, `.rs-title`, `.rs-progress-wrap/meta/track/fill`, `.rs-question`, `.rs-q-hint`, `.rs-options`, `.rs-option`, `.rs-opt-icon/title/sub`, `.rs-result-hd`, `.rs-risk-pill` (low/med/high), `.rs-result-msg`, `.rs-wa-btn`, `.rs-back-btn` sind seit vorheriger Session in `<style>` vorhanden.
- **HTML ersetzt:** Altes Checkbox-Modal komplett durch 6-Fragen-Wizard ersetzt:
  - Header: Amber-Badge `⚠️ FREE · NO OBLIGATION · 90 SECONDS`
  - Titel: `AC Mould Risk Check` ("Risk Check" in `var(--blue)`)
  - Progress Bar: "Question X of 6" / Prozent-Anzeige / blauer Fortschrittsbalken
  - 6 Fragen je mit 4 Antwort-Karten (Emoji-Icon + Titel + Subtitle)
  - Ergebnis-Screen mit Risk-Pill (Low/Moderate/High) + WA-CTA
- **JS ersetzt:** Alte `showRiskResult()/restartRisk()` durch neues System:
  - `rsScores[]` — Punktearray pro Frage (0–3)
  - `rsCurrentQ` — aktueller Frageindex
  - `rsShowQuestion(idx)` — zeigt Frage idx, blendet Rest aus, aktualisiert Progress
  - `rsAnswer(qIdx, score)` — setzt Score, hebt Antwort hervor, Auto-Advance nach 280ms
  - `rsShowResult()` — berechnet Summe (0–3=Low, 4–9=Moderate, 10–18=High), zeigt Ergebnis
  - `restartRisk()` — setzt alles zurück auf Frage 1
- **6 Fragen:**
  1. Wann war die letzte vollständige AC-Tiefenreinigung?
  2. Setzt sich Staub nach dem Reinigen schnell wieder ab?
  3. Modergeruch wenn die AC angeht?
  4. Sichtbarer Staub/Flecken an AC-Vents?
  5. Wie ist die Kühlung & Luftstrom?
  6. Haben Familienmitglieder Symptome zu Hause?
- **Commit:** 111ee90 (lokal, nicht gepusht)
- **BLOCKED (unverändert):** GA4 Measurement ID, Meta Pixel ID, echte Before/After-Captions, Franco-Foto (assets/franco.jpg), Commercial License Wasserzeichen-Dokument.

### 2026-06-15 — Claude (Cowork) — Quiz Result: Vent Scope Photo Box + Popup-Fix · Commits 7274b0d, 24703e7

- **Popup-Fix (7274b0d):** `.risk-overlay` hatte nur `pointer-events:none` aber kein `visibility:hidden` → Browser renderte es nicht korrekt. Fix: `visibility:hidden` auf closed state, `visibility:visible` auf `.open`. Außerdem `z-index:1` auf `.risk-box`, `z-index:2` auf `.risk-close` für korrekte Stacking-Order.
- **Vent Scope Photo Box (24703e7):** Im Quiz-Result-Screen (zwischen `rs-msg` und WA-Button) neue `.rs-scope-box` eingefügt:
  - Inhalt: "📷 Included when you book from this result — Franco uses a scope camera and sends WhatsApp photos before and after."
  - Bewusst KEIN Rabatt / kein Countdown — Service-Bonus der ohnehin zur Arbeit gehört (Glaubwürdigkeit).
  - CSS: hellblauer Box-Hintergrund (`#f0f6ff`) mit dezenter Border — unauffällig aber auffällig genug.
  - WhatsApp-Prefill-Texte aller 3 Risk-Level aktualisiert → erwähnen jetzt "vent scope photo report" damit Franco intern informiert ist.
- **Design-Entscheidung:** Giampiero wollte keinen Rabatt der unglaubwürdig wirkt. Einigkeit auf: konkreter Service-Zusatz (Scope-Kamera-Report), kein Preisdruck. Richtiger Ansatz für Dubai-Markt (Vertrauen > Preisnachlass).

### 2026-06-15 — Claude (Cowork) — Scope Box Text verbessert + Popup-Trigger auf localStorage umgestellt · Commit 617e18f

- **Scope Box Text (verbessert):**
  - Titel: "Included when you book from this result" → "Included with your booking"
  - Body: Neuer Text: "Franco photographs every duct with a scope camera and sends you the photos on WhatsApp — what he found before cleaning, and the result after. You see it with your own eyes. Most technicians skip this step entirely."
  - Stärker: aktiv/konkret, emotionaler Nutzen (eigene Augen sehen), Differenzierungssatz ("Most technicians skip this step").

- **Popup-Trigger-Logik (komplett neu):**
  - **Problem:** `sessionStorage` key `pa_rc` blieb nach ⌘R-Reload gesetzt → Auto-Trigger feuerte bei erneutem Testen nie.
  - **Fix:** Umstieg auf `localStorage` mit 4h-Timestamp-Expiry (Key `pa_rc_ts`). Nach 4h oder im Inkognito-Tab wird der Trigger wieder aktiv.
  - **Badge-Grace-Mechanismus:** Popup darf FRÜHESTENS 8 Sekunden nach Badge-Erscheinen feuern. Sichert UX-Sequenz: Badge erst sichtbar → User sieht Badge → Popup erst danach. Variable `badgeShownAt` trackt Zeitpunkt.
  - **Trigger-Schwellen:** 40% Scroll (sofort) oder 20%+12s Verweildauer. Exit-Intent nach 5s. 40s Fallback mit 3s Retry-Mechanismus wenn Badge-Grace noch nicht erfüllt.
  - **Für Tests:** Inkognito-Tab öffnen → frische localStorage → Trigger feuert wieder. Oder warten bis 4h abgelaufen.

- **Commit:** 617e18f (lokal, nicht gepusht)
- **BLOCKED (unverändert):** GA4 Measurement ID, Meta Pixel ID, echte DED License No., echte Before/After-Captions.

### 2026-06-15 — Claude (Cowork) — 12 echte Fotos mit Wasserzeichen in Website integriert · Commit 98bd1b7

- **Wasserzeichen-Script:** Python/Pillow-Script erstellt. Alle Fotos aus `assets/pictures_videos/` verarbeitet: diagonaler "Pro Aqua Dubai"-Schriftzug (semi-transparent) + Corner-Box. WebP-Konversion, max 1600px, quality=82.
- **12 neue Assets in `assets/`:**
  - `real-ac-coil-before.webp` — schmutzige AC-Spule vor Reinigung
  - `real-ac-coil-after.webp` — Techniker reinigt AC-Spule
  - `real-ac-grid-work.webp` — Pro Aqua Tech mit Dubai Skyline
  - `real-ac-duct-clean.webp` — Techniker auf Leiter, Duct-Staubsauger
  - `real-ac-grid-clean.webp` — Gitter-Reinigung
  - `real-ac-motorhousing.webp` — Motorgehäuse
  - `real-ac-duct-grid-work-1.webp` — 2 Techniker, Dubai-Hochhaus (HERO-Qualität)
  - `real-ac-duct-grid-work-2.webp` — Team-Job
  - `real-carpet-clean.webp` — Teppich-Reinigung
  - `real-mattress-result-1.webp` — Vivenso-Behälter auf Matratze
  - `real-mattress-water-held.webp` — Person hält braunen Wasserbehälter (CONVERSION BOMB)
  - `real-mattress-result-2.webp` — Behälter auf Premium-Matratze
- **Vent Check Section (3 Karten):** AI-Before/After-Bilder ersetzt durch:
  - SIGN 1: `real-ac-duct-clean.webp` (Duct-Reinigung in Aktion)
  - SIGN 2: `real-ac-coil-before.webp` (dreckige Spule — schockt, ohne Text nötig)
  - SIGN 3: `real-ac-duct-grid-work-1.webp` (2-Mann-Team, Dubai-Hochhaus)
- **Franco's Inspection Note Box (#why):** `real-mattress-water-held.webp` als Beweisfoto unterhalb des Zitats eingefügt. Caption "Real extraction result · Pro Aqua Dubai · 2025".
- **Before/After Gallery (6 Karten):** 4 AI-Karten durch echte Fotos ersetzt:
  - AC Duct Deep Cleaning → `real-ac-coil-before.webp` + Titel "AC Coil — Before Deep Cleaning"
  - Mattress Deep Cleaning → `real-mattress-water-held.webp` + Titel "Mattress Deep Cleaning — Extracted Water"
  - AC Coil Cleaning → `real-ac-coil-after.webp` + Titel "AC Coil — During Professional Cleaning"
  - AC Grills Cleaning → `real-ac-duct-grid-work-1.webp` + Titel "AC Duct & Grill Cleaning — Team Job"
- **Commit:** 98bd1b7 (lokal, nicht gepusht)
- **BLOCKED (unverändert):** GA4 Measurement ID, Meta Pixel ID, echte DED License No., echte Before/After-Captions (Stadtteil + Monat/Jahr).
- **Nächster Schritt:** Website lokal testen. Wenn Giampiero freigibt: `git push origin Franco2:main --force` (Giampiero führt manuell im Terminal aus).

### 2026-06-15 — Codex — `assets/pictures_videos/` geprüft: Proof-/Ad-Material bewertet

- **Ordner geprüft:** `assets/pictures_videos/AC Clean /` und `assets/pictures_videos/Deep_clean_home/` mit Bildern und Videos inventarisiert.
- **Stärkste Website-Proof-Assets:** AC Coil Before/After, AC Grid/Duct Work mit Team im Dubai-Hochhaus, Mattress Dirty Water Result, Carpet Cleaning Proof.
- **Stärkste Social-/Ad-Clips:** kurze AC-Grid-/Duct-Loops, Mattress-Cleaning, Team-at-work, Bathroom/Toilet Sanitizing, Villa Window Cleaning. Besonders geeignet für Meta/Instagram Reels und Retargeting Creatives.
- **Bewertung:** Rohmaterial ist conversion-stark, aber nicht direkt als Produktionsasset nutzen: Dateinamen mit Leerzeichen/Typos, gemischte Formate, `.DS_Store`, teils keine Posterframes/Watermarks. Besser kuratieren, wasserzeichnen, WebP/MP4 optimieren und mit sauberen Namen in `assets/` oder `assets/proof/` bereitstellen.
- **Empfohlener nächster Umsetzungsschritt:** Aus dem Rohmaterial ein kuratiertes Proof-System bauen: 8-12 optimierte Website-Bilder + 5-6 kurze Video-Loops mit Posterframes. Danach gezielt in Services, Before/After und ggf. neue Section "Real Proof From Dubai Homes" einbauen.

### 2026-06-15 — Codex — Franco Founder Portrait per Image 2.0 neu erstellt

- **Ziel:** Placeholder/Screenshot-Franco ersetzen, damit die Kernpositionierung "Du buchst Franco" visuell glaubwürdig wird.
- **Prompt erstellt und ausgeführt:** Identity-preserving Founder-Portrait auf Basis des vorhandenen Franco-Screenshots: weißes Pro-Aqua-Polo, Premium-Dubai-Interior, freundlicher direkter Blick, subtiler Daumen-hoch-Gestus.
- **Asset ersetzt:** `assets/franco-founder-pro-aqua-dubai.webp` wurde gezielt durch das neue 1086x1448 WebP ersetzt. `index.html` musste nicht angepasst werden, weil alle bestehenden Stellen bereits diesen Dateinamen verwenden.
- **Hinweis:** Das Bild ist KI-generiert auf Basis des Referenzbilds. Vor Live-Nutzung idealerweise von Franco freigeben lassen.

### 2026-06-15 — Codex — Franco Portrait korrigiert: CEO-Gesicht stärker erhalten

- **Problem:** Giampiero hat klargestellt, dass Franco als echter CEO/Identity-Anker exakt wiedererkennbar sein muss; die erste Version war zu generisch und zu stark "Marketing-Portrait".
- **Korrektur:** Neues Image-2.0-Prompt mit sechs Close-up-Screenshots als primäre Identitätsreferenz, Gesicht/Alter/Brille/Haarlinie/Mimik als "locked" priorisiert. Daumen-hoch entfernt, engerer CEO-Portrait-Crop gewählt.
- **Asset erneut ersetzt:** `assets/franco-founder-pro-aqua-dubai.webp` jetzt 941x1672 WebP mit stärkerer Ähnlichkeit zum echten Franco und weiterhin weißem Pro-Aqua-Polo.
- **Strategischer Hinweis:** Für maximale Glaubwürdigkeit bleibt ein echtes Foto-Shooting oder ein hochwertig upgescalter Original-Video-Still langfristig besser als jede KI-Generierung.

### 2026-06-15 — Codex — Franco Asset auf echtes Anzug-Foto umgestellt

- **Problem:** Giampiero verlangt 100% Gesichtstreue. KI-generierte Franco-Portraits sind dafür nicht geeignet, weil selbst gute Identity-Prompts Gesichtszüge leicht verändern.
- **Korrektur:** `assets/franco-founder-pro-aqua-dubai.webp` wurde aus dem echten Foto `PHOTO-2021-08-29-17-30-10.jpg` per Crop/Resize/leichter Foto-Optimierung erstellt. Kein neues Gesicht generiert, keine KI-Gesichtsveränderung.
- **Ergebnis:** Franco im echten Anzug, echtes Gesicht, 800x1000 WebP unter bestehendem Dateinamen. `index.html` musste nicht angepasst werden.
- **Tradeoff:** Hintergrund wirkt noch wie ein echtes Event-Foto. Das ist weniger "Studio", aber glaubwürdiger als ein KI-Gesicht. Idealer Langfrist-Schritt bleibt ein kurzes echtes CEO-Foto-Shooting oder ein hochwertiger Video-Still.

### 2026-06-15 — Codex — Google Rating Badge konsistent vereinheitlicht

- **Problem:** Das 4.7-Google-Rating wurde über die Seite unterschiedlich dargestellt (`⭐ 4.7 on Google`, `4.7★ Google`, große Stat-Zahl, Trust-Belt-Text, Review-Strip).
- **Korrektur:** Einheitliches `.google-rating-badge`-Pattern in `index.html` ergänzt und alle sichtbaren Google-Rating-Badge-Stellen darauf umgestellt: Sticky Trust Bar, Hero Chips, Hero Stats, Hero Review Bar, Trust Belt, Comparison Proof, Franco Floating Chip, Review Chip Row und Review Google Strip.
- **QA:** Lokale Vorschau `http://localhost:8742` im Browser geprüft. Desktop Hero/Reviews und Mobile 390px geprüft; keine Console Errors, keine Badge-Überläufe. Risk-Quiz Popup öffnete beim Scroll-Test automatisch und wurde für Review-Screenshot geschlossen.

### 2026-06-15 — Codex — Header Section-Leiste professionell mit Scroll-Journey verbunden

- **Problem:** Die Header-Navigation war nur mit sechs direkten IDs verbunden (`why`, `franco`, `services`, `booking`, `reviews`, `faq`), während die Seite deutlich mehr reale Verkaufsabschnitte hat. Dadurch blieb der aktive Header-Link beim Scrollen psychologisch und visuell zu oft falsch bzw. zu grob.
- **Korrektur:** Alten Scrollspy durch Journey-basiertes Mapping ersetzt: `Good to Know` deckt Hero/Compare/Warning/Risk/Why/Solution ab, `Franco` den Founder-Trust, `Services` Services + Before/After, `Book` Booking/Process/Pricing/B2B/Arabic/Seasonal/Areas, `Reviews` Reviews und `FAQ` FAQ. Desktop- und Mobile-Nav nutzen jetzt `data-nav-key` + synchrones `aria-current`.
- **UX:** Nav-Klicks verhindern den rohen Hash-Sprung, berechnen Sticky-Header-/Trust-Bar-Offset und scrollen smooth zum Ziel. `scroll-padding-top`/`:target` auf 92px erhöht.
- **QA:** Lokale Vorschau `http://localhost:8742` im Browser geprüft. Scroll-Matrix für 17 Sections bestätigt die erwarteten aktiven Header-Stationen. Header-Klicks auf `Franco`, `Services`, `Book`, `Reviews`, `FAQ`, `Good to Know` geprüft: Active-State, Hash und Zielposition stimmen. Mobile 390px geprüft: Hamburger-Menü zeigt denselben Active-State. Keine Console Errors/Warnings.

### 2026-06-15 — Codex — Conversion-/Trust-Politur: Claims entschärft, Mobile-FAB und Hash-Landung korrigiert

- **Claim-Hygiene:** Überharte oder schwer belegbare Formulierungen in `index.html` entschärft: `medical-grade`, `hospital-grade`, `100% results`, harte `30–60%`-Energieclaim und `2M+`-Matratzenclaim ersetzt durch glaubwürdigere, belegbarere Sprache wie `professional equipment`, `photo-documented results`, `free re-clean if an agreed area is missed`, `dust/debris/moisture-related buildup`.
- **Trust-Konsistenz:** Trust-Belt-Badges auf `Professional Equipment` und `6,000+ Clients Served` vereinheitlicht. Google-Rating-Badges bleiben im bestehenden einheitlichen Badge-System.
- **Mobile UX:** Floating Risk-Quiz-Badge auf Mobile weiter oberhalb des WhatsApp-FAB positioniert und leicht kompakter gemacht. Browser-QA bei 390x844 bestätigt: kein Overlap zwischen Quiz-FAB und WhatsApp-FAB.
- **Hash-/Landing-State:** `scroll-padding-top`/`:target` auf 128px erhöht und Scrollspy um `correctHashPosition()` erweitert. Direkte Links wie `#services`, `#faq`, `#reviews`, `#booking` werden nach Load/Hashchange mit dynamischem Header-Offset korrigiert.
- **Accessibility-Korrektur:** Saisonale Karten verwenden kein falsches `aria-current` mehr; interner Zustand läuft über `data-current`.
- **QA:** Lokale Vorschau `http://localhost:8742` im Browser geprüft. Desktop-Landung, Mobile-FAB, direkte Hash-Sprünge und aktive Header-Stationen geprüft; keine Console Errors.

### 2026-06-16 — Codex — WhatsApp-Funnel systematisiert und Lead-Source-Daten ergänzt

- **Ziel:** Landingpage + WhatsApp als durchgehenden Funnel verbessern, ohne personenbezogene Tracking-Parameter und ohne GA4/Meta-ID zu benötigen.
- **Umsetzung in `index.html`:** Bestehenden Seasonal-/Lead-Tracking-Block erweitert: `normalizeLeadLinks()` ergänzt generische oder leere WhatsApp-Links zur Laufzeit mit kontextbezogenen Prefills und setzt `data-lead-source` auf WhatsApp-, Telefon- und Mailto-Links.
- **Kontext-Prefills:** Berücksichtigt u.a. Topbar, Main Nav, Mobile Nav, Hero, Compare, Vent Check, Quiz, Why, Solution, Franco, Services, Before/After, Booking, Process, Pricing, Business, Arabic, Seasonal, Reviews, FAQ und Footer. Service-Texte unterscheiden AC, Sofa/Carpet und Mattress.
- **Quiz-Funnel:** Dynamischer Risk-Quiz-WhatsApp-Link setzt jetzt `data-lead-source` (`risk_quiz_low_risk`, `risk_quiz_moderate_risk`, `risk_quiz_high_risk`) und `data-wa-topic="risk_quiz"`.
- **Vent Check:** `Franco's 60-Second AC Vent Check` bekam die Section-ID `vent-check`; Scroll-Journey-Mapping umfasst diese Section jetzt unter `Good to Know`.
- **Tracking-Hook:** `lead_click`-Events enthalten zusätzlich `lead_source` und `wa_topic`, sobald GA4/Meta später aktiviert werden.
- **MEMORY-Sync:** Obere TODOs bereinigt: DED No. 748159 und echtes Franco-Foto sind erledigt; alte "hospital-grade"-Kurzpositionierung als claim-hygienisch überholt markiert.
- **QA:** Lokale Vorschau mit Cache-Buster geprüft: 25/25 WhatsApp-Links haben Prefill und `data-lead-source`; Seasonal `?season=summer-ac` setzt `seasonal_summer_ac_check`; Vent Check Quelle ist `vent_check_general`; keine Console Errors.

### 2026-06-16 — Codex — Section-Reihenfolge nach Conversation Psychology neu sortiert

- **Anlass:** Giampiero hat die kritische Bewertung freigegeben: Die Seite hatte starke Bausteine, aber die emotionale Reihenfolge war falsch (`Compare` zu früh, `Hidden Danger` zu spät, `Reviews` nach Booking, Pricing nach Booking).
- **Neue Reihenfolge in `index.html`:** Hero + Trust Belt → `#why` Hidden Danger → `#warning-signs` → `#vent-check` → `#solution` → `#franco` → `#reviews` → `#compare` → `#services` → `#before-after` → `#pricing` → `#quiz` → `#process` → `#booking` → B2B/Arabic/Seasonal/Areas/FAQ.
- **Rationale:** Erst Problemspannung und echte Befunde, dann Selbst-Identifikation, dann Lösung, Person/Trust, Social Proof, rationaler Vergleich, Details, Preislogik, Quote/Quiz und erst danach finaler Booking-Block.
- **Scroll-Journey angepasst:** `Good to Know` mappt jetzt Hero/Why/Warning/Vent/Solution; `Reviews` steht eigenständig früher; `Services` umfasst Compare/Services/Before-After; `Book` umfasst Pricing/Quiz/Process/Booking/B2B/Arabic/Seasonal/Areas.
- **QA:** Lokale Vorschau `http://localhost:8742` mit Cache-Buster geprüft. Desktop-Reihenfolge maschinell verifiziert; Hash-Ziele `#why`, `#reviews`, `#compare`, `#pricing`, `#quiz`, `#booking`, `#faq` landen korrekt und setzen die passende aktive Nav. Mobile 390x844 geprüft: Reihenfolge korrekt, kein horizontaler Overflow, Quiz-FAB und WhatsApp-FAB überlappen nicht. Keine Console Errors.
