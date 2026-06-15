# Conversation Psychology Audit — Pro Aqua Dubai Landing Page

**Stand:** 2026-06-16 · **Analyst:** Claude (Opus) · **Basis:** `index.html`, `conversion-strategy.md`, `MEMORY.md`, `conversion-research/state-of-art-conversion-psychology.md`
**Branch:** Franco2 · **Kein `git push` ohne Giampiero's Freigabe. index.html wurde NICHT verändert — reine Analyse.**

> Vorab: Die Seite ist schon stark. Claim-Hygiene wurde gut umgesetzt — kein `100%`, `medical-grade`, `hospital-grade`, `certified`, `2M+` im sichtbaren Text. Der größte Hebel ist jetzt **nicht** mehr Copy, sondern **Reihenfolge**. Die Seite ist gut gebaut, aber sie erzählt das Gespräch in der falschen Sequenz.

---

## A. Conversation Flow Score: **6 / 10**

**Begründung (3 Sätze):** Jede einzelne Sektion ist handwerklich gut und meist claim-sauber, aber die Reihenfolge folgt der Logik des Anbieters, nicht dem inneren Monolog des Käufers. Der **Differenzierungsblock (#compare)** steht auf Position 2 — er beantwortet „Warum Proaqua und nicht jemand anderen?", bevor der Besucher überhaupt akzeptiert hat, dass er ein Problem hat. Und der **harte Buchungs-Ask (#booking, Pos. 10)** kommt **vor** Reviews (11), Process (12) und Pricing (13) — der Besucher wird zum Abschluss gedrängt, bevor Social Proof, Ablauf und Preis-Sicherheit geliefert sind.

### Aktuelle Reihenfolge → Monolog-Phase

| # | Sektion | Monolog-Phase | Passt? |
|---|---|---|---|
| 1 | Hero | Awareness | ✓ |
| 2 | Compare | **Differentiation (Phase 7)** | ✗ viel zu früh |
| 3 | Warning Signs | Problem-Erkennung | ✓ (gut), aber nach Compare |
| 4 | Vent Check | Problem-Erkennung | ✓ |
| 5 | Quiz | **Action (Phase 10)** | ✗ zu früh — primärer CTA vor Trust/Proof |
| 6 | Why / Hidden Danger | Amplification | ✓ aber nach dem Action-Ask |
| 7 | Solution | Solution Clarity | ✓ |
| 8 | Franco | Trust / Authority | ✓ (gehört früher) |
| 9 | Services | Solution-Detail | ✓ |
| 10 | Before/After | Amplification/Proof | ✗ Proof zu spät |
| 11 | Booking | **Action** | ✗ vor Reviews/Process/Pricing |
| 12 | Reviews | Social Proof | ✗ nach dem Booking-Ask |
| 13 | Process | Reassurance | ✗ nach dem Booking-Ask |
| 14 | Pricing | Commitment / Low Risk | ✗ nach dem Booking-Ask |
| 15 | Business/B2B | (Nebensegment) | ✓ korrekt unten |
| 16 | Arabic | (Sprach-Layer) | ✓ |
| 17 | Seasonal | (Trigger-Layer) | ✓ |
| 18 | Areas | (Local Signal) | ✓ |
| 19 | FAQ | Objection-Cleanup | ✓ korrekt zuletzt |

### Optimale Reihenfolge (mit Begründung pro Wechsel)

1. **Hero** — bleibt. *(„Stop mich")*
2. **Warning Signs** ⬆ (von 3) — direkt nach dem Hook kommt Selbst-Identifikation: „Ist das wirklich mein Problem?". Der Besucher muss sein Problem erkennen, bevor irgendetwas verkauft wird.
3. **Vent Check** — bleibt nach Warning Signs. Interaktive Selbst-Diagnose vertieft die Problem-Erkennung.
4. **Why / Hidden Danger** ⬆ (von 6) — Amplification: „Zeig mir Beweise, dass das real ist." Folgt logisch auf die Selbst-ID, bevor wir die Lösung anbieten.
5. **Before/After** ⬆ (von 10) — visueller Beweis gehört zur Amplification, nicht ans Ende. „Das wächst in deinem Heim — bis wir kommen." Maximale Wirkung direkt nach den WHO/EPA-Daten.
6. **Solution** ⬇ (von 7) — jetzt, wo die Angst aufgebaut ist, kommt Relief: „Was passiert konkret, wenn ich buche?"
7. **Services** — Solution-Detail/Utility, direkt an Solution angeschlossen.
8. **Franco** ⬆ (von 8, faktisch früher) — „Wer kommt in meine Wohnung?". Bei hohem Trust Gap muss diese Antwort **vor** den ersten harten Buchungs-Ask.
9. **Reviews** ⬆ (von 12) — „Haben andere das schon gemacht?". Social Proof unmittelbar nach Authority = Trust-Block am Stück.
10. **Compare** ⬇ (von 2) — **erst jetzt** Differenzierung: „Warum Proaqua und nicht jemand anderen?". Der Vergleich überzeugt nur, wenn das Problem schon akzeptiert ist.
11. **Pricing** ⬆ (von 14) — „Was kostet es ungefähr?". Low-Risk-Commitment kommt vor dem Process-Reassurance.
12. **Process** ⬇ (von 13) — „Was passiert nach dem Klick?". Letzte Reassurance vor der Aktion.
13. **Quiz** ⬇ (von 5) — personalisierter Einstieg in die Aktion, jetzt wo Vertrauen, Proof und Preis sitzen.
14. **Booking** ⬆ (von 11) — der harte Ask ganz am Ende des Überzeugungswegs.
15–18. **Business → Arabic → Seasonal → Areas** — Nebensegmente/Layer, korrekt unten.
19. **FAQ** — Objection-Cleanup zuletzt. ✓

**Kernprinzip:** Aktuell springt der Besucher zwischen Emotion (Hero) → Ratio (Compare) → Emotion (Warning/Why) → Aktion (Quiz) → Emotion (Why). Die optimale Reihenfolge baut **erst** emotional auf (Problem → Proof → Relief → Trust → Social Proof) und schaltet **dann** die rationalen/Aktions-Module (Compare → Pricing → Process → Quiz → Booking).

> **Umsetzungs-Hinweis:** index.html ist groß. Sektionen sind als `<section id="...">`-Blöcke gekapselt — ein Reorder lässt sich als gezieltes Ausschneiden/Einfügen ganzer Blöcke machen, nicht durch Neuschreiben. Anker-Links in der Nav (`#franco`, `#reviews` …) bleiben gültig, da sie auf IDs zeigen.

---

## B. Sektions-Audit (19 Sektionen)

**Hero** · Score: 8/10
Stärke: Starker Identity-/Fear-Hook („Your Dubai home looks clean. Your AC ducts don't."), Franco-Karte mit Foto + Zitat, 3 Trust-Micro-Proofs (Fixed price / same team / before&after), Re-clean-Badge. 3+ Trust-Schichten gleichzeitig sichtbar.
Schwäche: Sub-Headline verwässert den Schlag — „Dust, allergens & moisture-related buildup … typical apartment jobs take around 2–3 hours" mischt Angst und Logistik (Dauer) in einem Satz.
Verbesserung: Dauer-Detail aus der Sub-Headline raus, dort nur Angst→Relief lassen; „2–3 hours" wandert in die Trust-Belt-Chips.

**#compare** · Score: 8/10 (inhaltlich) / 4/10 (Position)
Stärke: Bestes Honest-Comparison-Beispiel der Seite — „Best for: Quick general tidying / Not built for: Hidden contaminants". 5 Trust-Schichten komprimiert. „7-Fragen-Checkliste" ist ein exzellenter Objection-Killer.
Schwäche: Steht auf Position 2 — Differenzierung, bevor das Problem erkannt ist. Der Besucher vergleicht 3 Optionen, die er noch nicht haben will.
Verbesserung: Block nach unten verschieben (Pos. 10, nach Reviews). Inhalt unverändert lassen.

**#warning-signs** · Score: 8/10
Stärke: 5 bildstarke Symptom-Karten + „Start Risk Check Quiz — Free". Perfekte Selbst-Identifikation, genau die richtige Phase-2-Mechanik.
Schwäche: Sitzt hinter dem Compare-Block, dadurch verspätete Problem-Erkennung.
Verbesserung: Auf Position 2 (direkt nach Hero) ziehen.

**#vent-check** · Score: 9/10
Stärke: „Franco's 60-Second AC Vent Check" — niedrigschwellige, sofort umsetzbare Selbst-Diagnose mit persönlichem Anker (Franco). Sehr stark.
Schwäche: Endet potenziell als totes Ende, wenn der einzige Ausweg WhatsApp ist und der Nutzer noch nicht bereit ist.
Verbesserung: Sekundären Pfad anbieten („Noch unsicher? Sieh, was wir typischerweise finden ↓" → Anker auf #why).

**#quiz** · Score: 7/10 (inhaltlich) / 4/10 (Position)
Stärke: „Know What You're Getting Before You Spend a Dirham" = Identity (smarter Käufer). Risk-Reversal-Chips statt Disclaimer. „Quote held for 24 hours" = plausible statt Fake-Urgency.
Schwäche: Primärer Aktions-Trigger auf Position 5 — feuert „Claim My Free Inspection", bevor Franco (Trust), Reviews (Social Proof) und Pricing gesehen wurden.
Verbesserung: Quiz als Aktions-Modul nach hinten (Pos. 13). Der Warning-Signs-CTA bleibt vorne als Einstieg ins gleiche Quiz — so geht der frühe Zugang nicht verloren.

**#why (Hidden Danger)** · Score: 7/10
Stärke: Ehrlich gerahmt als „What Franco's team actually documents — not a lab study". WHO/EPA-Quellen genannt. „12 Monate"-Spezifität.
Schwäche: Header sagt „5× More Indoor Pollution", Body sagt „2–5×" (EPA) — Inkonsistenz, der Header überstrapaziert die Quelle. Endet ohne starke Relief-Brücke.
Verbesserung: Header auf „2–5× More Indoor Pollution" angleichen (deckungsgleich mit Quelle); am Ende klarer Übergang zu Solution.

**#solution** · Score: 7/10
Stärke: „How We Fix It — For Good". Equipment + trained technicians + Foto-Doku + Re-clean. Konkrete Relief-Antwort.
Schwäche: Bullet-Struktur listet Features, paart sie aber nicht explizit mit der jeweiligen Angst aus #why.
Verbesserung: Pro Tile Mini-Brücke „Problem → unsere Lösung" (z.B. „Musty smell? → Wir reinigen FCU-Innenraum, Coil & Drain Pan, nicht nur Filter.").

**#franco** · Score: 8/10
Stärke: „Why 6,000+ Dubai Families Trust Franco" — Single Metric Hammer + Named Authority + Cultural Signal (seit 2016). Echtes Foto eingebaut.
Schwäche: Position 8 — die Antwort auf „Wer kommt in meine Wohnung?" kommt nach dem Quiz-Ask. Story ist noch wenig spezifisch (wann/warum gegründet).
Verbesserung: Vor den ersten harten Ask ziehen (Pos. 8 in neuer Reihenfolge = vor Reviews/Compare). 1–2 Sätze Gründungs-Story für Specificity.

**#services** · Score: 6/10
Stärke: Service-spezifische WhatsApp-Prefills pro Karte (reduziert Reibung). Echte Fotos.
Schwäche: Headline „Professional Cleaning Services in Dubai" ist reine Utility — 0 Identity, austauschbar mit jedem Wettbewerber. Choice-Overload-Risiko, wenn zu viele gleichwertige Services nebeneinander stehen.
Verbesserung: Headline auf Identity/Outcome drehen (siehe D). Direkt an #solution koppeln.

**#before-after** · Score: 7/10 (inhaltlich) / 5/10 (Position)
Stärke: Echte, wassergezeichnete Job-Fotos = stärkste Specificity-Schicht. „Pictures Say More Than 1,000 Words".
Schwäche: Position 10 — der visuelle Beweis kommt viel zu spät, erst nach Solution/Services. Captions noch „Dubai, UAE · 2025" statt Stadtteil+Monat (BLOCKED auf Giampiero).
Verbesserung: Direkt hinter #why als Amplification-Proof (Pos. 5). Echte Captions nachziehen, sobald geliefert.

**#booking** · Score: 6/10 (inhaltlich) / 3/10 (Position)
Stärke: 3 klare Pfade (WhatsApp / Call / Quote), „Responds within minutes · 7 days a week", „Free · No Obligation".
Schwäche: Position 10 — harter Abschluss-Ask **vor** Reviews, Process und Pricing. Der Besucher soll buchen, bevor er Social Proof, Ablauf und Preis-Sicherheit hat.
Verbesserung: Ans Ende des Überzeugungswegs (Pos. 14, nach Process). Headline „Your Home Deserves Better Air ." hat einen Tippfehler (Leerzeichen vor dem Punkt) — bereinigen.

**#reviews** · Score: 8/10
Stärke: „Rated 4.7 Stars by Dubai Families", echte WhatsApp-Screenshots, Named Clients (Kavi Kapila, P.V., Chantelle Thompson), „60 Google reviews".
Schwäche: Position 12 — Social Proof nach dem Booking-Ask. „Verified WhatsApp Review" als Label ist leicht überstrapaziert (es ist ein echter Screenshot, keine Verifizierung).
Verbesserung: Vor Compare ziehen (Pos. 9). „Verified WhatsApp Review" → „Real WhatsApp message".

**#process** · Score: 7/10
Stärke: „Simple, Transparent Process" — 4 klare Schritte (Share → Free Inspection → Fixed Quote → Clean & Proof). Direkte Reassurance.
Schwäche: Position 13 — die Antwort auf „Was passiert nach dem Klick?" kommt nach dem Booking-Ask.
Verbesserung: Vor Booking ziehen (Pos. 12).

**#pricing** · Score: 8/10
Stärke: „Fixed Price. No Surprises." + „free inspection first … fixed price before we start" + Clean-Air-Guarantee-Karte. Beste Risk-Reversal-Sektion.
Schwäche: Position 14 — die Preis-Sicherheit kommt nach dem Booking-Ask. Re-clean ist die einzige Garantie; kein Geld-zurück → Einwand „verliere ich mein Geld?" nur teilweise gedeckt.
Verbesserung: Vor Process/Booking ziehen (Pos. 11). Optional ergänzen: „If we can't improve it, you don't pay for that area." — nur wenn Franco das wirklich so handhabt.

**#business (B2B)** · Score: 7/10
Stärke: Sauber als Nebensegment unten, eigene Zielgruppe (Property Managers / Holiday Homes / Offices), eigener CTA. Hält die Hauptbotschaft frei.
Schwäche: Wenig Trust-Schichten in diesem Block selbst (kein B2B-spezifischer Proof / Referenz).
Verbesserung: Eine B2B-Referenz oder „X units serviced" ergänzen, sobald belegbar.

**#arabic** · Score: 7/10
Stärke: Echtes Cultural Signal für arabischsprachige Villa-Kunden. Korrekt als eigener Layer.
Schwäche: Aus der Analyse nicht prüfbar, ob die arabische Copy denselben Trust-Stack trägt wie die englische.
Verbesserung: Sicherstellen, dass Festpreis + Re-clean + Franco auch im arabischen Block stehen (Trust darf nicht sprachabhängig sein).

**#seasonal** · Score: 7/10
Stärke: „Book Cleaning When Dubai Actually Needs It" — echte, Dubai-spezifische Trigger (AC-Dauerbetrieb, Staubwochen, Familienbesuch, Allergie-Reset). Kein Fake-Urgency.
Schwäche: Liegt sehr weit unten; saisonale Trigger könnten als Kampagnen-Landing-State weiter oben mehr leisten.
Verbesserung: Als wiederverwendbarer Block für UTM-/Kampagnen-States markieren (Hero-Variante bei Saison-Traffic).

**#areas** · Score: 6/10
Stärke: „We Serve All of Dubai" — Local SEO + Distanz-Einwand („kommt ihr zu mir?") gedeckt.
Schwäche: Reine Liste, 0–1 Trust-Schichten, kein psychologischer Mehrwert.
Verbesserung: Social Norm einbauen: „Families in Dubai Marina, JVC & Arabian Ranches book AC checks before summer" (aus dem Research-Dok, Goldstein/Cialdini).

**#faq** · Score: 7/10
Stärke: Korrekt zuletzt als Objection-Cleanup. Deckt Kosten-Logik, Häufigkeit (12 Mon. / 6–9 Mon. bei Kindern/Haustieren), Foto-Proof.
Schwäche: Aus dem Extrakt nicht eindeutig, ob „Safe for Kids & Pets" und „Wie schnell bekomme ich einen Termin?" prominent als FAQ-Eintrag stehen (Safety steht aktuell nur als Trust-Chip).
Verbesserung: Explizite FAQ-Einträge „Is it safe for kids and pets?" und „How fast can I get an appointment?" ergänzen — beides häufige Dubai-Einwände.

---

## C. Die 3 größten Hebel (Impact / Aufwand)

### Hebel 1 — Sektions-Reorder (Booking & Compare an die richtige Stelle)
**Problem:** Der harte Buchungs-Ask (#booking) steht vor Reviews, Process und Pricing; der Differenzierungsblock (#compare) steht auf Position 2 vor der Problem-Erkennung. Der Besucher wird zur Aktion und zum Vergleich gedrängt, bevor Trust, Social Proof und Preis-Sicherheit aufgebaut sind.
**Warum dieser Hebel > andere Fixes:** Reine Umsortierung — kein neuer Content, kein neuer Claim, kein Risiko. Verändert aber den gesamten emotionalen Bogen. Der größte Effekt pro Aufwand.
**Umsetzung:** Ganze `<section id="…">`-Blöcke verschieben (Ausschneiden/Einfügen, nicht neu schreiben). Zielreihenfolge: Hero → Warning Signs → Vent Check → Why → Before/After → Solution → Services → Franco → Reviews → Compare → Pricing → Process → Quiz → Booking → Business → Arabic → Seasonal → Areas → FAQ. Nav-Anker bleiben gültig (zeigen auf IDs). Nach dem Move: Scroll-Spy-Reihenfolge in der Nav-Logik angleichen.

### Hebel 2 — Trust-Block am Stück (Franco + Reviews vor den Ask)
**Problem:** „Wer kommt in meine Wohnung?" (Franco) und „Haben andere das gemacht?" (Reviews) sind über die Seite verteilt und stehen teils nach dem Aktions-Ask. Bei HOHEM Trust Gap ist das die teuerste Schwäche.
**Warum dieser Hebel > andere Fixes:** Kompression ist laut Trust-Stack-Framework selbst die Botschaft. Franco (Authority) direkt gefolgt von Reviews (Social Proof) erzeugt einen geschlossenen Vertrauensblock, der mehr wirkt als die Summe der verteilten Signale.
**Umsetzung:** #franco und #reviews als Paar direkt vor #compare platzieren (Teil von Hebel 1). Zusätzlich Single Metric Hammer „4.7★ aus 60 Google Reviews" konsequent in Hero-Trust-Belt UND Franco UND Reviews identisch wiederholen.

### Hebel 3 — Header-Quelle „5×" auf „2–5×" angleichen + „Eco-Safe" belegen
**Problem:** Zwei der wenigen verbliebenen Compliance-Risiken: Der #why-Header sagt „5× More Indoor Pollution", die Quelle (EPA) im Body sagt „2–5×". Und „Eco-Safe Products" ist ein unbelegter Soft-Claim.
**Warum dieser Hebel > andere Fixes:** Die Seite hat sich teuer Claim-Hygiene erarbeitet — eine einzige überstrapazierte Quelle untergräbt die mühsam aufgebaute Glaubwürdigkeit. Sehr kleiner Aufwand, schützt das gesamte Trust-Fundament.
**Umsetzung:** Header-Text „5 ×" → „2–5 ×" (deckungsgleich mit EPA-Body). „Eco-Safe Products" → konkret beschreiben, was verwendet wird (z.B. „Fragrance-free, child- & pet-safe products") oder mit Produktangabe belegen.

---

## D. Copy-Verbesserungen (10× Before / After)

1. **Hero-Sub** · [JETZT] „Dust, allergens & moisture-related buildup inside your AC ducts — typical apartment jobs take around 2–3 hours. Fixed price, fast booking when slots are available." → [BESSER] „The same air recirculates through your ducts every time the AC runs — dust, allergens and moisture-related buildup included." *Logistik (Dauer/Preis) gehört in die Chips, nicht in den emotionalen Hook.*

2. **#services Headline** · [JETZT] „Professional Cleaning Services in Dubai" → [BESSER] „Built for the Parts of Your Home You Can't See" *Utility → Identity; bestand den 3-Fragen-Test nicht (kein Mensch vorstellbar, funktioniert nicht ohne Produktbild).*

3. **#why Header** · [JETZT] „5 × More Indoor Pollution" → [BESSER] „2–5 × More Indoor Pollution" *Deckungsgleich mit der zitierten EPA-Quelle — keine Übertreibung über den Beleg hinaus.*

4. **#reviews Label** · [JETZT] „✓ Verified WhatsApp Review" → [BESSER] „✓ Real WhatsApp message" *„Verified" impliziert einen Verifizierungsprozess; „real" ist ehrlicher und genauso stark.*

5. **#booking Headline** · [JETZT] „Your Home Deserves Better Air ." → [BESSER] „Your Home Deserves Better Air." *Tippfehler (Leerzeichen vor Punkt) — bei einer Trust-Seite zählt jeder Fehler (Stanford Web Credibility).*

6. **#areas** · [JETZT] „We Serve All of Dubai" (reine Liste) → [BESSER] „Families in Dubai Marina, JVC and Arabian Ranches book their AC check before summer." *Konkrete soziale Norm schlägt allgemeine Reichweiten-Aussage (Goldstein/Cialdini).*

7. **#solution Intro** · [JETZT] „Professional equipment. Trained technicians. Photo-documented results…" → [BESSER] „That musty smell when the AC starts? It comes from inside the ductwork. Here's exactly how we remove it — for good." *Feature-Liste → Fear→Relief-Brücke aus der vorherigen Sektion.*

8. **Trust-Chip Safety** · [JETZT] „Eco-Safe Products" → [BESSER] „Fragrance-free · child- & pet-safe" *Unbelegter Soft-Claim → konkret und überprüfbar.*

9. **#vent-check Ende** · [JETZT] (nur WhatsApp-Ausgang) → [BESSER] zusätzlicher Link „Not sure yet? See what we typically find ↓" *Beseitigt das tote Ende für noch-nicht-bereite Besucher.*

10. **#franco** · [JETZT] „Why 6,000+ Dubai Families Trust Franco" → [BESSER] beibehalten + 1 Satz Specificity ergänzen: „I started Pro Aqua in 2016 after seeing what Dubai's heat and dust do to home AC systems." *Named Authority + Gründungs-Story erhöht Vertrauen mehr als die Zahl allein.*

---

## E. Kritische Claims — Compliance-Check

| Claim auf der Seite | Status | Maßnahme |
|---|---|---|
| „5 × More Indoor Pollution" (#why Header) | ⚠️ überstrapaziert (Quelle sagt 2–5×) | **Entschärfen** → „2–5 ×", deckungsgleich mit EPA-Body |
| „Eco-Safe Products" (Trust-Chip) | ⚠️ unbelegter Soft-Claim | **Belegen oder ersetzen** → „fragrance-free, child- & pet-safe" |
| „Safe for Kids & Pets" (Trust-Chip) | ⚠️ Sicherheitsaussage | **Belegen** (Produktangabe/SDS) oder als „designed to be safe for kids & pets" entschärfen |
| „Verified WhatsApp Review" (9×) | ⚠️ „verified" impliziert Prüfprozess | **Entschärfen** → „Real WhatsApp message" |
| „Google verified public rating" | ✓ vertretbar (Google-Reviews sind öffentlich) | belassen |
| „4.7★ · 60 reviews · 6,000+ families · since 2016" | ✓ belegbar (laut MEMORY) | belassen, konsistent wiederholen |
| „DED Lic. No. 748159" | ✓ echt (laut MEMORY 15.06.) | belassen; Scan separat ablegen für Ads/Compliance |
| „Dubai Municipality Approved" | ⚠️ Nachweis fehlt (laut MEMORY offen) | **NICHT anzeigen**, bis belegt — aktuell korrekterweise nicht im sichtbaren Text |
| WHO / US EPA Citations | ✓ Quellen genannt | echte Links ergänzen, wenn möglich |
| „Re-clean guarantee" | ✓ ehrlich (kein Geld-zurück behauptet) | belassen; Einwand „verliere ich mein Geld?" nur teilweise gedeckt |
| „100% / medical-grade / hospital-grade / certified / 2M+" | ✓ NICHT im sichtbaren Text | sauber — so halten |
| „Quote held for 24 hours" | ✓ plausibel, keine Fake-Scarcity | belassen |

**Gesamtbild Compliance:** Sehr sauber. Die einzigen echten Risiken sind die „5×"-Übertreibung und die zwei Safety-/Eco-Soft-Claims — alle drei mit minimalem Aufwand zu entschärfen.

---

## Reihenfolge der Umsetzung (Empfehlung)

1. **Sofort, null Risiko:** Compliance-Fixes aus E (5× → 2–5×, Verified → Real, Eco-Safe konkretisieren, Booking-Tippfehler).
2. **Größter Hebel:** Sektions-Reorder (Hebel 1+2) — als Block-Verschiebung, mit Desktop-/Mobile-Verifikation und Scroll-Spy-Anpassung danach.
3. **Danach:** Copy-Feinschliff aus D (Headlines #services/#solution, Franco-Story, Areas-Social-Norm).
4. **BLOCKED auf Giampiero:** echte Before/After-Captions (Stadtteil+Monat), DM-Approval-Nachweis, GA4/Meta-IDs.

*Keine fake-urgency, keine verschärften Claims, kein `git push` ohne Freigabe vorgeschlagen. index.html unverändert.*
