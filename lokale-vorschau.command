#!/bin/bash
# Proaqua Website — lokale Vorschau
# Doppelklick startet einen lokalen Webserver und öffnet die Seite in Chrome.
cd "$(dirname "$0")"
echo "Lokale Vorschau läuft auf http://localhost:8742"
echo "Zum Beenden dieses Fenster schließen oder Ctrl+C drücken."
( sleep 1 && open -a "Google Chrome" "http://localhost:8742" ) &
python3 -m http.server 8742
