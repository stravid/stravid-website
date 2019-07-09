---
id: 57
outputs:
  - /57-open-banking-psd2-raiffeisenbank/index.html
  - /57/index.html
language: de
title: Erste Erfahrung mit der Raiffeisenbank und Open Banking / PSD2
description:
---

# Erste Erfahrung mit der Raiffeisenbank und Open Banking / PSD2

Abfragen von Kontoinformationen passiert in Zukunft direkt per Schnittstelle. Wir verdanken diesen Fortschritt der Europäischen Union. Die Schlagwörter “Open Banking” und “PSD2” dienen als Einstieg in dieses Thema.

Diese Schnittstellen haben einen vielfältigen Nutzen in der individuellen Software die ich beruflich entwickle. Der Abgleich von offenen Posten und Zahlungseingängen passiert in Zukunft automatisch.

Privat greift ein anderes Tool auf die Schnittstelle zu. Aus den Daten wird automatisiert die Grundstruktur von [Plaintext Accounting Einträgen](https://plaintextaccounting.org/) generiert.

Wie lief der erste Versuch mit der Raiffeisenbank Schnittstelle?

- Das Anlegen eines Entwickler Accounts funktioniert schnell und unkompliziert.

- Die Schnittstellen Zugangsdaten lassen sich nicht kopieren. Das gesperrte Passwort Eingabefeld in Kombination mit Angular oder Firefox ist vermutlich die Ursache. Mit Hilfe des Webinspektors ist kein Abtippen nötig.

- Das Portal nutzt anscheinend Angular. Das benutzen und navigieren leidet darunter merkbar. Pragmatisches HTML ist  weniger komplex und einfacher zu benutzen.

- Inhaltlich ist die Dokumentation in Ordnung aber nicht das Gelbe vom Ei.

- Scheinbar ist es im Moment nicht möglich den kompletten Ablauf in der Sandbox durchzuspielen. Der Abschnitt wo eine Endbenutzerin sich authentifiziert und die Nutzung der Schnittstelle au­to­ri­sie­rt wird mit Beispieldaten simuliert.

- Bei einem Fehler scheinen technische Details in der Server-Antwort auf die dort nichts zu suchen haben. An mindestens einer Stelle wird eine Platzhalter Fehlermeldung angezeigt. (Beispiel: “FAIL FAIL”.)

Als nächstes wird die Schnittstelle der Sparkasse ausprobiert. Nach einem kurzen Blick in die Dokumentation scheint hier in der Sandbox der vollständige Ablauf zu funktionieren.
