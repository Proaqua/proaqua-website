# Visual/UI/UX/Conversion Audit v2 — Pro Aqua Dubai

Stand: 2026-06-16  
Ausgeführt gegen lokalen Stand `http://localhost:8742/` und `http://localhost:8742/ar/` nach Arabic-Design-Anpassung.

## Verbesserter Prompt

Du bist gleichzeitig Senior Brand Designer, UI/UX-Designer für High-Converting Landingpages, CRO-Spezialist, Frontend-Engineer, Direct-Response-Copywriter und Content-Creator für Meta/Instagram/TikTok Ads.

Analysiere die aktuelle Pro Aqua Dubai Website grafisch, visuell, psychologisch, conversion-orientiert und technisch umsetzbar.

Aktueller Projektkontext:
- Pro Aqua Dubai verkauft AC Duct Cleaning, Deep Cleaning und Mattress/Fabric Sanitizing in Dubai.
- Zielgruppen: englischsprachige Expat-Familien, Villa-/Apartment-Besitzer, wohlhabende Haushalte, gesundheitsbewusste Familien, Property Manager/Holiday-Home-Betreiber sowie arabischsprachige Emiratis/Expats über eine eigene RTL-Seite unter `/ar/`.
- Hauptpositionierung: Du buchst nicht irgendeine Cleaning-App. Du buchst Franco und sein spezialisiertes, owner-led Team.
- Aktueller Proof: 4.7 Google Rating, 10,000+ zufriedene Kunden, Dubai seit 2016, DED No. 748159, echte Before/After-Fotos, Wasserzeichen/Lightbox, WhatsApp-Kundenstimmen, Franco-Foto, Risk Check Quiz, AC Self-Check, B2B- und Seasonal-Bereiche.
- Aktuelle offene Blocker: echte GA4 Measurement ID, Meta Pixel ID, DM-Approval-Nachweis, bestätigte Ab-Preise, finale arabische Copy-Prüfung durch Muttersprachler.

Wichtige Conversation-Reihenfolge:
1. Pattern Interrupt / Fear Trigger.
2. Problem sichtbar machen.
3. Selbst-Identifikation.
4. Beweise zeigen.
5. Lösung erklären.
6. Franco als Accountability-Anker.
7. Social Proof.
8. Vergleich gegen Apps/Subunternehmer.
9. Risiko reduzieren.
10. Conversion via WhatsApp, Risk Quiz, Free Inspection.

Bewerte kritisch, aber umsetzbar. Keine generischen UX-Floskeln, keine erfundenen Claims, keine Empfehlung für kompletten Relaunch. Respektiere bestehende Strategie: Franco, echte Fotos, WhatsApp, Free Inspection, Risk Quiz, Dubai-Kontext, Arabic-Funnel.

Analysiere:
1. Visuelle Gesamtwirkung.
2. UI/UX und Mobile UX.
3. Conversion-Psychologie.
4. Grafikdesign und Art Direction.
5. Content-/Ad-Creator-Perspektive.
6. Frontend-/Implementierungs-Perspektive.
7. English-Hauptseite und Arabic-RTL-Seite separat, aber als gemeinsames Markensystem.

Lieferformat:
A) Executive Summary  
B) Scorecard 1-10  
C) Die 10 größten visuellen/UX-Probleme mit Problem, Conversion-Kosten, Lösung, Priorität, Aufwand  
D) Die 10 besten Dinge, die nicht zerstört werden dürfen  
E) Sektion-für-Sektion Audit  
F) Empfohlene Design-Richtung  
G) 15 Quick Wins direkt im bestehenden HTML/CSS  
H) 10 größere strategische Verbesserungen  
I) Finales Paid-Traffic-Urteil mit Blockern und Testbudget-Empfehlung

## Prüfgrundlage

- Browser-DOM/Layout-QA: Desktop 1280x844 und Mobile 390x844.
- Hauptseite: kein horizontaler Overflow, keine Console Errors/Warnings.
- Arabic-Seite: kein horizontaler Overflow, keine Console Errors/Warnings.
- Hauptseite CTAs im DOM: 28 WhatsApp, 6 Telefon, 8 Quiz/Quote-nahe Einstiege.
- Hauptseite Hero-Höhe: ca. 1403px Desktop, ca. 1761px Mobile; darin `hero-main` plus `hero-reviews`.
- Hauptseite erster Pain-Block: `#warning-signs` beginnt mobil erst bei ca. 1885px.
- Arabic-Seite Hero-Höhe: ca. 662px Desktop, ca. 771px Mobile; Trust-Zone startet mobil bei ca. 836px.
- GA4 und Meta Pixel sind vorbereitet, aber leer.

## Umsetzungsstand 2026-06-16 — Codex Fix-Pass

Direkt umgesetzt und geprüft:
- Haupt-Hero strukturell gekürzt: `hero-reviews` liegt nicht mehr im `#hero`, sondern als separate Proof-Leiste danach.
- Mobile Hero-Reviews-Bar komprimiert: Review-Karten werden mobil ausgeblendet, Google-/Selected-Reviews-Hinweis bleibt sichtbar.
- Neuer Messwert Hauptseite Mobile 390x844: `#hero` ca. 901px, `hero-reviews` ca. 115px, `#warning-signs` startet bei ca. 1140px statt vorher ca. 1885px.
- Floating Risk-Check-Badge sitzt im Viewport: Desktop 1280px rechts bei ca. 1264px, Mobile 390px rechts bei ca. 378px; kein seitliches Herausschieben mehr.
- Arabic-Seite ergänzt um kompakten `#self-check` mit 4 Self-Check-Punkten und arabischem WhatsApp-Prefill.
- Arabic Navigation hat jetzt Active-State/Scrollspy für die Hauptsektionen.
- Browser-QA: Hauptseite und `/ar/` ohne horizontalen Overflow und ohne Console Errors/Warnings.

Weiterhin offen, weil externe Daten/Assets nötig sind:
- GA4 Measurement ID und Meta Pixel ID eintragen.
- DM-Approval-Nachweis und Ab-Preise final bestätigen.
- Arabic Copy durch Muttersprachler final prüfen.
- Neue reale Foto-/Video-Assets für Ads produzieren.

## A) Executive Summary

Die Website ist inzwischen strategisch stark: Sie hat eine klare Owner-led-Positionierung, echte Fotos, starke Pain-/Proof-Elemente, Franco als Gesicht, WhatsApp-Fokus und einen sinnvollen Conversion-Flow. Sie wirkt deutlich weniger generisch als typische Dubai-Cleaning-Seiten und hat durch die echten AC-/Mattress-Beweise einen Vorteil, den Wettbewerber schwer kopieren können. Die größte Schwäche liegt nicht mehr im Konzept, sondern in Dichte und Hierarchie: Die Hauptseite ist sehr lang, der Hero ist zu hoch und einige Beweis-/Trust-Elemente konkurrieren miteinander. Mobile ist funktional stabil, aber der Besucher kommt zu spät in die eigentliche Fear-/Pain-Strecke. Die Arabic-Seite ist als eigenes RTL-Angebot ein guter Schritt und wirkt nach der Design-Anpassung markenkonsistenter, ist aber noch schlanker und weniger beweisstark als die Hauptseite. Paid Traffic ist testbar, aber Skalierung ohne GA4/Meta Pixel und ohne final verifizierte Claims/Preise wäre blind.

## B) Scorecard

- Visual Design: 8.0/10
- UI/UX: 7.7/10
- Mobile UX Hauptseite: 7.0/10
- Mobile UX Arabic: 8.1/10
- Trust / Proof: 8.8/10
- Conversion Psychology: 8.3/10
- Brand Differentiation: 8.7/10
- Content/Ad Readiness: 7.9/10
- Overall Paid-Traffic Readiness: 7.6/10

## C) Die 10 größten visuellen/UX-Probleme

1. **Haupt-Hero ist zu hoch.**  
   Conversion-Kosten: Pain-Sektion startet mobil erst bei ca. 1885px; der Pattern Interrupt wird verwässert.  
   Lösung: Hero-Reviews-Bar aus dem Hero lösen oder mobil komprimieren; nächster Pain-Block muss im ersten Scroll sichtbar werden.  
   Priorität: P0. Aufwand: mittel.

2. **CTA-Dichte ist hoch.**  
   Conversion-Kosten: 42 CTA-nahe Einstiege erzeugen wieder Entscheidungslast, obwohl WhatsApp der klare Primärpfad sein soll.  
   Lösung: Nicht alle entfernen, aber pro Funnel-Phase klare CTA-Regeln definieren: WhatsApp primary, Quiz secondary, Call nur spät.  
   Priorität: P1. Aufwand: mittel.

3. **Floating Quiz ist auf Desktop teilweise außerhalb des Viewports.**  
   Conversion-Kosten: gemessen rechts `right≈1350` bei 1280px; wirkt abgeschnitten/instabil.  
   Lösung: `right: max(16px, env(...))` und `transform`/Breite prüfen; bei Desktop kompakter als pill button.  
   Priorität: P0. Aufwand: niedrig.

4. **Active Navigation fehlt.**  
   Conversion-Kosten: Bei langer Seite weiß der Nutzer trotz Sticky Nav nicht sauber, wo er ist.  
   Lösung: IntersectionObserver für aktive Nav-Links auf Hauptseite und `/ar/`.  
   Priorität: P1. Aufwand: niedrig/mittel.

5. **Hero-Proof und Review-Proof konkurrieren.**  
   Conversion-Kosten: Google-Badge, Stats, Chips, Mini-Video, Franco-Card und Reviews-Bar kämpfen um Aufmerksamkeit.  
   Lösung: Im Hero nur 2-3 stärkste Proofs; restliche Beweise in die Reviews-/Proof-Sektion verlagern.  
   Priorität: P1. Aufwand: mittel.

6. **Einige Bilder wirken noch technisch statt emotional.**  
   Conversion-Kosten: AC-Coils/Grills überzeugen, aber nicht alle Bilder erzeugen sofort “Das könnte bei mir sein”.  
   Lösung: Mehr bewohnte Dubai-Interiors mit sichtbarer Problemstelle plus echte Equipment-/Polo-Details.  
   Priorität: P1. Aufwand: hoch, neue Assets.

7. **Arabic-Seite hat keinen Risk Quiz / keinen Self-Check.**  
   Conversion-Kosten: Arabic-Funnel ist schöner, aber weniger conversion-stark als die Hauptseite.  
   Lösung: Arabic Mini-Risk-Check oder WhatsApp-Self-Check-Sektion ergänzen, nicht zwingend volles Quiz.  
   Priorität: P1. Aufwand: mittel.

8. **Trust-Claims haben noch externe Nachweis-Lücken.**  
   Conversion-Kosten: DM-Approval und Preise können bei kritischen Kunden/Ads angreifbar sein.  
   Lösung: DM-Approval erst nach Nachweis prominent; Preis-/Scope-Claims final bestätigen.  
   Priorität: P0. Aufwand: datenabhängig.

9. **Seasonal ist vorhanden, aber noch kein echter Campaign-Hub.**  
   Conversion-Kosten: Meta-Ad-Traffic landet noch auf einer universellen Seite statt spezifischem Sandstorm/Summer/Ramadan-State.  
   Lösung: URL-Parameter weiter nutzen, aber Hero/Pain/CTA pro Kampagne stärker sichtbar umschalten.  
   Priorität: P1. Aufwand: mittel.

10. **Tracking ist vorbereitet, aber leer.**  
   Conversion-Kosten: Paid-Traffic kann nicht seriös optimiert werden.  
   Lösung: GA4 Measurement ID und Meta Pixel ID eintragen; Lead-/Quiz-/WhatsApp-Events im Debugger prüfen.  
   Priorität: P0. Aufwand: niedrig, braucht IDs.

## D) Die 10 besten Dinge

1. Der Hook “Your Dubai home looks clean. Your AC ducts don't.”
2. Franco als persönlicher Accountability-Anker.
3. Echte Before/After- und Job-Fotos statt Stock-Bilder.
4. Wasserzeichen/Lightbox auf Proof-Bildern.
5. Klare Unterscheidung gegen Apps/Subunternehmer.
6. WhatsApp als primärer Conversion-Pfad.
7. Risk Check Quiz als Low-friction Lead-Magnet.
8. AC Self-Check als gute Selbst-Identifikations-Sektion.
9. 10,000+ Kunden + 4.7 Google + DED als Trust Stack.
10. Neue Arabic-RTL-Seite als strategischer Segment-Hebel.

## E) Sektion-für-Sektion Audit

- **Hero:** Hook stark, Video/Franco stark, aber Höhe zu groß. Mobil Reviews-Bar und Proof reduzieren.
- **Warning Signs:** Funktioniert als Awareness, Top-2-Hierarchie gut. Noch stärker mit realeren “Dubai home” Problemfotos.
- **AC Self-Check:** Inhaltlich richtig, weil Kunde selbst prüfen kann. Als “60-second check” visuell noch stärker führen.
- **Hidden Danger/Why:** Gute Quellen/Belege, aber Cards bleiben rational. Field Note/Fotos sollten dominanter sein als Zahlen.
- **Before/After:** Stärkster Proof-Block. Top-3-Cases richtig. Nächster Schritt: echte Provenienz final auditierbar machen.
- **Solution:** Gute Relief-Phase. Noch besser mit sichtbarem Prozess “Inspect -> Extract -> Show proof” direkt mit Equipment-Fotos.
- **Services:** Klar, aber teils generisch. Jede Karte sollte Symptom-Zuordnung und typisches Ergebnis behalten.
- **Franco:** Sehr stark. Signatur funktioniert. Langfristig echtes Shooting mit Polo + Anzug + Vor-Ort-Equipment.
- **Reviews:** Wording ist ehrlicher geworden. Google-Link/WhatsApp-Trennung beibehalten.
- **Compare:** Strategisch stark. Pro-Aqua-Spalte visuell noch klarer als “owner-led specialist” markieren.
- **Pricing:** Fixpreis-Logik gut. Preise erst nach finaler Bestätigung hart skalieren.
- **Process:** Reduziert Unsicherheit, aber visuell trocken. WhatsApp-Message-Mockup wäre besser.
- **Quiz:** Guter Hebel. Ergebnis sollte noch stärker als “Risk Level + next best step” wirken.
- **Booking:** Multi-Pfad okay spät im Funnel. WhatsApp muss sichtbar Primary bleiben.
- **B2B:** Strategisch wichtig. Braucht später eigene Mini-Landingpage.
- **Arabic:** Markenkonsistenter geworden. Nächster Schritt: Arabic Self-Check + native Copy Review.
- **Seasonal:** Guter Grundstein. Für Ads als eigene Landing-States weiter ausbauen.
- **FAQ:** Solide. Wichtig: Kinder/Pets, Terminverfügbarkeit, Preisumfang, Foto-Proof und Produkte sauber abdecken.

## F) Empfohlene Design-Richtung

- Farben: Clean Navy, Pro-Aqua Blue, WhatsApp Green, Rot nur für Pain/Warning.
- Typografie: Inter/Serif-Hero beibehalten, aber Hero-Mobile stärker verdichten.
- Bildsprache: echte Dubai-Interiors, AC-Grills, Matratzenwasser, weiße Polos, echtes Equipment.
- Badges: weniger, dafür funktional: Proof, Source, Action, Trust.
- Icons: nur einsetzen, wenn sie den Claim sofort erklären; Proof lieber mit Foto.
- Cards: Reviews, Pricing, Service-Auswahl ja; Proof stärker bildlastig/editorial.
- Animationen: Count-up, sanfte Reveals, ruhiges Mini-Video; keine dauerhafte Bewegung überall.
- Trust: Franco + Google + WhatsApp + DED + Before/After + Community/Month-Captions.

## G) 15 Quick Wins

1. Haupt-Hero mobil um mindestens 500-700px kürzen.
2. Hero-Reviews-Bar aus `.hero` lösen oder mobil auf eine Zeile reduzieren.
3. Floating Quiz rechts sauber innerhalb Viewport fixen.
4. Active Nav per IntersectionObserver ergänzen.
5. Mobile Hero nur zwei Trust-Chips plus Google-Badge zeigen.
6. Desktop Hero-Stats auf 3 saubere Elemente begrenzen.
7. `Safe Cleaning Products` nur verwenden, wenn Produktdetails sauber belegt sind.
8. Warning-Signs stärker mit echten Fotos statt AI-/Symbol-Anmutung priorisieren.
9. AC Self-Check CTA visuell als “Send Franco a photo/video” stärker hervorheben.
10. Compare-Pro-Aqua-Spalte mit “Owner-led specialist” Badge stärken.
11. Process mit WhatsApp-Mockup ergänzen.
12. Quiz-Ergebnis visuell als Low/Medium/High Risk Summary ausbauen.
13. Arabic-Seite um einen kompakten Self-Check ergänzen.
14. Footer-/Late-Funnel-CTAs reduzieren: WhatsApp + Call, nicht mehrere Quote-Varianten.
15. Google-Badge überall exakt gleich darstellen.

## H) 10 größere strategische Verbesserungen

1. GA4 und Meta Pixel produktiv eintragen und Events testen.
2. Franco-Fotoshooting: Anzug, Polo, Team, Equipment, Dubai-Home.
3. 10 kurze Proof-Videos: AC dirt reveal, mattress water, scope/duct, before/after handover.
4. Sandstorm/Summer/Ramadan/Back-to-School Landing-States ausbauen.
5. Arabic-Seite von Muttersprachler finalisieren.
6. Arabic Ads + Arabic WhatsApp-Scripts erstellen.
7. B2B-Landingpage für Property Manager/Holiday Homes.
8. DM-Approval und Trade-License-Nachweise als Trust-Asset vorbereiten.
9. Google-Review-Prozess systematisieren und manuell kuratieren.
10. Asset-System für Meta Ads: 5 Hook-Videos, 5 Pain-Images, 5 Franco-Trust-Clips.

## I) Finales Urteil

Die Website ist für kontrollierte Paid-Traffic-Tests bereit, aber noch nicht für aggressives Scaling. Für kleine Tests eignet sich ein Budget von etwa AED 100-300 pro Tag pro klarer Kampagnenrichtung, sobald GA4/Meta Pixel eingetragen sind. Ohne Tracking sollte kein ernsthaftes Paid-Budget skaliert werden. Die letzten Blocker sind: Tracking-IDs, DM-Approval-Nachweis, final bestätigte Preise/Scopes und bessere reale Foto-/Video-Assets für Ad-Creatives. Wenn diese Punkte geschlossen sind, liegt die Seite realistisch bei 8.7-9.0/10 Paid-Readiness.
