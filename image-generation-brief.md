# Pro Aqua Image Generation Brief

Stand: 2026-06-13

## Grundsatz

KI-Bilder werden fuer Kampagnen-, Hero- und Social-Ad-Visuals genutzt, nicht als angebliche echte Vorher/Nachher-Beweise. Die bestehende `#before-after`-Galerie bleibt der Ort fuer reale Kundenergebnisse. Generierte Bilder duerfen die Markenwelt staerken, muessen aber realistisch, ruhig, Dubai-spezifisch und nicht stockig wirken.

## Master Mega Prompt

```text
Use case: ads-marketing
Asset type: photorealistic Meta/Instagram campaign visual for Pro Aqua Dubai cleaning services
Primary request: Create a premium but believable cleaning-service campaign photo for a Dubai home, showing the relevant seasonal cleaning trigger without any text overlay.

Brand context:
Pro Aqua Dubai is an owner-led specialist cleaning company for AC duct cleaning, mattress/fabric sanitizing and deep cleaning. The positioning is "hospital-grade cleaning at family-fair fixed prices", with a personal specialist team rather than anonymous app subcontractors.

Audience:
Dubai expat families, villa owners, Arabic-speaking households, property managers and holiday-home operators. The image should feel trustworthy for Palm Jumeirah, Dubai Marina, JBR, JVC, Arabian Ranches, Dubai Hills and similar residential areas.

Visual style:
Photorealistic natural editorial photography, premium residential Dubai interior, clean but lived-in, realistic materials and practical details. Avoid glossy stock-photo perfection. Use real texture: dust on vents, fabric weave, mattress stitching, AC grille details, cleaning equipment, technician gloves, microfiber cloths, extractor nozzle, inspection light, or HEPA/vacuum hose where relevant.

Equipment - mandatory:
Use a Vivenso / Pro-Aqua style water filtration vacuum system as the visible machine. It must look like the flyer reference: glossy white compact canister on a white wheeled base, transparent lower water basin/water chamber, black top carry handle, black side latch, black hose connector, black flexible suction hose, and a front control panel with black plus subtle turquoise/blue accent. For upholstery or mattress cleaning, show the spray extraction kit: transparent upholstery/mattress nozzle, black hose, and a small fresh-water/spray line if visible. Do not use a generic shop vacuum, yellow machine, blue commercial extractor, black-only machine, or random industrial carpet cleaner.

Uniform - mandatory:
Technicians wear clean white short-sleeve Pro-Aqua style polo shirts with dark navy collar/trim, matching the service video. Blue disposable gloves. If a logo is visible, use only a small abstract teal/blue droplet mark without readable text. Do not use navy polos.

Composition:
4:5 vertical social-ad composition, strong subject in the center or lower third, enough clean negative space in the upper third for ad copy added later in Meta. Keep framing usable as a website campaign card as well. No split-screen before/after layout unless explicitly requested.

Lighting/mood:
Bright Dubai daylight through windows, soft realistic shadows, hygienic and calm mood. Use a restrained Pro Aqua palette indirectly: clean whites, warm neutral interiors, soft blue-green accents on tools or gloves. No heavy gradients, no dark cinematic color grade.

People:
If a technician appears, show only natural hands/arms or an anonymous professional in the white Pro-Aqua style polo. Do not invent Franco's face or any recognizable person. No visible customer faces unless they are generic and not central.

Trust constraints:
No unrealistic miracles, no exaggerated mold, no scary contamination, no fake certification badges, no logos, no claims, no star ratings, no QR codes, no watermarks. Do not include readable brand text unless explicitly requested. Do not make the image look like an actual documented customer result.

Image quality:
Sharp focal point, realistic lens depth, high detail on the cleaned object, no warped tools, no impossible AC geometry, no extra fingers, no plastic-looking people, no oversaturated colors.

Avoid:
generic blue extractor, yellow machine, shop vacuum, black-only equipment, wrong navy polo, stock-photo smiles, luxury hotel lobby look, over-polished CGI, fake before/after labels, text in image, misspelled words, cartoon style, excessive dirt, horror mold, medical lab scene, generic office cleaning, exaggerated blue glow, cluttered composition, visible competitor branding.
```

## Prompt 1 — Summer AC Check

```text
Use the Master Mega Prompt.
Scene: A bright Dubai villa living room in summer daylight with a wall AC vent or ceiling diffuser being inspected.
Subject: Close-up of a technician in a white polo and blue gloves opening or inspecting an AC grille with a small inspection light; the white Vivenso-style water filtration system is visible nearby with black hose attached.
Seasonal trigger: The AC runs all day in Dubai summer; the image should imply proactive inspection before dust and moisture become an air-quality issue.
Composition: 4:5 vertical, AC vent and technician hands in the lower-middle, clean negative space in the upper third, warm home interior softly visible.
Must avoid: visible text, before/after labels, scary mold, fake badges, recognizable faces.
```

## Prompt 2 — Sandstorm Reset

```text
Use the Master Mega Prompt.
Scene: A Dubai apartment or villa living area after dusty weather, with fine sand/dust visible on an AC vent edge and nearby fabric surface.
Subject: Technician in a white polo and blue gloves cleaning an AC vent with microfiber cloth or soft brush; the white Vivenso-style water filtration system is visible nearby with black hose and transparent water chamber.
Seasonal trigger: After sandstorms or dusty weeks, fine dust settles inside vents and fabrics.
Composition: 4:5 vertical, tactile close-up, visible dust detail but not disgusting, upper third clean enough for ad headline later.
Must avoid: desert landscape, storm outside window as the main subject, heavy dirt, fake before/after split, text.
```

## Prompt 3 — Ramadan & Eid Deep Cleaning

```text
Use the Master Mega Prompt.
Scene: Calm Dubai villa majlis or family living room before guests arrive, elegant but realistic, warm neutral sofa and clean floor.
Subject: Technician in a white polo and blue gloves using a transparent spray-extraction upholstery nozzle on a sofa or upholstered chair; the white Vivenso-style water filtration system is visible nearby with black hose and transparent water chamber.
Seasonal trigger: Preparing the home before Ramadan/Eid family visits and gatherings.
Composition: 4:5 vertical, premium but believable villa interior, sofa/fabric cleaning action in the lower half, clean negative space above.
Must avoid: religious symbols as decoration, people praying, staged luxury hotel look, visible text, fake family scene.
```

## Prompt 4 — Back-to-School Allergy Reset

```text
Use the Master Mega Prompt.
Scene: Bright child bedroom or study corner in a Dubai apartment/villa, tidy and realistic, school bag or books softly in the background.
Subject: Technician in a white polo and blue gloves sanitizing a mattress with a transparent spray-extraction nozzle; the white Vivenso-style water filtration system is visible nearby with black hose and transparent water chamber.
Seasonal trigger: Reset bedrooms and study spaces before school starts, with allergy-conscious cleaning.
Composition: 4:5 vertical, mattress/fabric cleaning in the lower-middle, soft daylight, clean negative space in upper third.
Must avoid: visible children's faces, toy clutter, fake medical claims, text, before/after labels.
```

## Einsatz auf der Website

- Nicht in `#before-after` als reale Ergebnisse einsetzen.
- Geeignet fuer saisonale Ads, Creative-Tests, Social Posts und spaeter ggf. eine separate `#campaign-visuals`- oder Seasonal-Hero-Variante.
- Wenn Bilder in die Website kommen: als WebP nach `assets/`, klare Dateinamen wie `campaign-sandstorm-reset-dubai.webp`, `loading="lazy"`, keine Base64-Einbettung.

## V2-Korrektur 13.06.2026

Die erste Bildserie war stilistisch gut, aber das Equipment war zu generisch. V2 muss immer an Flyer + Video orientiert sein:

- Equipment: Vivenso/Pro-Aqua Wasserfilter-System, weiss, kompakter Kanister, transparente Wasserwanne, schwarze Schlaeuche/Griffe, schwarzes oder blau-tuerkises Bedienfeld.
- Polos: weiss mit dunklem Kragen/Trim wie im Pro-Aqua-Video, nicht navy.
- Logo: maximal abstrakter Tropfen ohne lesbaren KI-Text.
- Spruehextraktion: transparente Polster-/Matratzenduese mit schwarzem Schlauch.

## Caption-Regel fuer echte Galerie

Fuer reale `#before-after`-Bilder spaeter pro Fall ergaenzen:

- Service
- Stadtteil, z. B. Dubai Marina, JVC, Palm Jumeirah
- Monat/Jahr
- Problem vor Reinigung
- Was Pro Aqua konkret gemacht hat
- Proof-Typ: "Real client job · before/after photos documented"
