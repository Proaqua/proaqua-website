# Pro Aqua Dubai — Hauptseite vs. Landingpages: Strategieentscheidung
> Claude (Cowork) · 2026-06-17 · Branch `Franco2`, lokal, nicht gepusht

## Was ich vor dieser Bewertung geprüft habe

- Aktuelle `index.html`-Sektionsreihenfolge (verifiziert per grep, Stand heute):
  Hero → Warning Signs → Vent Check → Why/Hidden Danger → Before/After → Solution → Services → Franco → Reviews → Compare → Pricing → Process → Quiz → Booking → Business → Arabic → Seasonal → Areas → FAQ.
  Codex hat die Reihenfolge am 16.06. bereits nach Conversation-Psychology-Logik umsortiert (Problem zuerst, Booking ganz am Ende) — die größte Schwäche aus meinem ursprünglichen Audit-Prompt ist also schon teilweise behoben.
- Aktuelle Trust-Zahlen im Code: **„10,000+"** (11 Vorkommen) und **„DED No. 748159"** (2 Vorkommen). `conversion-strategy.md` ist hier veraltet (steht noch „6,000+" + Platzhalter-DED) — bitte dieses Dokument als Quelle behandeln, nicht die alte Strategiedatei.
- Claim-Hygiene: „medical-grade", „hospital-grade", „100% results", harte „30–60%"-Energieclaims und „2M+"-Matratzenclaim wurden laut MEMORY.md am 15.06. von Codex bereits entschärft. Der größte Risikopunkt aus dem Codex-Audit (Score 6.2/10) ist also in Arbeit.
- `fabio-folder/GEO-AI/` — ein bislang nicht beachteter, paralleler Workstream („Agent 11"): enthält fertige FAQ-Inhalte (20 Q&A, explizit aufgeteilt in „AC-Fragen auf der AC Duct Cleaning Seite, Villa-Fragen auf der Villa Cleaning Seite") sowie JSON-LD Schemas für Person (Franco), 5 Services und WebSite. **Wichtigster Fund:** Das Service-Schema-Dokument selbst enthält bereits eine Tabelle „Platzhalter-URL → Ziel-URL sobald Unterseite existiert" für AC Duct Cleaning, Villa Deep Cleaning, Office Cleaning, Disinfection, Sofa/Mattress/Carpet — mit der Begründung, Unterseiten seien „dringend empfohlen". Das heißt: ein zweiter, unabhängiger AI-Workstream ist bereits zum selben Schluss gekommen wie deine Frage jetzt — nur mit 5 Services statt 3 und leicht anderem URL-Schema.
- `sitemap.xml`: enthält 8 Location-Landingpage-URLs (`/ac-cleaning-dubai-marina/`, `/ac-cleaning-jbr/`, `/ac-cleaning-downtown-dubai/`, `/ac-cleaning-business-bay/`, `/villa-cleaning-jumeirah/`, `/ac-cleaning-difc/`, `/deep-cleaning-mirdif/`, `/villa-cleaning-springs/`), datiert 12.06.2026. **Keine dieser 8 Seiten existiert als Datei/Ordner.** Das ist unabhängig von der Architekturfrage ein akutes Problem — siehe Abschnitt 8.

---

## 1. Ist die Trennung „klare Hauptseite" + „eigene Landingpages" sinnvoll?

Ja — und das ist keine Geschmacksfrage, sondern strukturell sauber, aus drei Gründen:

**Unterschiedliche Besucher, unterschiedliche Psychologie.** Jemand, der „Pro Aqua Dubai" oder „Pro Aqua reviews" googelt, ist bereits warm — er will Bestätigung, dass die Firma real, lizenziert und vertrauenswürdig ist. Er braucht keinen Pain-Hook, keinen Quiz-Funnel, keine Urgency. Jemand, der über einen Meta-Ad oder eine Such-Anzeige zu „AC duct cleaning Dubai" kommt, ist kalt — er braucht genau den aggressiven, Fear→Relief-optimierten Funnel, den die Seite aktuell als Homepage fährt. Eine Seite, die beide gleichzeitig bedienen muss, kompromittiert in der Regel beide: der Such-Besucher findet die Seite zu „salesy" (Vertrauensverlust), der Ad-Besucher bekommt eine verwässerte Version des Funnels, weil Rücksicht auf den ruhigeren Ton genommen wird.

**Google-/AI-Sichtbarkeit verlangt es ohnehin.** Das bereits vorbereitete Service-Schema in `fabio-folder/GEO-AI/` sagt es explizit: ohne eigene Unterseiten pro Service kann weder Google noch ein AI-Modell (ChatGPT, Perplexity, Claude) gezielt auf „AC duct cleaning Dubai" oder „villa deep cleaning Dubai" verweisen — alles zeigt auf dieselbe große Startseite, die thematisch verwässert ist. Das ist unabhängig von Werbekampagnen ein SEO/GEO-Strukturproblem.

**Wartungsrisiko ist beherrschbar, wenn man es von Anfang an einplant** (siehe Punkt 5) — das ist kein Grund gegen die Trennung, nur ein Punkt, den man bei der Umsetzung mitdenken muss.

Kurz: Die Trennung ist nicht nur sinnvoll, sie ist bereits von einem zweiten AI-Workstream unabhängig vorgeschlagen worden. Die offene Frage ist nicht *ob*, sondern *wie* und *in welcher Reihenfolge*.

---

## 2. Wie sollte `/` strukturiert sein, wenn primär für Google Search / Brand Search / Trust / digitale Visitenkarte optimiert?

Ruhiger, IA-first, nicht Funnel-first. Vorschlag für die neue `/`:

1. **Header** — schlicht: Services, Franco/Über uns, Reviews, Areas, Kontakt (WhatsApp + Call), EN/AR-Umschalter.
2. **Hero** — Vertrauens-Statement statt Pain-Hook. Nicht „Your Dubai home looks clean. Your AC ducts don't." (das ist ein exzellenter Funnel-Hook für kalten Traffic, aber für jemanden, der bereits sucht, wirkt er wie ein Verkaufsdruck-Signal). Stattdessen etwas wie: „Dubai's hospital-grade home cleaning specialists since 2016." + Franco/Team-Foto + die kompakten Zahlen (Google-Rating, DED-Lizenz, Jahre, 10,000+) + zwei klare CTAs: WhatsApp + „Unsere Services ansehen".
3. **Services-Übersicht** — 3–5 Kacheln (AC Duct / Deep Clean / Mattress, ggf. + Office/Disinfection falls die im Schema vorbereiteten Services aktiv beworben werden sollen), jede verlinkt auf die eigene Service-Seite. Keine eingebettete Verkaufs-Copy hier, nur Orientierung.
4. **Warum Pro Aqua / Trust-Block** — Franco-Story, DED-Lizenz, Google-Rating, kombiniert als ruhiger Vertrauensblock (Numbers + Authority + Cultural Signal gleichzeitig sichtbar, aber ohne Verkaufsdruck-Ton).
5. **Echte Proof-Galerie** — dosiert (4–6 beste Bilder statt der vollen 8er-Galerie), Link „mehr sehen" zur Service-Seite oder eigenen Galerie.
6. **Reviews** — 3–4 ausgewählte + Link zu Google.
7. **Areas served** — Liste der Dubai-Stadtteile (Local-SEO-relevant, passt zu den 8 in `sitemap.xml` bereits angekündigten Location-Seiten).
8. **FAQ** — kurz, sachlich (Preislogik, Ablauf, Garantie) — wichtig für Google Featured Snippets und AI-Antworten; kann aus dem fertigen `fabio-folder/GEO-AI` FAQ-Pool gespeist werden.
9. **Footer** — vollständige Kontaktdaten, DED-Nummer, Sitemap-Links zu allen Service-/Area-Seiten, `/ar/`-Link.

Bewusst **entfernt oder abgeschwächt** gegenüber der heutigen Funnel-Startseite: keine Urgency/Countdown-Elemente, kein voll eingebetteter Mehrstufen-Quiz (stattdessen Link zu `/lp/ac-risk-check/`), kein aggressiver Wettbewerbsvergleich (eine sanftere „Warum uns"-Variante reicht), weniger gleichzeitig konkurrierende Sticky-/Floating-Elemente (ein WhatsApp-Button reicht, nicht mehrere FABs gleichzeitig — das deckt sich mit dem Mobile-UX-Kritikpunkt aus dem Codex-Audit vom 15.06.).

---

## 3. Welche Elemente bleiben auf der Hauptseite, welche wandern auf Landingpages?

**Bleiben (abgeschwächt/dosiert):**
Hero-Trust-Statement, Services-Übersicht, Franco-Sektion, dosierte Before/After-Auswahl, Reviews-Auswahl, einfache FAQ, DED-/Google-Badges, ein einziger sticky WhatsApp-Button.

**Wandern auf Landingpages/Service-Seiten:**
- Risk-Check-Quiz (voller Multi-Step-Flow) → `/lp/ac-risk-check/`
- Warning Signs (angst-lastig) → in die jeweilige Service-Seite integriert
- Why/Hidden Danger (Angst-Vertiefung, WHO-Daten) → Service-Seiten
- Aggressiver 3-Spalten-Wettbewerbsvergleich → Landingpages/Service-Seiten (auf der Hauptseite reicht eine ruhigere Variante oder ganz weglassen)
- Volle 8-Karten-Galerie mit Lightbox → eigene Galerie-Seite oder in die Service-Seiten verteilt
- Seasonal-Kampagnen-Sektion (Sandstorm/Summer-AC/Ramadan/Back-to-School) → eigene `/campaign/...`-Seiten, nicht auf der Homepage
- B2B/Property-Manager-Block → eigene `/business/`-Seite oder dezent verlinkt
- Die 8 in `sitemap.xml` bereits angekündigten Location-Seiten → eigene `/ac-cleaning-<area>/`-Dateien (siehe Abschnitt 8 — diese fehlen aktuell komplett)

---

## 4. Welche Landingpages zuerst bauen?

Reihenfolge nach Aufwand/Nutzen, unter Berücksichtigung dessen, was schon fertig liegt:

1. **`/lp/ac-risk-check/`** — höchste Priorität. Der Quiz ist bereits fertig konzipiert (rsScores/rsShowQuestion/rsAnswer-Logik laut MEMORY.md), es geht nur um Extraktion auf eine eigene URL. Sofortiger Nutzen für Ads (Message Match, Quality Score), minimaler Aufwand.
2. **`/services/ac-duct-cleaning-dubai/`** (oder `/ac-duct-cleaning/`, siehe URL-Hinweis unten) — AC Duct ist der am stärksten vorbereitete Service: Hidden-Danger-Content, Warning Signs, Vent-Check, 12 fertige FAQ-Antworten und ein fertiges Service-Schema liegen bereits in `fabio-folder/GEO-AI/` vor.
3. **`/services/mattress-cleaning-dubai/`** und **`/services/deep-cleaning-dubai/`** — gleiches Muster, 8 fertige FAQ-Antworten zu Villa Deep Cleaning liegen ebenfalls schon vor.
4. **Die 8 Location-Seiten aus `sitemap.xml`** — da sie schon öffentlich als existierend angekündigt sind (Google hat sie ggf. schon gecrawlt versucht), sollten sie zeitnah nach den drei Service-Seiten folgen, nicht erst ganz am Schluss.
5. **`/campaign/summer-ac/`** — saisonal hoch relevant (Dubai-Sommer = AC-Hauptsaison), Seasonal-Sektion existiert schon und kann wiederverwendet werden.
6. **`/ar/`-Parität** — die arabische Seite sollte erst nach der finalen EN-Struktur überarbeitet werden, um doppelte Arbeit zu vermeiden.

---

## 5. Wie Doppelpflege vermeiden, Konsistenz zwischen Hauptseite und Landingpages sichern?

- **Eine Quelle für Zahlen/Fakten.** `conversion-strategy.md` ist veraltet (6,000+ statt 10,000+). Empfehlung: eine kleine `brand-facts.md` mit den aktuell gültigen Zahlen (Kundenanzahl, Rating, DED-Nummer, Gründungsjahr, Preis-Spannen) anlegen, auf die sich jede Seite/jeder AI-Assistent bezieht. Eine Änderung, ein Ort, dann manuell auf allen Seiten nachziehen (kein CMS vorhanden, also Disziplin statt Automatisierung).
- **Wiederverwendbare HTML-Bausteine dokumentieren statt neu schreiben.** Trust-Belt, Franco-Karte, WhatsApp-CTA-Button, Google-Rating-Badge (`.google-rating-badge` existiert laut MEMORY.md schon als einheitliches Pattern) — als Referenz-Snippets in `MEMORY.md` oder einer eigenen `components-reference.md` festhalten, damit jede neue Seite denselben Code kopiert statt neu zu erfinden.
- **Asset-Wiederverwendung**: alle Bilder bleiben in `/assets/`, nie pro Seite duplizieren.
- **Content-Map-Tabelle**: welche Zahl/welcher Claim steht auf welcher Seite — damit bei einer Änderung (z. B. 10,000+ → 12,000+) eine Checkliste existiert, welche Dateien angefasst werden müssen.
- **Mittelfristig**: bei wachsender Seitenzahl über ein einfaches Include-System nachdenken (z. B. Netlify-Build-Step oder 11ty), aber das ist kein Blocker für die ersten 3–4 Seiten — bei dieser Größe reicht Disziplin + Dokumentation.

---

## 6. Ideale Informationsarchitektur für die genannten Pfade

| Pfad | Rolle | Ton |
|---|---|---|
| `/` | Ruhige Haupt-/Vertrauensseite, digitale Visitenkarte | Sachlich, vertrauensbildend |
| `/services/ac-duct-cleaning-dubai/` | Service-Detailseite, Ablauf, Fixpreis-Logik, FAQ, Before/After speziell AC | Informativ, leicht verkaufsorientiert, kann auch Ad-Landingziel sein |
| `/services/deep-cleaning-dubai/` | Gleiches Muster für Deep Cleaning | s.o. |
| `/services/mattress-cleaning-dubai/` | Gleiches Muster für Matratzen | s.o., Vorsicht bei Dust-Mite-Claims (Compliance) |
| `/lp/ac-risk-check/` | Reiner Funnel, voller Fear→Relief-Flow, für kalten Ad-Traffic | Aggressiv, Pain-led — hier ist das richtig, weil Traffic selbst-selektiert ist |
| `/ar/` | Arabisches Pendant zur ruhigen Hauptseite | Wie `/`, kulturell angepasst |

**Wichtiger Abstimmungspunkt:** Das bereits vorbereitete Service-Schema in `fabio-folder/GEO-AI/ProAqua_Punkt04_Service_Schemas.md` nennt andere Ziel-URLs (`/ac-duct-cleaning`, `/villa-deep-cleaning`, `/office-cleaning`, `/disinfection`, `/sofa-mattress-carpet-cleaning` — ohne `/services/`-Präfix, ohne `-dubai`-Suffix, mit 5 statt 3 Services). Bevor die erste Service-Seite gebaut wird, sollte einmal final entschieden werden, welches URL-Schema gilt — sonst muss das Schema-Markup nachträglich angepasst werden. Empfehlung: `/services/<name>-dubai/` ist SEO-technisch minimal stärker (Keyword „dubai" in der URL, klare Kategorie-Struktur), aber beide Varianten funktionieren — Hauptsache, es wird einmal festgelegt und überall (HTML-Links, Schema, Sitemap) konsistent verwendet.

---

## 7. Konkrete Empfehlung: was als Nächstes bauen?

Kein Full-Rebuild. Phasenweise, jede Phase einzeln im Vorschau-Server prüfbar:

1. **Quiz extrahieren** → `/lp/ac-risk-check/` (geringster Aufwand, sofortiger Ad-Nutzen, ca. 90% bestehender Code wiederverwendbar).
2. **Hauptseite entschärfen**: Hero-Copy beruhigen, Warning-Signs/Hidden-Danger/aggressiven Compare-Block aus der Homepage entfernen bzw. in Service-Seite/LP verschieben, Sticky-Elemente auf einen Button reduzieren.
3. **AC-Duct-Service-Seite bauen** — höchstes Suchvolumen, meiste fertige Inhalte (FAQ + Schema liegen vor).
4. **Mattress- und Deep-Clean-Service-Seiten** nach demselben Muster.
5. **Die 8 angekündigten Location-Seiten** nachziehen, weil sie schon in der Sitemap stehen (siehe Punkt 8 — das ist eigentlich überfällig).
6. **Arabische Parität** erst danach, um Doppelarbeit zu vermeiden.

Diese Reihenfolge minimiert Risiko: nach jeder Phase lässt sich (sobald GA4 endlich verbunden ist) der Effekt prüfen, bevor weiter investiert wird.

---

## 8. Dringender Zusatzfund — unabhängig von der Architekturfrage

`sitemap.xml` listet 8 Location-Seiten (`ac-cleaning-dubai-marina`, `ac-cleaning-jbr`, `ac-cleaning-downtown-dubai`, `ac-cleaning-business-bay`, `villa-cleaning-jumeirah`, `ac-cleaning-difc`, `deep-cleaning-mirdif`, `villa-cleaning-springs`), datiert 12.06.2026 — **keine davon existiert im Repo.** Wenn diese Sitemap bereits live ist und bei Google Search Console eingereicht wurde, bedeutet das: Google versucht aktuell, 8 URLs zu crawlen, die alle 404 zurückgeben. Das ist unabhängig von der Strategiefrage ein technisches SEO-Problem und sollte vorrangig behandelt werden — entweder die Seiten zeitnah bauen (passt gut in Phase 5 oben) oder sie kurzfristig aus der Sitemap entfernen, bis sie existieren.

---

## Offene Entscheidung für Giampiero

Bevor Phase 1 startet: einmal festlegen, ob das URL-Schema `/services/<name>-dubai/` oder `/<name>` (wie im GEO-AI-Schema vorbereitet) sein soll — das bestimmt, wie die Service-Schemas und internen Links geschrieben werden.
