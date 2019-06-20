---
id: 15
outputs:
  - /de/git-spart-arztkosten/index.html
  - /blog/2010/09/git-spart-arztkosten/index.html
  - /15/index.html
language: de
title: git spart Arztkosten
description:
---

<p>
Jedenfalls für alle Programmierer, Designer und sonstigen Leuten die am Computer mit Dateien arbeiten. Denn die, die noch nicht git verwenden, kennen folgendes nur zu gut:
</p>
<p>
Man hat etliche Dateien die sich im Namen nur durch eine Zahl unterscheiden, eventuell sogar ganze Projektordner weil man dem Kunden ja Version 1, 2 und 3 präsentieren will. Im Quellcode sind ganze Blöcke auskommentiert die im Moment nicht verwendet werden, aber man ist sich eben nicht ganz sicher ob man sie später nicht doch braucht. Und obwohl man dieses Chaos aus Bits und Bytes auf seiner Festplatte hat kommt es immer wieder mal vor das man diese eine Passage die man vor einem Tag gelöscht hat doch noch braucht. Tja, Pech gehabt und neu schreiben.
</p>
<p>
Dieser ganze Stress und Ärger lässt sich einfach vermeiden wenn man <a href="http://git-scm.com/">git</a> verwendet, als Nebenprodukt verschwindet sogar noch das Dateichaos von der Platte! git ist eine Software zur Versionsverwaltung von Dateien, egal ob man alleine daran arbeitet oder im Team, behauptet zumindest <a href="http://de.wikipedia.org/wiki/Git">Wikipedia</a>. Und nebenbei sogar kostenlos!
</p>
<p>
In der Praxis bedeutet das, dass man zu jedem Zeitpunkt sagen kann "<em>git bitte speichere mir den aktuellen Zustand von Datei 1, Datei 2 und Datei 5</em>". Man kann, oder besser sollte, zu jedem dieser Speicherpunkte einen Kommentar schreiben der beschreibt was man an diesen Dateien geändert, hinzugefügt oder gelöscht hat. git merkt sich nämlich alle diese Speicherpunkte damit der Benutzer jederzeit zu einem früheren Punkt springen kann falls nötig.
</p>
<p>
Wenn man sich also angewöhnt in regelmäßigen Abständen zu speichern kann es einem nicht mehr passieren das man etwas nocheinmal schreiben muss weil man es zu früh gelöscht hat. Man springt einfach dorthin zurück in die Vergangenheit wo es den Fehler noch nicht gab und holt sich das Gelöschte von dort, oder man arbeitet direkt an dieser Stelle wieder weiter.
</p>
<p>
Braucht man eine oder mehr Kopien seiner Dateien weil man zum Beispiel einem Kunden zwei Versionen vorlegen möchte und die Original Dateien unverändert bleiben sollen ist das ein Kinderspiel mit git. Die verschiedenen Versionen werden im Hintergrund, man hat also niemals doppelte Dateien oder Ordner in seinem Dateisystem herumliegen, von git verwaltet. Man kann jederzeit zwischen den Versionen herumspringen und so sehr einfach und gefahrlos Ideen ausprobieren ohne das man die schon funktionierende Version ändern muss. Stellt sich die Idee als Blödsinn heraus löscht man die betreffende Version, ist sie aber der Knaller kann man sie sehr einfach mit seiner Original Version zusammenführen um wieder nur eine Version zu haben!
</p>
<p>
Und das Beste daran? Das oben beschriebene funktioniert auch wenn man im Team arbeitet! Man überschreibt und vernichtet nie wieder unabsichtlich die Arbeit der Kollegen, will jemand etwas ausprobieren kann er das ohne dass er den Rest des Teams einschränkt und bremst. Und am Ende weiß man sogar noch genau wer was genau geschrieben hat!
</p>
<p>
Lust bekommen git auszuprobieren? <a href="http://stravid.com/blog/2010/09/die-git-krabbelstube/">Hier gehts zur git Krabbelstube</a>!
</p>
