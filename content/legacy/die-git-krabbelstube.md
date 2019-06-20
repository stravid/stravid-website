---
id: 11
outputs:
  - /de/die-git-krabbelstube/index.html
  - /blog/2010/09/die-git-krabbelstube/index.html
  - /11/index.html
language: de
title: Die git Krabbelstube
description: Mit git gehen lernen.
---

<p>
Wer nicht weiß was git ist oder wieso er es ausprobieren und benutzen soll kann sein Wissen mit dem Beitrag <a href="http://stravid.com/blog/2010/09/git-spart-arztkosten/">git spart Arztkosten</a> auffrischen!
</p>
<h2>Installation</h2>
<p>
Für Windows findet man die benötigten Dateien <a href="http://code.google.com/p/msysgit/downloads/list">hier</a>, die Mac User <a href="http://code.google.com/p/git-osx-installer/downloads/list?can=3">hier</a>. In Linux funktioniert es am schnellsten mit diesem Ausdruck.
</p>
<p>
<pre>$ sudo apt-get install git-core</pre>
</p>
<p>
Wenn man will kann man noch die beiden zusätzlichen Pakete <code>git-gui</code> und <code>git-doc</code> installieren.
</p>
<h2>Konfigurieren</h2>
<p>
git verfügt zwar über eine Grafische Benutzeroberfläche, trotzdem arbeite ich aber nur mit der Konsole da es einfach schneller und praktischer ist sobald man sich die wenigen Befehle gemerkt hat.
</p>
<p>
Ist git installiert öffnen wir die Konsole, unter Windows bitte nicht die Windowseigene Konsole sondern die "Git Bash" die man im Startmenü findet, und geben git unsere Benutzerdaten, diese werden zu jedem Commit (was das ist wird weiter unten erklärt) mitgespeichert damit man immer sagen kann welche Teile von welcher Person stammen.
</p>
<p>
<pre>
$ git config --global user.name &quot;David Strauss&quot;
$ git config --global user.email &quot;mail@stravid.com&quot;
</pre>
</p>
<h2>Arbeiten</h2>
<p>
git arbeitet mit so genannten "Repositories", man könnte es als Ordner / Kontainer beschreiben in dem alle Projektdateien liegen. Normalerweise hat man pro Projekt ein Repository auf seinem Computer. Wir erstellen einen Ordner für unser Dummy-Projekt, darin erstellen wir dann eine einfache Textdatei. Und dann wirds spannend, mit <code>git init</code> sagen wir git es soll hier ein neues Repository erstellen.
</p>
<p>
<pre>
$ mkdir dummy-projekt
$ cd dummy-projekt
$ touch readme.txt
$ git init
Initialized empty Git repository in d:/workspace/dummy-projekt/.git/
</pre>
</p>
<p>
Was ist passiert? git hat in unserem "dummy-projekt" einen unsichtbaren Ordner namens <code>.git</code> erstellt. Diesen braucht git damit es unseren "dummy-projekt" Ordner als Repository erkennt, desweiteren speichert es dort drinnen alle relevanten Daten. Wir, der Benutzer haben in diesem Ordner nichts verloren!
</p>
<p>
<code>git status</code> ist der nächste Befehl den wir kennenlernen, er liefert uns eine aktuelle Übersicht über unser Repository: Welche Dateien wurden seid unserem letzten Commit bearbeitet und welche Dateien werden von git noch nicht getracked.
</p>
<p>
<pre>
$ git status
# On branch master
#
# Initial commit
#
# Untracked files:
#   (use &quot;git add &lt;file&gt;...&quot; to include in what will be committed)
#
#       readme.txt
nothing added to commit but untracked files present (use &quot;git add&quot; to track)
</pre>
</p>
<p>
Wir sehen das es eine Datei, <code>readme.txt</code> gibt die nicht getracked wird. Um das zu ändern verwenden wir den Befehl <code>git add</code>, dieser bewirkt folgendes: Der aktuelle Stand der Datei wird erfasst und die Datei ändert ihren git internen Status von "unstaged" zu "staged". Das bedeutet genau dieser Zustand der Datei wird beim nächsten Commit abgespeichert. Mit <code>git status</code> können wir das ganz einfach überprüfen.
</p>
<p>
<pre>
$ git add readme.txt
$ git status
# On branch master
#
# Initial commit
#
# Changes to be committed:
#   (use &quot;git rm --cached &lt;file&gt;...&quot; to unstage)
#
#       new file:   readme.txt
#
</pre>
</p>
<p>
Haben wir alle Dateien mit <code>git add</code> hinzugefügt die wir bei unserem Commit dabei haben wollen machen wir unseren ersten Commit mit dem Befehl <code>git commit -m "Mein erster Commit"</code>. git speichert jetzt den Zustand der hinzugefügten Dateien in einem so genannten Commit.
</p>
<p>
<pre>
$ git commit -m &quot;Mein erster Commit&quot;
[master (root-commit) 2043aa1] Mein erster Commit
0 files changed, 0 insertions(+), 0 deletions(-)
create mode 100644 readme.txt
</pre>
</p>
<p>
Jetzt öffnen wir unsere <code>readme.txt</code> mit einem Texteditor unserer Wahl und schreiben alle uns bekannten git Befehle hinein. Nach dem speichern wechseln wir wieder in unsere Konsole und geben <code>git status</code> ein, git hat erkannt das unsere Datei modifiziert wurde. Wir sind mit unserer Arbeit zufrieden und wollen wieder einen Commit machen, gerade als wir <code>git add readme.txt</code> eingegeben haben fällt uns ein das wir einen Befehl in der Datei vergessen haben, also fügen wir diesen noch schnell hinzu.
</p>
<p>
<pre>
$ git status
# On branch master
# Changed but not updated:
#   (use &quot;git add &lt;file&gt;...&quot; to update what will be committed)
#   (use &quot;git checkout -- &lt;file&gt;...&quot; to discard changes in working directory)
#
#       modified:   readme.txt
#
no changes added to commit (use &quot;git add&quot; and/or &quot;git commit -a&quot;)
$ git add readme.txt
</pre>
</p>
<p>
Wenn wir jetzt noch einmal <code>git status</code> eingeben sehen wir das <code>readme.txt</code> zweimal aufscheint. Wieso ist das so? Wir haben sie in der Zwischenzeit bearbeitet und git hat das gemerkt! Wenn wir jetzt einen Commit machen wird <code>readme.txt</code> in genau dem Zustand commited in dem sie beim hinzufügen war. Die Änderungen die wir am Ende noch schnell gemacht haben wären bei diesem Commit nicht dabei.
</p>
<p>
Dieses Verhalten ist in vielen Fällen praktisch, wir wollen aber in diesem Fall auch unsere letzten Änderungen beim commiten dabei haben deswegen müssen wir die Datei noch einmal stagen. An dieser Stelle eine Kurzvariante mit der man in nur einem Schritt alle modifizierten Dateien staged und gleichzeitig einen Commit macht. Dazu geben wir <code>git commit -a -m "git Befehle hinzugefuegt"</code> ein. Das Flag <code>-a</code> sagt git das alle Dateien die schon getracked werden und seit dem letzten Commit modifiziert wurden zu dem neuen Commit hinzugefügt werden sollen.
</p>
<p>
<pre>
$ git status
# On branch master
# Changes to be committed:
#   (use &quot;git reset HEAD &lt;file&gt;...&quot; to unstage)
#
#       modified:   readme.txt
#
# Changed but not updated:
#   (use &quot;git add &lt;file&gt;...&quot; to update what will be committed)
#   (use &quot;git checkout -- &lt;file&gt;...&quot; to discard changes in working directory)
#
#       modified:   readme.txt
#
$ git commit -a -m &quot;git Befehle hinzugefuegt&quot;
[master warning: CRLF will be replaced by LF in readme.txt.73c0c45] git Befehle hinzugefuegt
1 files changed, 7 insertions(+), 0 deletions(-)
</pre>
</p>
<p>
Das sind die minimalen Basics um mit git arbeiten zu können, sobald diese in Fleisch und Blut übergegangen sind kann man sich mit den restlichen Möglichkeiten von git auseinander setzen.
Dazu gibt es bald einen weiteren git - Beitrag von mir!
</p>
