# Proaqua — Conversation Psychology Audit Prompt
> Für Claude Opus 4.8 · Neue Cowork-Session · Stand: 2026-06-16

---

## Kontext (lies das zuerst)

Du arbeitest an der Proaqua Dubai Landing Page (`index.html`).  
Alle strategischen Frameworks sind in `conversion-strategy.md` dokumentiert.  
Der aktuelle Zustand der Seite ist in `MEMORY.md` beschrieben.  
Branch: `Franco2` (lokal, NIEMALS pushen ohne Giampiero's ausdrückliche Freigabe).

**Was Proaqua ist:** Premium Home Cleaning Service in Dubai. AC-Duct, Mattress, Deep Clean.  
Franco Lapeschi = Gründer, Gesicht, persönlich haftend.  
Primärer Conversion-Kanal: WhatsApp. Preis: AED 399–1.200+.  
Trust Gap: HOCH (unsichtbares Problem, kein Impulskauf, Kategorie durch App-Anbieter verbrannt).

---

## Deine Aufgabe

Analysiere `index.html` kritisch und vollständig anhand aller unten stehenden Frameworks.  
Lies dazu zuerst: `conversion-strategy.md`, `MEMORY.md`, `conversion-research/state-of-art-conversion-psychology.md`.

---

## Framework 1 — Conversation Psychology (Priorität 1)

Die Seite ist ein **Gespräch** mit dem Besucher. Jeder Besucher hat einen inneren Monolog mit einer festen Reihenfolge. Die Seite muss diesem Monolog folgen — nicht ihrer eigenen Logik.

**Innerer Monolog des Dubai-Käufers:**
1. „Stop mich — zeig mir was Überraschendes" → *Awareness*
2. „Ist das wirklich mein Problem?" → *Problem-Erkennung*
3. „Zeig mir Beweise, dass das real ist" → *Amplification*
4. „Was passiert konkret, wenn ich buche?" → *Solution Clarity*
5. „Wer kommt in meine Wohnung?" → *Trust / Authority*
6. „Haben andere das schon gemacht?" → *Social Proof*
7. „Warum Proaqua und nicht jemand anderen?" → *Differentiation*
8. „Was kostet es ungefähr?" → *Commitment / Low Risk*
9. „Was passiert nach dem Klick?" → *Process / Reassurance*
10. „OK, ich buche." → *Action*

**Prüfe:**
- Folgt die aktuelle Sektionsreihenfolge diesem Monolog?
- Wo wird Rationales eingebracht, bevor Emotionales aufgebaut ist?
- Gibt es tote Enden (Sektionen ohne klaren nächsten Schritt)?
- Wo bricht der emotionale Fluss ab?
- Kommt der primäre CTA (Quiz/Booking) zu früh oder zu spät?

**Aktuelle Sektionsreihenfolge (in index.html):**
Hero → Compare → Warning Signs → Vent Check → Quiz → Why/Hidden Danger → Solution → Franco → Services → Before/After → Booking → Reviews → Process → Pricing → Business/B2B → Arabic → Seasonal → Areas → FAQ

---

## Framework 2 — Fear → Relief Chain

**Kern-Angst:** „Deine AC zirkuliert Schimmel, Staub und Bakterien — jedes Mal wenn sie läuft."  
**Dubai-Spezifik:** 45°C Hitze, AC läuft 8–10 Monate/Jahr, Wüstenstaub, Sandstürme, keine Wartungskultur.

Prüfe die vollständige Kette:
```
Hero → Angst aktivieren
#why/Hidden Danger → Angst vertiefen mit echten Beweisen
#warning-signs → Selbst-Identifikation
#solution → Relief: konkret, wie, wie lange, was danach
#quiz → personalisiertes Angebot = Aktion aus Relief
```

- Wird die Angst IMMER mit einer Lösung gepaart? (Nie Angst allein stehen lassen)
- Ist die Angst Dubai-spezifisch und real — keine erfundenen Statistiken?
- Kommt der Relief-Moment zu früh (bevor Angst aufgebaut) oder zu spät?

---

## Framework 3 — Trust Stack (5 Schichten)

Prüfe für jede Hauptsektion: wie viele der 5 Schichten sind gleichzeitig sichtbar?

| Schicht | Signal bei Proaqua |
|---|---|
| **Numbers** | 6.000+ Familien · 4.7★ · 60 Reviews · seit 2016 |
| **Authority** | Franco persönlich · DED-lizensiert · WHO-Daten |
| **Risk Reversal** | Free inspection · Free re-clean · Fixed price |
| **Specificity** | Echte Job-Fotos · Before/After · Named team |
| **Cultural Signal** | Dubai · Villas · DEWA · WhatsApp-first |

**Kompressionsregel:** Mindestens 3 Schichten GLEICHZEITIG im Hero + Compare.  
Trust-Signale verteilt über 5+ Sektionen = jeder kämpft allein = Schwäche.

Identifiziere: Welche Sektionen haben 0–1 Trust-Schichten? Das sind die schwächsten Punkte.

---

## Framework 4 — Identity vs. Utility Test

Spricht die Headline WER der Besucher IST, oder WAS wir tun?

- Identity: „You're the parent who doesn't leave air quality to chance." ✓
- Utility: „We clean AC ducts in Dubai." ✗

**3-Fragen-Test (für jede Headline):**
1. Kann der Leser die Person im Text visualisieren?
2. Würden sich manche ausgeschlossen fühlen? (gut — macht Eingeschlossene wertvoller)
3. Funktioniert die Headline ohne Produktbild?

Liste alle Hauptheadlines der Seite und bewerte sie nach diesem Test.

---

## Framework 5 — Empty Copy Paradox

Proaqua Trust Gap = HOCH → mehr Copy ist richtig, aber die Dichte muss stimmen.

```
Kleiner Gap → wenig Text (Ridge: 12 Worte)
Großer Gap  → viel Text (HexClad: 200+ Worte)
```

Prüfe:
- Gibt es Sektionen mit zu wenig Copy, die den Trust Gap nicht schließen?
- Gibt es Fülltexte, die nichts Neues zum Trust beitragen?
- Ist die Copy-Dichte pro Sektion angemessen für ihre Rolle im Funnel?

---

## Framework 6 — Honest Comparison als Trust-Signal

Das Paradox: zugeben, wann Proaqua NICHT die richtige Wahl ist, erhöht das Vertrauen.

Prüfe:
- Gibt die Seite zu, wann Proaqua nicht die richtige Wahl ist?
- Gibt es Superlative ohne Beleg? (`100%`, `certified`, `medical-grade`, `verified`, `2M+`)
- Welche Claims müssen belegt, entschärft oder gestrichen werden?
- Ist der Konkurrenzvergleich fair und glaubwürdig?

---

## Framework 7 — Objection Kill Audit

Die häufigsten Einwände eines Dubai-Kunden:
1. „Kommen vertrauenswürdige Leute in meine Wohnung?"
2. „Was, wenn es nicht hilft — verliere ich mein Geld?"
3. „Wie lange dauert es — muss ich zuhause sein?"
4. „Ist der Preis wirklich fix, keine Überraschungen?"
5. „Habt ihr Erfahrung mit meiner Art Wohnung / Villa / Apartment?"
6. „Ist es sicher für Kinder und Haustiere?"
7. „Wie schnell kann ich einen Termin bekommen?"

Für jeden Einwand: Wird er beantwortet? Wo? Ist die Antwort überzeugend?

---

## Deine Ausgabe

### A. Conversation Flow Score (1–10)
Bewerte die aktuelle Sektionsreihenfolge. Begründe in 3 Sätzen.  
Gib die optimale Reihenfolge an und erkläre für jeden Positionswechsel warum.

### B. Sektions-Audit (für jede der 19 Sektionen)
Format:
```
**[Sektionsname]** · Score: X/10
Stärke: [was gut ist]
Schwäche: [was fehlt oder falsch positioniert ist]
Verbesserung: [eine konkrete, umsetzbare Maßnahme]
```

### C. Die 3 größten Hebel (Impact/Aufwand)
Pro Hebel:
- Problem: Was genau ist falsch
- Warum dieser Hebel > andere Fixes
- Umsetzung: exakter HTML/Copy-Eingriff

### D. Copy-Verbesserungen (10 Before/After)
Format: `[JETZT] → [BESSER]` + 1-Satz Begründung

### E. Kritische Claims — Compliance-Check
Liste alle Claims, die entweder belegt, entschärft oder gestrichen werden müssen.

---

## Regeln (NIEMALS brechen)
- Keine Fake-Urgency vorschlagen
- Keine unbelegten Claims verschärfen — nur entschärfen oder belegen
- Keine generische Marketing-Sprache
- Dubai-Kontext immer einbeziehen
- Konkreter Vorschlag > abstrakte Empfehlung
- `git push` nur wenn Giampiero explizit sagt „pushe das jetzt"
- `index.html` ist groß — nur gezielte Edits, nie komplett neu schreiben
