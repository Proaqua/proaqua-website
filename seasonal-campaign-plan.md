# Pro Aqua Seasonal Campaign Plan

Stand: 2026-06-13

## Ziel

Die Website soll nicht wie eine statische Broschuere wirken, sondern je nach Saison und Werbekampagne einen passenden Einstieg bieten. Meta-/Instagram-Ads sollen auf dieselbe Seite schicken koennen, aber mit klarer saisonaler Botschaft, sauberer UTM-Struktur und messbaren Lead-Klicks.

## Technische Basis

Der Abschnitt `#seasonal` in `index.html` reagiert auf:

- `?season=summer-ac#seasonal`
- `?season=sandstorm#seasonal`
- `?season=ramadan-eid#seasonal`
- `?season=back-to-school#seasonal`
- alternativ auf passende Werte in `utm_campaign`, `utm_content` oder `utm_term`

Wenn keine Kampagne gesetzt ist, wird automatisch ein saisonaler Fokus nach Monat gewaehlt:

- Februar bis April: Sandstorm Reset
- Mai bis Juli: Summer AC Check
- August bis September: Back-to-School Allergy Reset
- Ramadan/Eid: nur per Kampagnen-URL, weil die Daten jedes Jahr wechseln

## Kampagnen-URLs

Summer AC Check:
`https://www.proaquadxb.com/?season=summer-ac&utm_source=meta&utm_medium=paid_social&utm_campaign=summer_ac_check&utm_content=reel_before_after#seasonal`

Sandstorm Reset:
`https://www.proaquadxb.com/?season=sandstorm&utm_source=meta&utm_medium=paid_social&utm_campaign=sandstorm_reset&utm_content=dust_home#seasonal`

Ramadan & Eid:
`https://www.proaquadxb.com/?season=ramadan-eid&utm_source=meta&utm_medium=paid_social&utm_campaign=ramadan_eid_cleaning&utm_content=villa_family#seasonal`

Back-to-School:
`https://www.proaquadxb.com/?season=back-to-school&utm_source=meta&utm_medium=paid_social&utm_campaign=back_to_school_allergy_reset&utm_content=kids_bedroom#seasonal`

## Creative-Angles fuer Meta/Instagram

Summer AC Check:
- Hook: "Your AC runs all day. When was the last duct inspection?"
- Visual: Before/after duct dust, technician at AC vent, family living room.
- CTA: Book Free AC Inspection.

Sandstorm Reset:
- Hook: "After dusty weeks, the dust is not only outside."
- Visual: Dust on vents, sofa fabric close-up, clean filter/duct after service.
- CTA: Book Sandstorm Reset.

Ramadan & Eid:
- Hook: "Prepare your villa before family visits."
- Visual: Clean majlis/living room, mattress/fabric sanitizing, team at villa.
- CTA: Book Ramadan & Eid Deep Cleaning.

Back-to-School:
- Hook: "Reset bedrooms and study spaces before school starts."
- Visual: Kids room, mattress sanitizing, AC vent inspection.
- CTA: Book Allergy Reset.

## Generierte V1-Assets

Diese Bilder sind KI-generierte Kampagnenvisuals und duerfen nicht als echte Vorher/Nachher-Beweise verwendet werden:

- `assets/campaign-summer-ac-check-dubai.webp`
- `assets/campaign-sandstorm-reset-dubai.webp`
- `assets/campaign-ramadan-eid-cleaning-dubai.webp`
- `assets/campaign-back-to-school-allergy-reset-dubai.webp`

Die echten Beweisbilder bleiben ausschliesslich im Abschnitt `#before-after`.

## Messpunkte

Der vorhandene Tracking-Hook sendet bei jedem Lead-Klick das Event `lead_click` mit:

- `channel`: `whatsapp`, `phone` oder `email`
- `location`: Abschnitt der Website, z. B. `seasonal`, `booking`, `footer`
- `season`: aktiver saisonaler Fokus
- `utm_source`, `utm_medium`, `utm_campaign`
- `link_text`
- `page_path`

Sobald echte IDs vorliegen, muessen GA4 und Meta Pixel ergaenzt werden. Der Hook sendet dann automatisch an `gtag` und `fbq`.

## Naechster sauberer Schritt

1. GA4 Measurement ID und Meta Pixel ID eintragen.
2. WhatsApp-Lead-Klicks als GA4 Conversion markieren.
3. Meta Custom Conversion auf `lead_click` mit `channel=whatsapp` anlegen.
4. Pro Kampagne mindestens zwei Creatives und zwei Hooks testen.
5. Nach 7 bis 14 Tagen nach `cost per whatsapp lead`, `season`, `placement` und `creative` auswerten.
