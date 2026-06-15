# Session Memory — Claude Cowork · 16.06.2026

> Diese Datei dokumentiert die vollständige Arbeitssitzung vom 16.06.2026.
> Für KI-Handover, Nachvollziehbarkeit und Ralph-Loop-Kontext.

---

## Session-Kontext

- **KI:** Claude Sonnet 4.5 (Cowork Mode)
- **Branch:** `Franco2` (lokal, origin = github.com/Proaqua/proaqua-website)
- **Arbeitsregel:** NIEMALS `git push` ohne ausdrückliche Freigabe von Giampiero
- **Ziel dieser Session:** "auf 100% kommen" — alle echten Fotos vollständig einbauen, Franco-Foto integrieren, Bildpositionen korrigieren

---

## Erledigte Arbeiten (chronologisch)

### 1. Franco-Foto vollständig integriert · Commit `3bf6c35`

**Was:** `franco.webp` (900×1227px, 82KB, aus `franco.png` konvertiert mit Pillow) wurde in ALLE 4 Vorkommen eingebaut:

| Stelle | Vorher | Nachher |
|--------|--------|---------|
| Hero Franco Card Mobile (Zeile ~1642) | `franco-founder-pro-aqua-dubai.webp` | `franco.webp` |
| Hero Franco Card Desktop (Zeile ~1692) | `franco-founder-pro-aqua-dubai.webp` | `franco.webp` |
| #why Hauptbild (Zeile ~2327) | `franco-founder-pro-aqua-dubai.webp` | `franco.webp` |
| TODO-Kommentar (Zeile ~1403) | Platzhalter-Text | Dokumentation `eingebaut 15.06.2026` |

`object-position: center top` auf allen Instanzen — zeigt Gesicht, nicht nur Schultern.

---

### 2. Alle 12 echten Fotos vollständig eingebaut · Commit `65a9d0d`

**Status vorher:** 6 von 12 `real-*.webp` Fotos genutzt, 6 ungenutzt.  
**Status nachher:** 12 von 12 — **0 ungenutzt**.

#### Gallery (Before/After Sektion) — von 6 auf 8 echte Karten erweitert:

| Card | Vorher | Nachher |
|------|--------|---------|
| 1 | `real-ac-coil-before.webp` | ✓ unverändert |
| 2 | `real-mattress-water-held.webp` | ✓ unverändert |
| 3 | `real-ac-coil-after.webp` | ✓ unverändert |
| 4 | `before-after-sofa-deep-cleaning-service-dubai.webp` (generic) | → `real-mattress-result-1.webp` |
| 5 | `before-after-ac-filter-sanitizing.webp` (generic) | → `real-carpet-clean.webp` |
| 6 | `real-ac-duct-grid-work-1.webp` | ✓ unverändert |
| 7 | *(nicht vorhanden)* | → `real-ac-duct-grid-work-2.webp` (NEU) |
| 8 | *(nicht vorhanden)* | → `real-ac-motorhousing.webp` (NEU) |

#### Service Cards (Sektionsfotos):
- AC Duct Service: `ac-duct-cleaning-dubai-pro-aqua-service.webp` → `real-ac-grid-work.webp`
- Mattress Service: `mattress-deep-cleaning-dubai.webp` → `real-mattress-result-2.webp`

#### #why Inspection Note:
- Vorher: 1 Foto (`real-mattress-water-held.webp`) in Vollbreite
- Nachher: 2-Spalten-Grid mit `real-mattress-water-held.webp` + `real-ac-duct-clean.webp`

---

### 3. object-position aller Portrait-Fotos korrigiert · Commit `db5183a`

**Problem:** 9 von 12 Fotos sind Portrait-Format (z.B. 960×1280). Bei 16:9-Landscape-Crop mit Standard `center center` wurden bei Techniker-Fotos nur Hosenbeine/Unterkörper gezeigt.

**Analyse der Bilddimensionen:**
```
real-ac-coil-after.webp:       1174x1280 PORTRAIT → center top → left top
real-ac-duct-clean.webp:        720x1280 PORTRAIT → center top ✓
real-ac-duct-grid-work-1.webp:  960x1280 PORTRAIT → center top (bestätigt per Screenshot)
real-ac-duct-grid-work-2.webp:  960x1280 PORTRAIT → center top (bestätigt per Screenshot)
real-ac-grid-clean.webp:        720x1280 PORTRAIT → center center (vent check, OK)
real-ac-grid-work.webp:         960x1280 PORTRAIT → center top
real-carpet-clean.webp:         974x1280 PORTRAIT → center 60% (Maschine am Boden)
real-mattress-result-2.webp:    960x1280 PORTRAIT → center top
real-mattress-water-held.webp:  960x1280 PORTRAIT → center 40% (Eimer im Mittelfeld)
real-ac-motorhousing.webp:     1134x822  LANDSCAPE → center center ✓
real-ac-coil-before.webp:      1280x960  LANDSCAPE → center center ✓
real-mattress-result-1.webp:    960x720  LANDSCAPE → center center ✓
```

**Korrekturen in index.html:**
- Gallery Card 3 (`real-ac-coil-after`): `center top` → `left top` (Coil ist links oben)
- Gallery Card 2 (`real-mattress-water-held`): `center 40%`
- Gallery Card 5 (`real-carpet-clean`): `center 60%`
- Gallery Card 6 (`real-ac-duct-grid-work-1`): `center top`
- Gallery Card 7 (`real-ac-duct-grid-work-2`): `center top`
- Service Card AC (`real-ac-grid-work`): `center top`
- Service Card Mattress (`real-mattress-result-2`): `center top`
- Inspection Note (`real-mattress-water-held`): `center 40%`

---

## Git-Log dieser Session

```
db5183a  fix: object-position aller Portrait-Fotos korrigiert
1984443  docs: MEMORY.md — Task 26 abgeschlossen, alle 12 Fotos eingebaut
65a9d0d  feat: alle 12 echten Fotos vollständig eingebaut (100% real photos)
3bf6c35  feat: echtes Franco-Foto in alle Stellen integriert (franco.webp 900x1227px)
```

**Push:** In dieser Session noch NICHT gepusht (Sandbox hat keine GitHub-Credentials). Giampiero muss lokal ausführen:
```bash
cd ~/Desktop/Proaqua-website && git push origin Franco2:main
```

---

## Ralph Loop Prompt (erstellt in dieser Session)

Ein vollständiger autonomer Analyse-Prompt wurde erstellt für:
- Conversion-Audit gegen alle 10 Frameworks (Fear→Relief, Trust Stack, Identity vs Utility, etc.)
- P0/P1/P2 Priorisierung
- Automatische P0-Umsetzung
- Verwendung: `/ralph-loop "..." --completion-promise "..." --max-iterations 8`

Vollständiger Prompt: in der Chat-Historie dieser Session oder bei Claude neu anfordern.

---

## Offene TODOs (GEBLOCKT — braucht Giampiero)

| Item | Details |
|------|---------|
| Before/After Karten Stadtteile | Für alle 8 Gallery-Karten: "Jumeirah · Villa · April 2025" o.ä. |
| GA4 Measurement ID | Für Tracking |
| Meta Pixel ID | Für Retargeting |
| Ab-Preise bestätigen | AC Duct ab AED 399? Mattress ab AED 89? Villa Deep Clean? |
| real-ac-coil-after.webp Position | `left top` besser als vorher, aber Giampiero soll prüfen ob Coil gut sichtbar |

---

## Wichtige Dateipfade

| Datei | Beschreibung |
|-------|-------------|
| `index.html` | Haupt-HTML (~229KB) — NIEMALS komplett neu generieren |
| `assets/franco.webp` | 900×1227px, 82KB — echtes Franco-Foto |
| `assets/real-*.webp` | 12 echte Job-Fotos mit Pro-Aqua-Wasserzeichen |
| `MEMORY.md` | Gemeinsames Arbeitsgedächtnis Claude↔Codex |
| `conversion-strategy.md` | Vollständiges Conversion-Framework |
| `conversion-research/` | Research-Dokumente, Prompts, Analysen |

---

## CSS-Variablen (Referenz)

```css
--navy: #1C3244
--blue: #5899E3
--green-d: #4DA882
--bg: #F6F6F6
--bg3: #E8E8E7
--red: (rot für Badges)
```

---

## Konversions-Framework (Kurzreferenz)

### Trust Stack Formula (5 Ebenen)
1. **Numbers** — 6.000+ Familien, 4,7★, 10+ Jahre
2. **Authority** — Franco als Gesicht, Name, Foto, Inspection Notes
3. **Risk Reversal** — "Not happy? We re-clean for free"
4. **Specificity** — Echte Job-Fotos, echte Wasserzeichen, echte Stadtteile (sobald geliefert)
5. **Cultural Signal** — Dubai, Villas, High-rises, DEWA, Sandstorm

### Fear → Relief Chain
Problem (Dubai-spezifisch) → Agitation (spezifisch) → Solution → Proof (echte Fotos) → CTA (WhatsApp-prefilled)

### Identity vs. Utility
Nicht "Reinigungsservice buchen" sondern "Ich bin der Elternteil der sicherstellt, dass meine Familie saubere Luft atmet."

### Positionierung (final, mit Giampiero abgestimmt)
> "Hospital-grade cleaning at family-fair fixed prices. One team, one face you know — proof on every job."
