# Einleitung

In diesem Teil der Dokumentationen sind Funktionen der Foodsoft beschrieben, die zur Einrichtung und Administration erforderlich sind. Diese Funktionen sind nur für Foodsoft Benutzerinnen mit entsprechenden Zugriffsrechten verfügbar (siehe [Benutzerinnenverwaltung](Benutzerverwaltung)).

Die Funktionen der Foodsoft werden ständig erweitert, machmal kann es sein, dass eine neue Funktion noch nicht hier dokumentiert ist. Bitte trag selbst etwas bei, indem du eine Beschreibung, oder zumindest an der passenden Stelle eine Überschrift hinzufügst.

# Funktionsüberblick - was die Foodsoft alles kann

## Typische Foodcoop-Abläufe und die jeweilige Unterstützung durch die Foodsoft

So könnte ein typischer Wochenablauf in einer Foodcoop mit einem wöchentlichen Bestellrhythmus aussehen:

1.  Samstag:
FC-Mitglied legt in der **Foodsoft Bestellungen** an, offen von Samstag bis Mittwoch, schickt **über die Foodosft eine Nachricht an alle** zur Info aus.
2.  Samstag bis Mittwoch: 
FC-Mitglieder bestellen oder verändern ihre **Bestellungen über die Foodsoft**; dazu müssen sie vorher ihr Guthaben aufgeladen haben, und können nur so lange bestellen, bis das Guthaben erschöpft ist. Das Guthaben bleibt zunächst noch unangetastet und wird nur "reserviert" - in der Foodsoft wird das "verfügbares Guthaben" angezeigt
3.  Mittwoch: 
Der Status der Bestellungen wird eingefroren, FC-Mitglieder können ihre Bestellungen nun nicht mehr ändern, **Listen der Bestellungen** (enthalten nur jeweils gesamte Artikelzahl der Foodcoop) werden **von der Foodsoft an die Lieferantinnen** geschickt
4.  Donnerstag:
FC-Mitglied erstellt in der **Foodsoft mit der Funktion Abholtage Bestelllisten **und druckt sie aus, eine nach Bestellgruppen sortiert, eine nach Artikel sortiert und legt diese Bestelllisten in der Lagerraum 
5.  Donnerstag bis Freitag:
Lieferantinnen liefern bestellte Artikel in den Lagerraum; FC-Mitglied nimmt über **Foodsoft** Bestellungen an und vermerkt **Abweichungen zwischen Bestellung und Lieferungen**
6.  Freitag = **Abholtag**: 
Mitglieder holen ihre bestellten Artikel im Lagerraum ab, die ausgedruckten Bestellliste helfen ihnen dabei,sich ihre Artikel zusammenzusuchen. Im Lagerraum liegen Papierlisten auf, wo die Mitglieder das von ihnen zurückgebrachte Pfand für Leergebinde eintragen, Abweichungen von ihrer Bestellung und dem, was sie bekommen haben, sowie das tatsächliche Gewicht bzw. der tatsächlich Preis bei Artikeln mit variierendem Gewicht. In Zukunft wird es anstelle der Papierlisten eine Foodsoft App geben, über die diese Informationen direkt in die Foodsoft eingegeben werden können.

Parallel dazu laufen noch folgende Vorgänge ab:

1. **Mitglieder laden ihr Foodsoft-Guthaben auf**, indem sie per Banküberweisung unter Verwendung eines in der Foodsoft generierten Zahlungsreferenzcodes Geld an das Bankkonto der Foodsoft überweisen;
    
2. Ein FC-Mitglied mit Ebanking Zugriff auf das Bankkonto importiert regelmäßig z.B. einmal täglich an Wochentagen in der früh, und/oder wenn sie über die Ebanking-App Mitteilungen über neue Kontoeingänge gekommt, die **Buchungsdaten des Bankkontos in die Foodsoft**. Überweisungen der Mitglieder für Guthaben werden dabei über die Zahlunsgreferenzcodes automatisch ihrem Foodsoft-Guthaben gutgeschrieben. 
3. Ein FC-Mitglied überträgt die Papierlisten des Lagerraums in die Foodsoft, indem das Pfand dem Mitglieder Guthaben gutgeschrieben wird, Bestellungen an die tatsächlich erhaltene Mengen angepasst und Differenzbeträge bei Artikeln mit variablen Kosten dem Mitglieder-Guthaben gutgeschrieben oder abgezogen werden.
4. LieferantInnen schicken Rechnungen an die Foodcoop mit ihren Lieferungen, per Post oder per Email; FC-Mitglieder übertragen diese **Rechnungen in die Foodsoft** und kontrollieren, inwieweit das bei den Bestellungen von den Mitglieder-Guthaben abgezogene Geldbträge mit denen der Rechnungen übereinstimmen, und geben sie in der Foodsoft zur Bezahlung frei (sofern auch Punkt 2 schon erledigt ist)
5. Ein FC-Mitglied mit Zugang zum E-Banking des FC-Bankkontos **zahlt freigegebene Rechnungen ein,** indem sie in der Foodsoft Rechnungen aus der Liste der unbezalten Rechnungen auswählt, und in der E-Banking-App die Transaktionen freigibt.
6. Ein FC-Mitglied **rechnet in der Foodsoft abgeschlossene Bestellungen ab**, für die bereits eine Rechnung eingegeben und bezahlt wurde. Damit wird das bis dahin für Bestellungen nur reservierte Guthaben den Mitgliedern endgültig abgezogen, es scheint auf ihrem **Kontoauszug in der Foodsoft** auf.
7. Ein FC-Mitglied bucht monatlich über die **Foodsoft** die **Mitgliedsbeiträge** der Mitglieder von ihrem Guthaben ab.
8. Mitglieder können sich über **Nachrichten in der Foodsoft** austauschen, die sie per Email zugeschickt bekommen, Entscheidungen können über **Umfragen** getroffen werden, anfallende **Aufgaben** werden über die Foodsoft ausgeschrieben und FC-Mitglieder tragen sich dafür ein. 

## Anwendungsvarianten der Foodsoft

Es gibt viele Anwendungsvarianten der Foodsoft, je nachdem, welche der
Funktionen der Foodsoft genutzt bzw. nicht genutzt werden. Damit die
Foodsoft in jedem Fall korrekt eingerichtet und verwendet werden kann,
haben wir im Folgenden versucht, typische Anwendungsfälle aufzulisten. 

|                     |   |   |   |   |
| ------------------- | - | - | - | - |
| Funktion / Variante | 1 | 2 | 3 | 4 |
| Bestellen           | x | x | x | x |
| Guthaben            |   | x | x | x |
| Rechnungen          |   |   | x | x |
| Bankanbindung       |   |   |   | x |

### Variante 1: nur Bestellen

Auch wenn ihr die Foodsoft nur zum Bestellen verwendet, solltet ihr unbedingt eure Bestellungen auch abrechnen (siehe [Bestellung abrechnen](#anchor-64)). Damit sagt ihr der Foodsoft, dass die Bestellung nur mehr historisch relevant ist. Andernfalls taucht sie sowohl bei den Abholtagen, als auch in der Bestellverwaltung auf. Irgendwann werden die Seiten dann aber so lang, dass sie Ewigkeiten zum Laden benötigen.

Sofern ihr die Foodsoft nicht für eure Finanzen verwendet, solltet ihr 

- *Mitglieder manuell abrechnen* unter Administration-\>Einstellungen-\>Finanzen aktivieren. Dadurch gibt es auf den Konten keine Buchungen, wenn ihr die Bestellungen abrechnet.
- Wenn ihr *Minimaler Kontostand* zusätzlich noch auf z.B. *-1000* setzt, dann könnt ihr euch das mit dem „Startgeld“ ersparen. 

### Variante 2: Bestellungen und Guthaben, keine Rechungen

Bei der Abrechnung von Bestellungen wird den Mitgliedern das entsprechende Guthaben von ihren Foodsoft-Konten abgebucht. Dafür ist es nötig, auch eine Rechnung anzulegen. Gedacht ist es so, dass dabei eine digitale Kopie der Rechnung der Lieferantin in der Foodsoft erstellt wird. Das mag nach ein wenig Mehraufwand klingen, ermöglicht aber eine bessere Übersicht und Arbeitsteilung in der Foodcoop. Falls ihr dennoch keine „echten“ Rechnungen anlegen wollt, müsst ihr zumindest eine Pseudo-Rechnung erstellen, um Bestellungen abrechnen zu können. Diese
sollten:

- Der Bestellung zugeordnet sein
- Rechnungsbetrag = Bestellbetrag
- Als bezahlt markiert werden, indem im Feld ein Datum eingetragen wird

### Variante 3: keine Bankanbindung

- Guthaben aus Ebanking manuell in Foodsoft übertragen
- Rechnungen händisch als bezahlt markieren

### Variante 4: Vollnutzung

Wie beschrieben unter [Funktionsüberblick](#anchor-61).

## Optionale Funktionen

Folgende Funktionen können optional teilweise auch deaktiviert werden,
wenn sie nicht benötigt werden, sodass sie gar nicht aufscheinen:

- Nachrichten
- Aufgaben und Apfelpunkte-System 
- Umfragen
- WIKI
- Dokumenteverwaltung

# Menüs für Administration

Mit Administrationsrechten ist das Foodsoft Menü gegenüber den Standard-Rechten (siehe [Benutzerinnenverwaltung](Benutzerverwaltung)) erweitert:

![menues-admin.gif](/menues-admin.gif)


| Menü                | Untermenü | [Berechtigung(en)](Benutzerverwaltung) |
| ------------------- | --------- | --------------- | 
| Bestellungen | [Bestellverwaltung](Bestellungen) | Bestellungen | 
| Artikel | Lieferantinnen |  | 
| Artikel | Lager |  | 
| Artikel | Kategorien |  | 
| Finanzen | Übersicht | Finanzen | 
| Finanzen | [Bankkonten](Finanzen/Bankkonto) | Finanzen | 
| Finanzen | [Konten verwalten](Finanzen/Konten)| Finanzen | 
| Finanzen | [Bestellungen abrechnen](Bestellungen) | Finanzen | 
| Finanzen | [Rechnungen](Finanzen/Rechnungen) | Finanzen | 
| Adminstration | [Benutzerinnen, Bestellgruppen, Arbeitsgruppen, Nachrichtengruppen](Benutzerverwaltung) | Admin | 
| Adminstration | [Einstellungen](Einstellungen) | Admin | 

# Foodsoft einrichten

Die IG Foodcoops betreibt einen Server, auf dem die Foodsoft installiert ist, und Foodcoops ihre eigene Foodsoft Instanz aktiviert bekommen können. Ihr müsst euch also nicht selbst um einen Server und die Installation der Foodsoft kümmern, obwohl das natürlich auch möglich ist. Wenn ihr dabei seid, eine Foodcoop neu zu gründen, könnt ihr in der Demo-Instanz die Foodsoft zunächst mal ausprobieren. Wenn ihr sicher seid, dass ihr sie verwenden wollt, sind folgende Schritte nötig bzw. empfohlen:


## Notwendige Schritte

1. IG Foodcoop kontaktieren für die [Erzeugung einer eigenen Foodsoft-Instanz für eure Foodcoop am Server der IG](Neue_Foodsoft_Instanz) 
1. [Allgemeine Einstellungen](Einstellungen) 
1. [Benutzerinnenverwaltung](Benutzerverwaltung) BenutzerInnen und Bestellgruppen anlegen, Arbeitsgruppen und Berechtigungen setzen
1. [Lieferantinnen, Artikel und Kategorien anlegen](Lieferantinnen)

## Optionale Schritte

- [Dokumente, Infos und Anleitungen für Foodcoop Mitglieder anlegen](/de/Foodsoft/Anwendung/Dokumente)
- [Bankkonto mit Foodsoft verbinden](Bankkonto)
- ...


# Foodsoft verwenden

- [Bestellungen](Bestellungen)
- [Lager](Lager)
- [Mitglieder-Konten für Guthaben](Finanzen/Konten)
- [Rechnungen](Finanzen/Rechnungen)
{.links-list}

## Allgemeine Tipps

- [Demoinstallation der Foodsoft](https://foodcoops.net/demo/) Hier kannst du die Foodsoft testen und etwas ausprobieren, ohne etwas in deiner eigenen Foodsoft kaputt zu machen 
{.links-list}
- [Begriffsklärungen](Begriffsklärungen) Manche Begriffe in der Foodsoft haben spezielle oder auch mehrfache Bedeutungen
- [Brutto, Netto und Mehrwertsteuer](Finanzen/Mehrwertsteuer) Wie wir als Foodcoop mit Mehrwertsteuer umgehen sollen, und wie Mehrwertsteuer in der Foodsoft berücksichtigt werden kann
- [Foodsoft-Listen](Listen) Allgemeines zum Umgang mit Listen-Darstellungen in der Foodsoft (Artikel, Bestellungen, Rechnungen, ...), die schnell mal etwas unübersichtlich werden können



