# Hero Headline A/B-Test — Codex Evaluation Prompt

## Kontext für Codex

Du analysierst 10 Hero-Headline-Varianten für **Pro Aqua Dubai** – einen professionellen Reinigungsservice (AC-Duct-Reinigung, Matratzen- und Teppichreinigung) mit Sitz in Dubai.

**Geschäftskontext:**
- Face of Brand: Franco (bekannt, vertrauenswürdig, seit 2016)
- Hauptkanal: WhatsApp-First (kein E-Commerce, kein Checkout)
- Zielgruppe: Expat-Familien in Dubai (ca. 88 % der Bevölkerung), Homeowner, Eltern mit Kindern
- USP: Hospital-grade cleaning · Fixed price · Same team every time · Before & after proof
- Social Proof: 6.000+ Kunden · 4,7★ Google · seit 2016
- Conversion-Ziel: WhatsApp-Klick → Beratungsgespräch mit Franco
- Aktuell implementierte Variante in `index.html`: **V1 (Contradiction Hook)**

**Wissenschaftliche Rahmenbedingungen für die Bewertung:**

### 1. Hormozi Value Equation
```
Value = (Dream Outcome × Perceived Likelihood of Achievement)
        ──────────────────────────────────────────────────────
        (Time Delay × Effort & Sacrifice)
```
- **Dream Outcome**: Gesunde Familie, saubere Luft, sicheres Zuhause
- **Perceived Likelihood**: Beweise, Social Proof, Autorität (WHO, EPA, 6.000+ Kunden)
- **Time Delay**: Je kürzer desto besser → "2–3 Stunden", "same day"
- **Effort & Sacrifice**: Je geringer desto besser → "One WhatsApp"

### 2. Seena Rez / TikTok Scroll-Stop Framework
- **Hyper-Dopamine Hook**: Erste 2–3 Sekunden müssen den Scroll unterbrechen
- Contradiction (falsche Erwartung vs. Realität) = stärkster Hook-Typ
- Curiosity Gap: Unvollständige Information zwingt zum Weiterlesen
- Fear of Missing Out: Verlustangst stärker als Gewinnhoffnung (Prospect Theory)
- **Regeln**: Kein Markenname früh · nicht wie Werbung aussehen · Muster brechen

### 3. Behavioral Science Prinzipien
- **Loss Aversion** (Kahneman & Tversky): Verluste wiegen 2× schwerer als gleichwertige Gewinne
- **Identifiable Victim Effect**: Konkrete Bedrohung für Kinder/Familie > abstrakte Statistik
- **Availability Heuristic**: Lebhafte, leicht vorstellbare Szenarien erhöhen wahrgenommenes Risiko
- **Social Proof Cascades**: Große Zahlen (6.000+) erhöhen wahrgenommene Sicherheit
- **Pattern Interruption**: Unerwartete/widersprüchliche Aussagen stoppen automatisches Lesen

### 4. Dubai-spezifische Conversion-Faktoren
- AC ist Lebensnotwendigkeit (50°C Sommer) → hohe emotionale Salienz
- Staubsaison + Mould-Risiko durch Feuchtigkeit → konkrete lokale Angst
- "12 months" Referenz trifft Expat-Realität (zu beschäftigt, vergessen)
- Arabische Gastfreundschaft: Sauberkeit = Würde des Hauses → Schamgefühl-Trigger möglich
- WhatsApp-Kultur: Low-friction-CTA entscheidend

---

## Bewertungsrubrik (4 Dimensionen, je 1–5 Punkte)

| Dimension | 1 Punkt | 5 Punkte |
|---|---|---|
| **H — Hook-Stärke** | Generisch, kein Scroll-Stop | Unmittelbares Pattern-Interrupt, Contradiction oder Curiosity Gap |
| **V — Hormozi-Wert** | Kein Bezug zu Value Equation | Alle 4 Elemente adressiert (Outcome, Likelihood, Time, Effort) |
| **E — Emotionale Resonanz** | Neutral, keine Emotion | Starke Identifikation (Familie, Kinder, Scham, Angst, Erleichterung) |
| **D — Dubai-Spezifität** | Könnte überall stehen | Explizit Dubai-Kontext (AC, Hitze, 12 Monate, Lifestyle) |

**Gesamt-Score**: H + V + E + D (max. 20 Punkte)

---

## Die 10 Varianten

Jede Variante besteht aus:
- **H1** (Headline, max. 2 Zeilen, sichtbar above the fold)
- **Sub** (Erklärungstext, ca. 1–2 Sätze)
- **Claim** (Closing-Statement, fettgedruckt)

---

### V1 — Contradiction Hook *(aktuell live in index.html)*

**H1:**
> Your Dubai apartment looks clean.
> Your AC ducts **don't.**

**Sub:**
> Mold, bacteria & 2M+ dust mites hiding in your ducts & mattress — **removed in 2–3 hours**. Fixed price, same-day available.

**Claim:**
> Hospital-grade cleaning at family-fair fixed prices. One team, one face you know — proof on every job.

**Claude Pre-Score:** H:4 · V:5 · E:4 · D:4 = **17/20**
**Stärken:** Stärkster Contradiction-Hook, direkte Hormozi-Elemente im Sub (2–3h, fixed price), universell verständlich
**Schwächen:** "looks clean / don't" ist ein bekanntes Copywriting-Muster — könnte als zu konstruiert wirken

---

### V2 — EPA-Statistik-Hook

**H1:**
> The air inside your Dubai home is 5× more polluted than outside.
> Your AC ducts are the reason.

**Sub:**
> Certified by the US Environmental Protection Agency — and cleaned by Pro Aqua in 2–3 hours. Fixed price, same-day available.

**Claim:**
> 6,000+ Dubai families chose Pro Aqua. Hospital-grade results, family-fair prices.

**Claude Pre-Score:** H:4 · V:4 · E:4 · D:4 = **16/20**
**Stärken:** Echte EPA-Zahl (5×), wissenschaftliche Autorität, starke Motive-Resonanz
**Schwächen:** Etwas lang für eine H1 · "5×" benötigt Quellenangabe für Glaubwürdigkeit

---

### V3 — Zahlen-Schock (Visceral Fear)

**H1:**
> 2,000,000 dust mites are living in your mattress right now.
> Tonight, they're keeping your family awake.

**Sub:**
> Pro Aqua eliminates 99.9% of allergens — mattress, AC ducts, upholstery — in one visit. Done in 2–3 hours.

**Claim:**
> Trusted by 6,000+ Dubai families since 2016. WhatsApp Franco today.

**Claude Pre-Score:** H:5 · V:4 · E:5 · D:3 = **17/20**
**Stärken:** Extremer Visceral-Hook, Zahlen erzeugen sofortiges Unbehagen, Eltern-Trigger
**Schwächen:** Niedrige Dubai-Spezifität · könnte zu shocking sein → Bounce-Risiko · braucht Verification-Badge

---

### V4 — Eltern-Empathie-Hook

**H1:**
> Your kids keep sneezing.
> Your AC ducts are probably why.

**Sub:**
> Dust, mold & allergens accumulate in Dubai AC systems every 3–6 months. Pro Aqua removes them in 2–3 hours — fixed price, same-day available.

**Claim:**
> Hospital-grade cleaning. One team, one face you know. Before & after proof on every job.

**Claude Pre-Score:** H:4 · V:4 · E:5 · D:4 = **17/20**
**Stärken:** Starker Identifiable-Victim-Effekt (Kinder), "probably" schafft Curiosity Gap, Dubai-AC-Kontext
**Schwächen:** "probably" schwächt die Aussage leicht ab · Mütter als Primärzielgruppe sehr spezifisch

---

### V5 — Social Proof + Curiosity Gap

**H1:**
> We've cleaned 6,000+ Dubai homes.
> What we find inside every single time would shock you.

**Sub:**
> Mold colonies, dust mite infestations, bacteria layers — invisible but dangerous. We remove everything in 2–3 hours.

**Claim:**
> Fixed price before we start. Before & after proof on every job. WhatsApp Franco today.

**Claude Pre-Score:** H:3 · V:4 · E:3 · D:4 = **14/20**
**Stärken:** Curiosity Gap ("would shock you"), Social Proof sofort sichtbar
**Schwächen:** "would shock you" wirkt clickbait-artig · kein direktes Pattern-Interrupt · Sub wiederholt H1

---

### V6 — Time-Bomb Hook (Dubai-spezifisch) *(Claude A/B-Empfehlung)*

**H1:**
> Your Dubai AC hasn't been cleaned in 12 months?
> Right now it's circulating mold through every room.

**Sub:**
> Mold, bacteria & allergens accumulate fast in Dubai's humidity. Pro Aqua removes them in 2–3 hours — fixed price, same-day available.

**Claim:**
> Trusted by 6,000+ Dubai families since 2016. Hospital-grade. WhatsApp Franco now.

**Claude Pre-Score:** H:4 · V:5 · E:4 · D:5 = **18/20**
**Stärken:** Höchste Dubai-Spezifität ("12 months" trifft Expat-Realität), Time-Bomb-Urgency, Loss Aversion aktiv
**Schwächen:** Interrogative Form könnte Bounce erhöhen wenn jemand sagt "nein, ich habe gereinigt"

---

### V7 — Reversed Social Proof

**H1:**
> 6,000+ Dubai families hired us.
> Most waited too long.

**Sub:**
> AC mold, mattress allergens and duct bacteria build up invisibly — until your family starts to feel it. One WhatsApp to Franco changes that today.

**Claim:**
> Fixed price before we start. Same team every time. Done in 2–3 hours.

**Claude Pre-Score:** H:3 · V:4 · E:3 · D:3 = **13/20**
**Stärken:** Intrigantes Reversal ("most waited too long"), Social Proof sofort
**Schwächen:** Zweiter Satz vage · keine starke visuelle Vorstellung · Dubai-Spezifität niedrig

---

### V8 — Kosten-Hook (Rational/Financial)

**H1:**
> Dirty AC ducts are costing you 30% more on electricity.
> Every single month.

**Sub:**
> A clogged AC works harder, breaks sooner, and circulates polluted air. Pro Aqua cleans it in 2–3 hours — pays for itself in weeks.

**Claim:**
> Fixed price before we start. 6,000+ Dubai homes cleaned since 2016.

**Claude Pre-Score:** H:3 · V:4 · E:3 · D:4 = **14/20**
**Stärken:** ROI-Argument (einzige Variante), spricht rational denkende Expat-Männer an
**Schwächen:** Niedrige emotionale Resonanz · "30%" braucht starke Quellenangabe · kein Familien-Trigger

---

### V9 — Authority / Hospital Standard

**H1:**
> Dubai hospitals use our standard.
> Your family deserves the same.

**Sub:**
> Pro Aqua applies hospital-grade sanitation to your AC ducts, mattress and upholstery — in 2–3 hours, at a fixed price.

**Claim:**
> 6,000+ families. 4.7★ Google. Before & after proof on every job. WhatsApp Franco today.

**Claude Pre-Score:** H:3 · V:4 · E:4 · D:3 = **14/20**
**Stärken:** Starke Autorität ("hospital-grade"), aspirationaler Claim ("deserves the same")
**Schwächen:** Überprüfbarkeit des "hospital"-Claims kritisch · kein Pattern-Interrupt · Dubai-Spezifität gering

---

### V10 — Pure Hormozi (Effort & Time Reduction)

**H1:**
> One WhatsApp to Franco.
> Clean home. 2–3 hours. Guaranteed.

**Sub:**
> AC ducts, mattress, upholstery — completely sanitized by Dubai's most trusted cleaning team. Fixed price, same-day available.

**Claim:**
> 6,000+ families trust Pro Aqua since 2016. 4.7★ Google. Before & after proof on every job.

**Claude Pre-Score:** H:3 · V:5 · E:3 · D:4 = **15/20**
**Stärken:** Maximale Effort-Reduction (Hormozi), klares CTA implizit im H1, "Guaranteed" baut Vertrauen auf
**Schwächen:** Kein emotionaler Hook · kein Problem-Statement · wirkt wie eine Bestätigungs-Seite, nicht wie ein Hook

---

## Claude's Vorab-Ranking

| Rang | Variante | Score | Empfehlung |
|------|----------|-------|------------|
| 1 | **V6** Time-Bomb | 18/20 | A/B-Test Primary (Desktop) |
| 2 | **V1** Contradiction | 17/20 | Aktuell live — behalten als Control |
| 2 | **V3** Zahlen-Schock | 17/20 | Mobile-Test (Eltern-Segment) |
| 2 | **V4** Eltern-Empathie | 17/20 | Mobile-Test (Mütter-Segment) |
| 5 | **V2** EPA-Statistik | 16/20 | Sekundärer Test |

---

## Prompt an Codex

Du bist Conversion-Psychologe und CRO-Spezialist. Analysiere die 10 Hero-Headline-Varianten oben für Pro Aqua Dubai unabhängig von Claude's Pre-Scores.

**Deine Aufgabe:**

1. **Bewerte jede Variante** nach dem 4-dimensionalen Rubrik-System (H/V/E/D, je 1–5, max 20 Punkte). Zeige deine Scores in einer Tabelle.

2. **Wähle die Top 3** Varianten basierend auf wissenschaftlichen Conversion-Prinzipien (Hormozi Value Equation, Pattern Interruption, Loss Aversion, Social Proof Cascades).

3. **Empfehle eine Primary Variant** (Control in `index.html`) und eine **A/B-Test Variant**.

4. **Begründe deine Entscheidungen** mit spezifischen Referenzen auf Behavioral Science oder Copywriting-Frameworks.

5. **Optional:** Schlage für jede der Top 3 eine konkrete Copy-Verbesserung vor (max. 1 Zeile pro Variante).

6. **Segment-Analyse**: Welche Variante funktioniert am besten für (a) Expat-Familien mit Kindern, (b) rational denkende Männer/Financial Decision Makers, (c) Mobile-first Nutzer?

**Technischer Kontext:**
- Hero Section befindet sich in `index.html` zwischen den Kommentaren `<!-- HERO START -->` und `<!-- HERO END -->`
- H1 nutzt `.hero-kinetic` + `.kin` Klassen für word-by-word Load-Animation
- Sub steht in `.hero-sub`, Claim in `.hero-claim`
- Trust-Items in `.hero-trust > .ht-item`
- CSS-Variablen: `--green-d` (grün), `--blue` (blau), `--red` (rot), `--navy` (dunkel)
- Neue CSS-Klasse `.hl-r` ist bereits vorhanden für rote Betonung

**Format der Ausgabe:**
```markdown
## Codex Scoring

| V | H | V | E | D | Total |
|---|---|---|---|---|-------|
| V1 | ... | ... | ... | ... | ... |
...

## Top 3

### #1 [Variante]: [Begründung]
### #2 [Variante]: [Begründung]
### #3 [Variante]: [Begründung]

## Empfehlung
Primary (Control): [V?]
A/B-Test Challenger: [V?]

## Segment-Analyse
(a) Expat-Familien: [V?]
(b) Financial Rational: [V?]
(c) Mobile-first: [V?]

## Copy-Optimierungsvorschläge (optional)
V?: "[verbesserter Text]"
```
