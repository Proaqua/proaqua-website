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

## Offene Entscheidungen (von Giampiero zu treffen)

- [ ] Positionierungs-These freigeben (siehe Analyse-Bericht)
- [ ] Welche Maßnahmen aus dem Bericht zuerst umsetzen

## Arbeitslog

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
