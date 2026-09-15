# Seid ihr dabei?

Eine Web-App zur Terminfindung und Anmeldung – ähnlich wie Doodle, aber mit
Tischplanung, Platzbegrenzung und Foto-Galerie. Teilnehmende brauchen kein Konto,
sie öffnen einfach den Link oder geben den Code ein.

## Was drin ist

Nur **eine einzige Datei**: `index.html`. Darin steckt die komplette App.
Es gibt keinen Build-Schritt, kein npm, keine Installation.

## Online stellen

### Variante A: Netlify (am einfachsten, ohne GitHub)

1. Auf https://app.netlify.com/drop gehen
2. Die Datei `index.html` mit der Maus auf die Seite ziehen
3. Fertig – die App ist unter einer `.netlify.app`-Adresse erreichbar

### Variante B: GitHub Pages

1. Dieses Repository auf GitHub hochladen
2. Im Repository auf **Settings → Pages** gehen
3. Bei "Source" den Branch `main` und den Ordner `/ (root)` auswählen
4. Speichern – nach ein paar Minuten ist die Seite online

### Variante C: Netlify oder Vercel mit GitHub verbinden

1. Repository auf GitHub hochladen
2. Bei Netlify bzw. Vercel das Repository importieren
3. Wichtig: **Kein Build-Befehl** nötig, als Veröffentlichungsordner `/` bzw. `.` angeben

## Datenbank

Die App speichert alle Umfragen in einer Supabase-Datenbank. Die Zugangsdaten
stehen oben in der `index.html` (Zeilen mit `SUPABASE_URL` und `SUPABASE_ANON_KEY`).

Falls eine neue Datenbank eingerichtet werden soll:

1. Bei https://supabase.com ein kostenloses Projekt anlegen
2. Im SQL Editor den Inhalt von `supabase-setup.sql` ausführen
3. Unter **Project Settings → API** die Projekt-URL und den
   `publishable`-Schlüssel kopieren
4. Beide Werte oben in der `index.html` eintragen

## Funktionen

- Umfragen mit mehreren Terminvorschlägen (Datum, Uhrzeit, Beschreibung)
- Pro Termin: Platzbegrenzung, mehrere Tische mit eigener Kapazität, oder unbegrenzt
- Anmeldung mit Name und Personenanzahl, ohne Benutzerkonto
- Tischwunsch mit automatischem Ausweichen auf einen freien Tisch
- Warnung in Rot, wenn die Personenzahl die freien Plätze überschreitet
- Option "Nur Abholung" (belegt keinen Sitzplatz)
- Eigene Anmeldung jederzeit ändern oder zurückziehen
- Fotos hochladen und Video-Links teilen
- Admin-Bereich per Code: Anmeldungen schließen, zurücksetzen, Termine archivieren,
  archivierte Termine als Vorlage für neue Termine nutzen
- Automatische Aktualisierung alle 5 Sekunden
