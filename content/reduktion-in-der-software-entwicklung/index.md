---
id: 59
outputs:
  - /59-vortrag-reduktion-in-der-software-entwicklung/index.html
  - /59/index.html
language: de
title: "Vortrag: Reduktion in der Software-Entwicklung"
description: Vortrag an der FH Salzburg für den Studiengang MMT über Reduktion in der Software-Entwicklung
---

# Vortrag: Reduktion in der Software-Entwicklung

Ich durfte im April 2022 einen Vortrag an der FH Salzburg halten. Danke an Brigitte Jellinek und Andreas Bilke vom Studiengang MMT die das möglich gemacht haben. Der Vortrag ist mein Versuch zu zeigen wieso auch in der Software-Entwicklung weniger mehr ist. In den letzten Jahren bin ich zunehmend desillusionierter geworden was die Nutzung von Techologie betrifft.

In den meisten Fällen hat die Verwendung von modernen Frameworks oder Techniken keinen Nutzen für die Menschheit. Im Gegenteil, die damit gebaute Software wird langsamer, teurer und in Zukunft noch weniger wartbar. Nur wir, die Software-Entwickler:innen, freuen uns darüber. Ein neuer Punkt auf unserem Lebenslauf, eine weitere Gelegenheit sich zu profilieren.

Im Folgenden befinden sich die Präsentationsfolien mit dem von mir gesprochenen Texten. In Zukunft überwinde ich mich vielleicht, auch die Videoaufzeichnung verfügbar zu machen.

![](/reduktion-in-der-software-entwicklung/slides-01.png)

Ich möchte euch einen Zugang zur Software Entwicklung vorstellen der in meinen Augen nicht weit verbreitet ist. In der Hoffnung das am Ende ein paar von euch ihre Arbeit hinterfragen.

![](/reduktion-in-der-software-entwicklung/slides-02.png)

Als Software Entwickler muss ich mir nämlich eingestehen das unsere Branche regelmässig das Ziel aus den Augen verliert. Wir setzen komplexe neue Technologien ein obwohl es diese nicht benötigt um unser Ziel zu erreichen.

![](/reduktion-in-der-software-entwicklung/slides-03.png)

Bevor wir uns ansehen was ich damit meine ein wenig Kontext zu mir. Mein Name ist David Strauß. Ich programmiere seit 20 Jahren. Die letzen 11 Jahre wurde ich dafür bezahlt.

Ich arbeite bei edgy circle, meinem eigenen Unternehmen, in einem kompakten Team.

Mit dem heutigen Stand habe ich 31 Web-Anwendungen gebaut. Davon sind 23 noch immer in Betrieb.

Bei diesen Zahlen denkt ihr vielleicht "Wow der hat viel Erfahrung", und ich hoffe das ist auch so. Trotzdem habe ich im letzten Jahr 83 Defekte im Echtbetrieb zugelassen.

![](/reduktion-in-der-software-entwicklung/slides-05.png)

Wenn ich an mein Studium zurückdenke hatte ich einen anderen Zugang zur Software Entwicklung. Ich habe neue Technologien mit Freude verwendet. Brigitte kann sich vielleicht noch erinnern. WebSockets, Canvas war damals alles neu und wir haben es in unseren QPTs verwendet.

![](/reduktion-in-der-software-entwicklung/slides-06.png)

In meiner beruflichen Karriere ist es dann auch so weitergegangen. Aber hat es dann immer wieder Technologie bezogene Vorfälle gegeben die nicht besonders lustig waren.

![](/reduktion-in-der-software-entwicklung/slides-07.png)

In einem Projekt haben wir ein Ruby Gem, Active Admin, verwendet um die Benutzeroberfläche für die Administration zu generieren. Das hat uns viel Zeit und dem Auftraggeber Geld gespart.

Bis zu dem Moment wo dieses Gem nicht mehr länger gepflegt wurde und uns das Upgrade von Ruby on Rails selbst blockiert hat.

Wir haben dann aus eigener Tasche mehrere tausend Euro gezahlt um das Gem zu entfernen und die Benutzeroberfläche selbst zu bauen damit wir nicht mehr länger blockiert sind.

![](/reduktion-in-der-software-entwicklung/slides-08.png)

In dem selben Projekt haben wir ein anderes Gem, Ransack, verwendet um Suchmasken zu implementieren mit denen man die Datenbank Tabellen durchsuchen kann.

Hat ebenfalls toll funktioniert bis zu dem Moment wo wir Anforderung bekamen die sich damit nicht umsetzen liesen.

![](/reduktion-in-der-software-entwicklung/slides-09.png)

Dieses Muster ist immer wieder aufgetreten. Durch irgendeinen externen Umstand haben uns die Gems, Node Packages und Co plötzlich behindert und waren keine Hilfe mehr sondern ein Klotz am Bein.

Das Universum hat mir dann einen Wink mit dem Zaunpfahl gegeben. Konkret waren es drei Zaunpfähle innerhalb kurzer Zeit die mich dazu gebracht haben die Dinge mit anderen Augen zu sehen.

Aus Nostalgie habe ich zwei eingestaubte Projekte aus meinem Studium wieder zum Leben erweckt.

![](/reduktion-in-der-software-entwicklung/slides-10.png)

Das erste war ein Projekt das ich ganz am Anfang des Studiums mit Kollegen in der Freizeit gebaut habe. Es war ein Klon vom Risiko Brettspiel das man im Multiplayer im Browser spielen konnte.

Das zweite war eines meiner QPTs, eine virtuelle Murmelbahn.

Beim wieder zum Leben erwecken der beiden Projekte hat es einen gewaltigen Unterschied gegeben. Das erste Projekt, obwohl es älter war, ist nach 10 Minuten Arbeit bei mir lokal gelaufen. Das zweite Projekt hat mich 5 Stunden meines Lebens gekostet.

Was glaubt ihr was den Unterschied ausgemacht hat?

![](/reduktion-in-der-software-entwicklung/slides-11.png)

Das erste Projekt war Vanilla HTML, SVG, CSS, PHP und SQL. Webserver und Datenbank konfigurieren und es ist gelaufen.

Das zweite Projekt war eine Ruby on Rails Anwendung.

Ich musste die Ruby Version installiert bekommen, ich musste die Gems installiert bekommen, ich musste die Assetpipeline installiert bekommen. Das zu schaffen war Schwerstarbeit auf einem modernen System.

![](/reduktion-in-der-software-entwicklung/slides-12.png)

Kurz nach diesen beiden drastisch unterschiedlichen Erfahrungen habe ich den Talk "Simple Made Easy" von Rich Hickey gesehen der mich mit dem Begriff Künstliche Komplexität bekannt gemacht hat.

![](/reduktion-in-der-software-entwicklung/slides-13.png)

Ich hatte plötzlich das Vokabular um zu beschreiben was mir immer wieder passiert ist.

![](/reduktion-in-der-software-entwicklung/slides-14.png)

Es gibt die wesentliche Komplexität einer Sache. Wenn ihr eine Software für eine Steuerkanzlei schreibt, müsst ihr euch mit der Komplexität des österreichischen Steuerrechts befassen.

Und dann gibt es die künstliche Komplexität. Wenn ihr euch mit dem React Redux Store herumschlagt weil er nicht das tut was ihr wollt ist das völlig freiwillig.

![](/reduktion-in-der-software-entwicklung/slides-15.png)

Nach diesem Aufwachmoment ist mir diese Thematik plötzlich an fast jeder Ecke aufgefallen. Erstens wie erschreckend oft Technologie verwendet wird die es gar nicht benötigt. Zweitens das ich nicht der einzige bin dem das auffällt. Und Drittens das diese Sucht nach Bling Bling Tech, Shiny New Toys, Technologie Jagd und Künstlicher Komplexität total kontraproduktiv ist für das was ich erreichen will.

![](/reduktion-in-der-software-entwicklung/slides-16.png)

Ich will robuste und langlebige Web-Anwendungen bauen die Menschen helfen, unterstützen. Mit meinem kompakten Team kann ich mir gar nichts anders erlauben.

![](/reduktion-in-der-software-entwicklung/slides-17.png)

Wie kommen wir aus dieser Situation raus?

Die Antwort ist simpel aber nicht einfach. Wir müssen die Menge an Abhängigkeiten reduzieren die wir nutzen.

Wir dürfen die wesentliche Komplexität einer Sache nicht künstlich aufblasen in dem wir mehr Technik als nötig hineinstopfen.

Das erreich wir in dem wir in allen Bereichen weniger Abhängigkeiten verwenden.

![](/reduktion-in-der-software-entwicklung/slides-18.png)

Damit wir das tun können braucht es ein Verständnis und Beherrschung der Grundlagen. Wenn wir die Grundlagen beherrschen fällt es uns leichter künstliche Komplexität zu identifizieren und Dinge zu implementieren ohne auf zusätzliche Technologien angewiesen zu sein.

Weil ihr dürft eines nicht vergessen: Komplexe Technologien rechtfertigen andere komplexe Technologien. Da kommt man schnell in einen Kreislauf hinein der an keinem guten Ort endet.

![](/reduktion-in-der-software-entwicklung/slides-19.png)

Es gibt unterschiedliche Bereiche die in diesem Kontext für Web-Anwendungen interessant sind. Wir werden uns in den folgenden Minuten Hosting & Architektur, Betriebssystem, Externe Dienste, Datenbank, Webserver, Programmiersprachen, Tooling, Frameworks, Libraries und SQL ansehen.

![](/reduktion-in-der-software-entwicklung/slides-20.png)

Zuerst aber eine simple Fausregel wie man die Menge an Abhängigkeiten in allen Bereichen reduzieren kann. Verwendet alte Technologien. Wenn ihr nur Dinge verwendet die es bereits vor 10 Jahren gab reduziert sich die Liste an potentiellen Technologien drastisch.

Die Idee ist nicht von mir sondern Dan McKinley der unter anderem einer der ersten Software Entwickler bei Etsy war. Es klingt für euch vielleicht unvorstellbar aber alte Technologien haben Vorteile.

Es gibt nicht viele die dem Zahn der Zeit standgehalten haben, die Auswahl ist nicht so überfordernd wie bei "modernen" Technologien. Die meisten Bugs wurden schon vor langer Zeit von Anderen gefunden und die APIs sind stabil.

Die Technologie wird schon viele Jahre von vielen Menschen verwendet. Wenn wir einmal Hilfe brauchen ist die Chance groß das wir Hilfe finden. Deshalb mein allgemeiner Rat, verwendet alte Sachen. Das sind bewährte Fundamente für eure Anwendungen.

![](/reduktion-in-der-software-entwicklung/slides-21.png)

Der erste Bereich den wir uns genauer ansehen ist Hosting & Architektur. Beginnen wir mit dem aktuellen Trend von Single Page Applications. Statt von einer Web-Anwendung zu sprechen gibt es es jetzt Frontend und Backend. Die Benutzeroberfläche wird in JavaScript gebaut. Meistens mit einem Framework das React, Angular, Vue oder Co heißt. Die Daten für das befüllen der Benutzeroberfläche wird von der API des Backends als JSON geladen.

![](/reduktion-in-der-software-entwicklung/slides-22.png)

Diese Architektur ist sehr beliebt und hat viele Vorteile. Ich werde diese jetzt nicht aufzählen, die diversen Frameworks und Prediger machen das bereits zu gut. Was die meisten übersehen ist die gewaltige Menge an künstlicher Komplexität die damit in das Projekt geholt wird.

![](/reduktion-in-der-software-entwicklung/slides-23.png)

Fehlerhandling wenn irgendwas in der Netzwerkkommunikation passiert.

Schlechte Performance auf alten Geräten durch unmengen an JavaScript.

Duplikation vom Datenmodell.

Alle Herausforderungen von verteilten Systemen.

![](/reduktion-in-der-software-entwicklung/slides-24.png)

Diese ganze Komplexität könnt ihr am einfachsten reduzieren in dem ihr keine Single Page Applications baut. Das ist nicht nur simpel sondern auch einfach. Den die Wahrheit ist, die meisten Web-Applikationen funktionieren perfekt wenn die Benutzeroberfläche vom Server geladen wird.

![](/reduktion-in-der-software-entwicklung/slides-25.png)

Ich habe vorher bereits den Punkt "Herausforderungen von verteilten Systemen" erwähnt. Das ist eine Anspielung auf die aktuell beliebte Microservice-Architektur.

Statt eine einzelne Anwendung zu haben gibt es beliebig viele Services die miteinander kommunizieren. Dieser Ansatz hat wie alles seine Daseinsberechtigung ist aber ebenfalls für 80 % aller Anwendungen die falsche Wahl.

![](/reduktion-in-der-software-entwicklung/slides-26.png)

Es braucht wirklich gute Gründe um zu rechtfertigen wieso man Teile seines Quellcodes loslöst und zusätzliche Netzwerkkommunikation dazwischen hinzufügt. Das ist also wieder simple und einfach Weise wie wir Komplexität im Zaum halten können.

![](/reduktion-in-der-software-entwicklung/slides-27.png)

Kommen wir zur Cloud. Dieser Tweet drückt perfekt aus wie ich darüber denke.

![](/reduktion-in-der-software-entwicklung/slides-28.png)

Die Cloud, in diesem Beispiel AWS mit ihren hunderten Services, ist der Inbegriff von Künstlicher Komplexität.

![](/reduktion-in-der-software-entwicklung/slides-29.png)

Versteht mich nicht falsch, ich finde es toll meine Backups in unterschiedlichen S3 Buckets abzulegen.

Aber ich würde niemals meine Web-Anwendung auf diesen Services aufbauen. Für 80 % reicht ein einfacher, einzelner Linux Server aus.

Für ein paar Euro könnt ihr euch bei Hetzner einige TB RAM, mit vielen CPU Kernen mieten. Eine solche Rechenleistung ist mehr als ausreichend für die meisten Fälle. Und das tolle daran, es ist wesentlich billiger als die Cloud.

![](/reduktion-in-der-software-entwicklung/slides-31.png)

Für euren Linux Server braucht ihr ein Betriebssystem. Haltet es so langweilig wie nur möglich. Verwendet einen LTS Release, das bedeutet eine Version die Long Term Support hat.

So bekommt ihr über einen langen Zeitraum Sicherheitsupdates. Ich kann euch Debian oder Ubuntu empfehlen aber am Ende des Tages ist es nur wichtig das eure Kombination an benötigter Software darauf unterstützt wird und ihr Sicherheitsupdates bekommt.

![](/reduktion-in-der-software-entwicklung/slides-32.png)

Vor keinen 5 Minuten habe ich euch davon abgeraten spezifische Cloud-Dienste zu verwenden. Es gibt jedoch gewisse externe Dienste um die ihr in der Regel nicht herumkommt.

![](/reduktion-in-der-software-entwicklung/slides-33.png)

Die zwei großen sind Payments und E-Mail Versand. Diesbezüglich kann ich euch Stripe und Postmark empfehlen.

![](/reduktion-in-der-software-entwicklung/slides-34.png)

Aber unabhängig vom Dienstleister ist folgendes wichtig. Verwendet so wenige davon wie möglich. Ich weiß das ich mittlerweile wie ein kaputter Plattenspieler klinge, dieser Punkt ist einfach so wichtig. Mit je weniger ihr auskommt desto robuster und langlebiger wird eure Anwendung sein.


Integriert externe Dienste an einer außenliegenden Stelle in eurer Anwendung und stellt eine Dummy-Implementierung bereit. Stripe spezifischer Integrationscode soll sich gebündelt an einer Stelle befinden und nicht an vielen Orten verteilt sein.

Das erlaubt es euch eine Dummy-Integration für das Development und Test Environment zu schreiben anstatt auf die echte Stripe API angewiesen zu sein. Ihr wollt eure Anwendung lokal auf eurem Laptop ohne Internetverbindung starten und verwenden können.

![](/reduktion-in-der-software-entwicklung/slides-35.png)

Wir haben jetzt die meisten Themen rund um unsere Anwendung durch und können uns auf die Anwendung selbst konzentrieren. Wie wird unsere Web-Anwendung zugänglich für Menschen? Richtig! Über einen Webserver.

Ich gehe davon aus das dieser Punkt am wenigsten kontrovers ist, deshalb halte ich mich kurz. Verwendet entweder nginx oder Apache. Beides sind alte, erprobte Technologien die eure Anforderungen erfüllen werden.

Entscheidet euch für einen der beiden und investiert die Zeit um die Dokumentation zu lesen. Dieses Investment wird euch über die gesamte Karriere helfen statt irgendwelche Konfigurations-Snippets von StackOverflow zu kopieren. Ihr erinnert euch wie wichtig es ist die Grundlagen zu beherrschen.

![](/reduktion-in-der-software-entwicklung/slides-36.png)

Die Wahl des Datenbanksystems ist eine weitere Grundlagenentscheidung. Bitte verwendet ein relationales System. Dokumentenbasierte Systeme sind nur in wenigen Situationen angebracht. Wenn ihr befürchtet ein Performance Problem zu bekommen gebt Hetzner einfach mehr Geld für einen größeren Server.

Ihr wollt die ganzen Garantien haben die ihr von einem klassichen Relationalen Datenbank System bekommt. ACID Transaktionen, Isolationslevel und SQL sind tolle Sachen. In Nicht-Relationalen System habt ihr meistens nur ein Subset von diesen Werkzeugen und müsst sie mit eurem eigenen Schweiß und Blut im Anwendungsquellcode selbst implementieren.

![](/reduktion-in-der-software-entwicklung/slides-37.png)

Wenn ihr mich fragt welches Datenbank-System ihr verwenden sollt ist meine Standard-Anwort PostgreSQL. Das ist eine alte, wunderbare Technologie die alles kann was ihr braucht. Ich empfehle euch PostgreSQL weil es das nichts zum diskutieren gibt.

![](/reduktion-in-der-software-entwicklung/slides-38.png)

In Wahrheit brauchen 80 % eurer Web-Anwendungen nichts weiter als SQLite. Ja, ihr habt mich richtig gehört, SQLite. Es gibt unzählige Beispiele die SQLite verwenden die wesentlich mehr Writes / Reads haben als das was wir bauen.

SQLite reduziert die Komplexität unserer Softwaresammlung weiter. Wir sparen uns ein komplettes Datenbanksystem das betrieben und gewartet werden muss. SQLite zu verwenden bringt natürlich auch Einschränkungen und ich selbst bin auch noch nicht 100 % überzeugt.

![](/reduktion-in-der-software-entwicklung/slides-39.png)

Obwohl ich weiß das diese Wahl meine Arbeit vereinfachen würde streubt sich etwas in mir. Ich sehe das als Paradebeispiel wie der Bling Bling Tech Süchtige in mir sich gegen die langweilige Technologie sträubt.

![](/reduktion-in-der-software-entwicklung/slides-40.png)

Der nächste Punkt auf unserer Liste sind die Programmiersprachen die wir verwenden. In den Web-Applikationen an denen ich arbeite kommen Ruby, PHP und Go im Backend zum Einsatz. Sowie JavaScript, TypeScript und CoffeeScript im Frontend.

![](/reduktion-in-der-software-entwicklung/slides-41.png)

Ruby ist eine wunderbare Sprache hat aber einen gewaltigen Nachteil. Ich muss in meiner Entwicklungsumgebung und auf dem Server die Ruby Version installieren die ich verwenden will.

Das ist bei aktuellen Ruby Versionen schon mit einem gewissen Aufwand verbunden. Für ältere Versionen artet dieser Aufwand schnell aus.

![](/reduktion-in-der-software-entwicklung/slides-42.png)

Im krassen Vergleich dazu stehen die Go Anwendungen die ich betreibe. Auf dem Server muss ich nämlich gar nichts installieren. Der Go Compiler erstellt ein ausführbares Program das ich auf den Server kopiere und starte.

![](/reduktion-in-der-software-entwicklung/slides-43.png)

PHP erfordert wie Ruby das lokal sowie auf dem Server die korrekte Version installiert ist. Der Umgang ist aber nicht vergleichbar. PHP ist wesentlich besser in das Ökosystem integriert und ich hatte beim installieren von Composer Packages noch nie vergleichbare Schwierigkeiten wie bei Ruby Gems.

![](/reduktion-in-der-software-entwicklung/slides-44.png)

Was ich sehr zu schätzen gelernt habe sind typisierte Sprachen. Bei einer Anwendung die in Go oder Rust programmiert ist schützt mich der Kompiler vor ganzen Kategorien von Fehlern.

In einer typisierten Sprache schreibe ich deshalb weniger Tests. Ich muss nicht selbst überprüfen das eine Funktion das korrekte tut wenn ich einen String statt einem Integer übergebe. Der Computer nimmt mir diese Arbeit ab.

Aus diesem Grund finde ich TypeScript für das Frontend sehr interessant. Da bin ich aber hin- und hergerissen da es wieder zusätzliches Tooling braucht. Dazu kommen wir aber gleich.

![](/reduktion-in-der-software-entwicklung/slides-45.png)

Für Backend Entwicklung empfehle ich entweder PHP oder Go. Es sind beide langweilige Sprachen die gut verstanden sind und eine große Community haben. Ich würde an dieser Stelle gerne Rust inkludieren weil es im Vergleich zu Go noch mehr Garantien bietet.

Aber ich habe zum einen selbst noch keine Rust Web-Anwendung im Echtbetrieb und zweitens bin ich mir nicht sicher ob die Sprache selbst für Web-Anwendungen geeignet ist. Meine Rust CLI für 10 Fingersystem Training war aber eine Freude zu entwickeln.

![](/reduktion-in-der-software-entwicklung/slides-46.png)

Ob im Frontend JavaScript oder TypeScript die bessere Wahl ist kommt zurück auf das Tooling. Als Sprache alleine ist TypeScript wesentlich besser, wie ich schon erwähnt habe verhindert Typisierung ganze Kategorien an Bugs.

Es hat aber im Vergleich mit JavaScript einen riesigen Nachteil. Ich brauche NodeJS und das NPM TypeScript Package um damit arbeiten zu können. JavaScript funktioniert einfach im Browser, da gibt es genau Null extra Arbeit.

![](/reduktion-in-der-software-entwicklung/slides-47.png)

Dieses Tooling das ich für TypeScript brauche ist während der aktiven Entwicklung an einem Projekt nicht das Problem. Es wird aber in meiner Erfahrung zu einem Problem wenn ich in 5 Jahren die Jahrszahl im Footer austauschen will und dafür 2 Stunden verschwende weil sich das Tooling nicht mehr installieren lässt.

Das ist der Grund wieso eines meiner Nostalgie Projekte von denen ich erzählt habe schnell aufzusetzen war und das andere nicht. Wegen diesem Tooling Problem bin ich bei TypeScript oder SASS hin und hergerissen. Es sind beides Verbesserungen gegenüber JavaScript oder CSS. Aber zu welchem Langzeit-Preis?

![](/reduktion-in-der-software-entwicklung/slides-48.png)

Bevor wir über Frameworks und Bibliotheken sprechen müssen wir drei Dinge klarstellen.

![](/reduktion-in-der-software-entwicklung/slides-49.png)


Jede Zeile Quellcode von verwendeten Frameworks, Bibliotheken, Packages und Gems ist am Ende des Tages eure Verantwortung. Auch wenn ihr die Zeilen nicht selbst geschrieben habt, ihr müsst davon ausgehen das der Tag kommen wird wo ihr sie verstehen und ändern müsst.

Früher war das noch offensichtlicher weil man jQuery in einem Vendor Ordner mit in die Versionskontrolle gegeben hat. Da hat man deutlich am Git Diff gesehen was man sich da ins Haus holt. Mit den modernen Praktiken wo jeder lokal die Packages und Gems installiert ist das nicht mehr so. Im Git Diff scheint nur noch eine unschuldige Zeile anstatt 30.000 auf.

![](/reduktion-in-der-software-entwicklung/slides-50.png)

Zweitens, Quellcode ist eine Belastung. Der beste Quellcode ist der, der nicht existiert. Weil den muss man nicht verstehen, der kann keine Bugs haben. Je weniger Quellcode desto besser.

![](/reduktion-in-der-software-entwicklung/slides-51.png)

Drittens, was ist ein Framework, was ist eine Bibliothek? Eine Bibliothek bietet Funktionen, Klassen und Methoden an die von unserem Quellcode verwendet werden. Unser Quellcode hat die Kontrolle und entscheidet was passiert. Ein Framework dagegen ruft unseren Quellcode auf. Beim studieren unserer Anwendung sehen wir nicht was passiert, wir müssen wissen was passiert.

![](/reduktion-in-der-software-entwicklung/slides-52.png)

Wenn wir uns über diese drei Dinge einig sind können wir uns ansehen welche Probleme Frameworks mit sich bringen. Frameworks haben auf jeden Fall ihre Daseinsberechtigung, sonst würde es nicht so viele davon geben.

Aus der Perspektive von Robustheit und Langlebigkeit sind sie jedoch eine Katastrophe. Frameworks zwingen einen Probleme auf eine bestimmte Art und Weise zu lösen. Es gibt Situationen wo dieser Weg nicht der beste ist. Das ist ärgerlich aber nicht weiter schlimm.

Dann gibt es jedoch Situationen wo es gar keinen Weg gibt. In einem solchen Moment muss man um das Framework herumarbeiten, einen Workaround suchen. Dieser Workaround wird in zukünftigen Versionen des Frameworks vielleicht nicht mehr funktionieren.

Aber selbst ohne Workarounds werdet ihr bei zukünftigen Updates Arbeit haben. Wenn die Framework Autoren entscheiden das etwas nicht mehr unterstützt wird oder in Zukunft anders gemacht wird habt ihr die Arbeit nur weil jemand anders etwas ändert.

Ihr verzichtet einfach darauf das Framework aktuell zu halten? Viel Spaß wenn es eine Sicherheitslücke gibt die nur in neueren Versionen behoben wird. Durch das Framework kann die Sicherheitslücke meist sogar ganz automatisch von Bots ausgenutzt werden. Ihr werde nicht darum herum kommen eure eingesetzten Frameworks aktuell zu halten. Und das kann eine Menge Arbeit bedeuten.

![](/reduktion-in-der-software-entwicklung/slides-53.png)

Frameworks führen dazu das man isoliertes Wissen aufbaut. Wenn ihr etwas in React lernt könnt ihr wenig bis gar nichts in Angular, Svelte oder Vue wiederverwenden.

Im Gegesatz dazu sind HTML, SQL, PHP, JavaScript auch noch in 10 Jahren relevant wann die nächste Welle an Frameworks angerollt kommt. Investiert in die Grundlagen und lernt Konzepte statt blind Framework-Rezepte zu befolgen.

![](/reduktion-in-der-software-entwicklung/slides-54.png)

Wenn jemand mit dem Argument kontert das Frameworks uns vor Sicherheitslücken schützen und es uns erlauben weniger Fehler zu machen weil es von Profis gebaut ist, kann ich nur erwidern dass das nicht meine Erfahrung ist.

Frameworks sind zum Teil so komplex das es einem leicht passiert sie in subtilen Weisen falsch zu verwenden. Das sehe ich immer wieder in meiner täglichen Arbeit mit Teams die auf diesen großen Frameworks aufbauen. Und zweitens sind die Menschen hinter Frameworks nicht klüger als ihr.

Für Ruby on Rails gibt es hunderte Anleitungen wie man zum Beispiel den E-Mail Versand in den Hintergrund verlagert. Das ist eine sinnvolle Sache. Leider verwenden die meisten ein Ruby Gem namens Sidekiq das die Daten in Redis statt der primären Datenbank speichert.

Damit wird automatisch auf alle Garantien von Transaktionen verzichtet. Wieso sollten wir das wollen? Die Communities um Frameworks werden schnell zu Echo-Kammern wo man sich beglückwünscht weil man weitere künstliche Komplexität geschaffen hat.

Seit vorsichtig und hinterfragt Dinge. Verwendet lieber Bibliotheken statt Frameworks. Wenn ihr Frameworks verwendet minimiert die Menge an Features die ihr nutzt. Das vereinfacht Sicherheitsupdates und reduziert das Risiko das die Verwendung des Frameworks in eine Sackgasse führt.

![](/reduktion-in-der-software-entwicklung/slides-56.png)

Zu guter Letzt will ich euch ans Herz legen SQL zu lernen statt ORMs zu verwenden. ORMs kommen meist mit dem Framework eurer Wahl. Sie erlauben es Tabellenzeilen in der Datenbank als Objekte / Klassen in der Programmiersprache der Anwendung zu modellieren.

![](/reduktion-in-der-software-entwicklung/slides-57.png)
![](/reduktion-in-der-software-entwicklung/slides-58.png)

Statt das zu schreiben können wir das schreiben. Das ist sehr verlockend, das verstehe ich.

Meistens kommen diese ORMs auch noch mit einem eigenen Syntax für Migrationsskripte die das Datenbankschema erstellen.

Jemand kann mit Datenbanken arbeiten ohne jemals SQL gelernt zu haben.

![](/reduktion-in-der-software-entwicklung/slides-59.png)

Das ist ein riesen Fehler!

Lernt es zu meistern! Schreibt eure Migrationen in SQL. Dieses Wissen könnt ihr in jedem Projekt verwenden. ActiveRecord, Sequel, ROM, Doctrine und so weiter haben alle einen Unterschiedlichen Syntax für das definieren von Datenbankschemas.

SQL müsst ihr einmal lernen und könnt es überall anwenden.

![](/reduktion-in-der-software-entwicklung/slides-60.png)

NOT NULL sollte die Regel, nicht die Ausnahme sein.

![](/reduktion-in-der-software-entwicklung/slides-61.png)

Verwendet CHECK um genau zu definieren wie ihr erwartet das eure Daten aussehen.

![](/reduktion-in-der-software-entwicklung/slides-62.png)

Eure Datenbank kann garantieren das zusammenhängende Daten immer vollständig vorhanden sind. Setzt Foreign Keys!

Kurz gesagt helft der Datenbank euch zu helfen. Die Daten eurer Anwendungen sind das wichtigste Gut. Die Datenbank kann euch vor vielen Fehlern schützen.

![](/reduktion-in-der-software-entwicklung/slides-63.png)

Schreibt eure Queries in SQL statt dem ORM. Erstens werdet ihr an irgendeinem Punkt sowieso SQL schreiben müssen oder mit dem ORM Code mischen.

Der ORM Querysyntax ist bis jetzt in fast jedem Projekt an seine Grenzen gestoßen bzw. war zu ineffektiv beim laden der Daten.

Ihr könnt mit den JSON Features von PostgreSQL und SQLite zum Beispiel in einer einzelnen Query komplette Graphen an Daten laden die mit einem ORM nur in mehreren Aufrufen möglich wäre.

![](/reduktion-in-der-software-entwicklung/slides-64.png)

Verwendet Prepared Statements. Wenn ihr das tut hat sich das Thema mit SQL Injektionen erledigt. Das Datenbank Management System bekommt die Query übermittelt und stellt sicher das diese syntaktisch korrekt ist.

Die Platzhalter werden dann später übermittelt und eingesetzt. Dadurch kann es technisch gar nicht mehr passieren das Benutzereingaben die Query semantisch verändern.

![](/reduktion-in-der-software-entwicklung/slides-65.png)

Lernt über die verschiedenen Isolationslevel von Transaktionen. Dann verwendet Transaktionen und macht sie SERIALIZABLE. In 80 % der Fälle ist das was ihr wollt.

![](/reduktion-in-der-software-entwicklung/slides-66.png)

Wie ich schon sagt, eure Datenbank kann euch vor vielen Fehler beschützen. Wenn ihr euch eines heute mitnehmt ist es folgendes. Lernt SQL und schreibt SQL. Eure Anwendungen bestehen aus wesentlich weniger Queries als ihr denkt. Ihr werdet früher oder später an die Grenzen des ORMs stoßen. Und ein ORM hat tausende Zeilen Quellcode. Dafür kann man viele SQL Queries schreiben.

![](/reduktion-in-der-software-entwicklung/slides-67.png)

Das war jetzt eine wilde Reise durch die verschiedenen Bereiche einer Web-Anwendung. Die Beispiele und Denkanstöße sollten euch zeigen wie man mit weniger mehr erreichen kann. Unser Hirnschmalz sollte nicht dafür verwendet werden neue Frameworks zu lernen sondern Probleme für unsere User zu lösen.
![](/reduktion-in-der-software-entwicklung/slides-68.png)

Das ist zumindest mein Anspruch an meine Arbeit. Die messe ich daran wie funktionelle sie ist und nicht welche neuen Technologien sie verwendet. Ich bin davon überzeugt dass das reduzieren von künstlicher Komplexität macht uns alle glücklicher.

Unsere Anwendungen werden schneller. Sie werden langlebiger. Die Betriebskosten fallen geringer aus und der Betrieb an sich ist einfach. Je langweiliger unserer Techstack ist, desto mehr Freude und Freizeit werden wir langfristiger haben.

![](/reduktion-in-der-software-entwicklung/slides-69.png)

