---
id: 48
outputs:
  - /ruby-web-applikationen-konfigurieren.html
  - /48/index.html
language: de
title: Konfiguration von Ruby Web-Applikationen
description: Welche Möglichkeiten gibt es, welche Vor- und Nachteile haben diese?
---

<h1>Konfiguration von Ruby Web-Applikationen</h1>

<p>
  Basierend auf persönlicher Erfahrung, Beobachtungen, Ausfällen im Produktivbetrieb und Austausch mit Kolleginnen ist meine Meinung zu Konfiguration wie folgt.
</p>

<p>
  Es gibt einen Unterschied zwischen <strong>Konfigurations Werten</strong> und der <strong>Konfigurations Definition</strong>.
</p>

<p>
  Um Ausfälle zu verhindern ist es wichtig eine explizite Definition der Konfiguration zu haben und die Konfiguration sofort beim Start der Web-Applikation zu laden. So können Laufzeitfehler in dynamischen Programmiersprachen denen Konfigurationsfehler zugrunde liegen minimiert werden.
</p>

<p>
  Konfigurations Werte können aus Umgebungsvariablen, Konfigurationsdateien oder Kommandozeilenparameter ausgelesen werden.
</p>

<p>
  <strong>Kommandozeilenparameter sind für sensible Werte wie Datenbank Verbindungsdaten nicht geeignet da sie im Prozessbaum des Betriebsystems für alle Benutzerinnen sichtbar sind.</strong>
</p>

<p>
  Im Produktivbetrieb eignen sich Konfigurationsdateien da mit Berechtigungen Sicherheit geschaffen werden kann.
</p>

<p>
  In der Entwicklung kann mit <code>--config <( echo '{"database_url":"..."}';)</code> eine Konfigurationsdatei vorgetäuscht werden um das Entwicklungserlebnis zu verbessern.
</p>
