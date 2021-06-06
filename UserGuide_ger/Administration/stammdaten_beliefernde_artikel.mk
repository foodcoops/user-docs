In der Foodsoft werden ProduzentInnen und LieferantInnen generell als „Lieferantin“ oder „Lieferanten“ bezeichnet, und Produkte als "Artikel".

# Lieferanten

"Lieferanten" können Produzierende, aber auch z.B. Handelnde oder Großhandelnde sein. 


## Anlegen

- Artikel \> Lieferanten/Artikel \> Neue Lieferantin anlegen, oder
- Artikel \> Lieferanten/Artikel \> Neue Lieferantin anlegen

Weitere Infos siehe "Bearbeiten".

> Da eine Lieferantin nur mit Schwierigkeiten wieder gelöscht werden kann (siehe unten), bitte nur Lieferantinnen anlegen, wenn das auch wirklich benötigt wird. Zum Herumprobieren am Besten die Foodsoft Demoversion verwenden.
{.is-warning}


## Bearbeiten

- Artikel \> Lieferanten/Artikel \> Name anklicken

### Kontaktdaten

…

### Kategorie (supplier category)

- Konsum: Lieferantinnen, deren Rechnungen von den Bestellguthaben der Mitglieder bezahlt werden, also z.B. Gemüsebäurin, Käserei, ...
- Betriebskosten: Lieferantin, deren Rechnungen vom Verein bzw. den Mitgliedsbeiträgen bezahlt werden, wie z.B. Lagerraummiete, Strom, …
- Sonstiges: Anschaffungen des Vereins wie Putzmittel, Ausstattung Lagerraum, …

Die Auswahl der Kategorie wirkt sich nur in der buchhalterischen Darstellung der Bilanz aus (Finanzen \> Übersicht \> Bericht erstellen).

### IBAN

Die Eingabe der IBAN des Bankkontos der Produzentin ist dann erforderlich, wenn das Foodcoop Bankkonto mit der Foodsoft verknüpft wird, und Rechnungen automatisch als bezahlt markiert werden sollen (siehe unten).

- Einmaliges Aktivieren des Feldes IBAN unter Administration \> Einstellungen \> Finanzen \> IBAN verwenden
- Lieferantin: Eingabe des IBAN ohne Leerzeichen erforderlich
- Eine Prüfung der IBAN erfolgt nicht, das heißt es ist möglich, eine ungültige IBAN einzugeben. Empfehlung daher: IBAN prüfen z.B. über [*https://www.iban-bic-rechner.at/iban-validator.php*](https://www.iban-bic-rechner.at/iban-validator.php) (copy-paste)


### Mindestbestellmenge

Dieses Feld kann auf zwei Arten benutzt werden:
- als Text, der beim Bestellen angezeigt wird
- als Zahl für einen Geldbetrag, der einen Mindestbestellwert darstellt.  Bei Bestellung wird dann dieser Wert und der aktuelle Bestellwert von allen Bestellgruppen angezeigt. Bei Anlegen der Bestellung kann die Option “... nur wenn Mindestbestellwert erreicht ist” ausgewählt werden.

> Eine automatische Mindest-Stückzahl nicht möglich, daher in Geldwert umrechnen bzw. mit Lieferantin stattdessen Euro-Wert vereinbaren. 
{.is-info}



## Lieferantin löschen

> Die Funktion „Löschen“ sollte mit besonderer Vorsicht verwendet werden! Besser Lieferantinnen umbenennen, statt neue zu erstellen und alte zu löschen.
{.is-warning}

Da mit einer Lieferantin Bestellungen und Rechnungen verknüpft sein können, wird eine Lieferantin nicht wirklich gelöscht. Sie bleibt in der Datenbank erhalten und verschwindet lediglich aus den Lieferanten Listen, mit Ausnahme der Liste unter Finanzen \> Rechnung erstellen, wo die Lieferantin mit einem † markiert sichtbar bleibt. Die Lieferantin kann nicht mehr bearbeitet werden, es ist auch nicht möglich, eine neue Lieferantin mit dem selben Namen oder der selben IBAN zu erstellen. 

> Ihr könnt Lieferantinnen, bei denen ihr momentan nicht (mehr) bestellt, z.B. mit "ZZ" am Anfang umbenennen, sodass sie in den Auswahllisten ganz am Ende stehen und es klar ist, dass sie ruhend gestellt sind. So stören sie in der Liste nicht so, und bleiben trotzdem bearbeitbar/reaktivierbar.
{.is-info}

> [*https://github.com/foodcoops/foodsoft/issues/832*](https://github.com/foodcoops/foodsoft/issues/832)
{.is-danger}



# Artikel

## Artikel anlegen

1. Lieferantin auswählen unter "Artikel > Lieferanten/Artikel"
1. auf Name der Lieferantin und dann auf Artikel oder 
1. in der entsprechenden Zeile direkt auf "Artikel" 
1. "Neuer Artikel" anklicken
1. Weitere Infos siehe "Artikel bearbeiten"

![neuer-artikel-1.png](/neuer-artikel-1.png)

Mit dem Scrollbalken rechts nach unten scrollen, um die unteren Eingabefelder sichtbar zu machen:
![neuer-artikel-2.png](/neuer-artikel-2.png)

> Wenn du ins Dunkle außerhalb des Eingabefeldes klickst, bewirkt es das gleiche wie wenn du auf "Schließen" drückst, und alle Änderungen sind verloren.
{.is-warning}

> Falls dein Display bzw. dein Browserfenster nicht recht hoch ist, kann es sein dass du die Schaltflächen "Schließen" und "Artikel erstellen" nicht sehen kannst. Abhilfe: das Browser Fenster so groß wie möglich machen (Doppelklick auf Titelleiste), falls das nicht reicht, Browser auf Vollbildansicht stellen mit F11. 
{.is-info}



## Artikel bearbeiten

1. Lieferantin auswählen unter "Artikel > Lieferanten/Artikel"
1. auf Name der Lieferantin und dann auf Artikel oder 
1. in der entsprechenden Zeile direkt auf "Artikel" 
1. In der Zeile des Artikels "Bearbeiten" anklicken

### Artikel ist verfügbar?

Falls Artikel nicht verfügbar ist, z.B. weil außerhalb der Saison, Häckchen entfernen. Artikel erscheint dann grau in der Artikelliste und wird in Bestellungen nicht aufgenommen.

### Name

Der Name des Artikels muss aus 4 bis 60 Zeichen bestehen.

> Es dürfen bei einer Lieferantin **nicht zwei Artikel mit dem selben Namen** vorkommen. Wenn es z.B. den selben Artikel in unterschiedlichen Größen gibt, muss der Name indivuell verschieden sein, beispielsweise „Roggen klein“ für 1 kg, Roggen groß“ für 5 kg
{.is-warning}


### Einheit und Gebinde

Die Bezeichnung der Einheit muss aus  1..15 Zeichen bestehen.


### Notiz

Wird in der Bestellansicht ... angezeigt (Screenshot)

### Kategorie

Hier kannst du eine der angelegten Artikel-Kategorien (siehe eigener Abschnitt unten) auswählen. Falls keine geeignete Kategore verfügbar ist, wähle irgendeine aus, speichere den Artikel, erstelle die Kategorie, bearbeite den Artikel und wähle die neu erstellte Kategorie aus.

### Nettopreis und Mehrwertsteuer

Grundsätzlich gibt es zwei Möglichkeiten, Preise einzugeben:
1. als Bruttopreis: Nettopreis = Preis inkl. Mehrwertsteuer in Kombination mit 0 % Mehrwertsteuer 
2. als Nettopreis: Nettopreis = Preis exkl. Mehrwertsteuer in Kombination mit Mehrwertsteuersatz > 0 

Welche der beiden Varianten du auswählst, bleibt dir überlassen. Am einfachsten ist es, wenn du ich an der Preisliste der Lieferantin orientierst: 
- sind dort Nettopreise angegeben, übernimmst du diese und gibst den Mehrwersteuer Prozentsatz ein; die Foodsoft berechnet automatisch den Bruttopreis und zeigt das Ergebnis auch gleich unter "Endpreis" an. 
- sind dort Bruttopreise angegeben, übernimmst du diese und gibst für  Mehrwersteuer 0 ein. Der "Endpreis" ist gleich der Nettopreis. 

> Siehe auch grundlegende Infos zur [Mehrwertsteuer](Finanzen/Mehrwertsteuer).
{.is-info}


### Pfand

Pfand wird im Bestellpreis inkludiert, und ist für Bestellerinnen nicht separat einsehbar. Daher ist es empfehlenswert, es bei der Artikelbezeichnung dazuzuschreiben, z.B.: **Joghurt im Glas (inkl. 50 ct Pfand)**

Bei den Bestelllisten, die von der Foodsoft erstellt werden, um sie an die ProduzentInnen zu senden, ist das Pfand in den angegebenen Preisen nicht inkludiert. Manche ProduzentInnen stellen keine eigenen Rechnungen, sondern verwenden diese Bestelllisten als Rechnung. Wenn die
ProduzentInnen das Pfand gegenrechnen, muss das Pfand in den Bestelllisten inkludiert werden, indem Nettopreis auf …

### Endpreis

Der Endpreis wird beim Bestellen in der Foodsoft angezeigt und beim
Abrechnen der Bestellungen den Foodsoft-Konten abgebucht.

**Gesamtpreis = (Nettowert + Pfand) \* (100% + Mwst)** 

Wenn ein Nettopreis und eine Mwst \> 0 eingegeben wird, muss also auch das Pfand als Nettopreis eingegeben werden, weil es auch mit der Mwst beaufschlagt wird. Falls nur der Bruttopfandwert bekannt ist, kann der Nettowert berechnet werden über 

Nettopfand = Bruttopfand / (100% + Mwst)

### Herkunft

Herkunft des Artikels, je regionaler die Angabe, desto mehr Information über die Regionalität des Artikels. 

### Produzent

Falls Lieferantin Produkte unterschiedlicher Produzentinnen anbietet, sonst leer lassen.

### Bestellnummer

Kann von Lieferantin übernommen, selbst gewählt oder auch leer gelassen werden.

## Artikel importieren

Artikel \> Lieferanten \> Artikel \> Artikel hochladen

Vorhandene Preisliste im Excel-Format (oder ähnlich) importieren:

1. Preisliste in Tabellenprogramm (Excel, LibreOffice oder OpenOffice) öffnen
2. Erste Zeile markieren (am linken Rand auf Zeilennummer 1 klicken) und mit Strg-Plus eine Zeile einfügen 
3. Foodsoft Artikel \> Lieferanten \> Artikel \> Artikel hochladen: Mustertabelle Kopfzeile kopieren und in die leere erste Zeile der Tabelle einfügen mit Strg+Alt+V (Excel) bzw. Strg+Gross(Shift)+V unformatierten Text einfügen
4. Spalten der original-Preisliste so umordnen, dass sie zur Kopfzeileder Mustertabelle aus der Foodsoft passen. Dazu Spalteninhalt ab der zweiten Zeile markieren und mit Strg+Alt an die richtige Position ziehen.
5. Artikelkategorien: Angelegte Kategorien siehe Foodsoft \> Artikel \> Kategorien. Bezeichnungen der Kategorien dürfen keine Leerstellen am Ende haben (passiert wenn aus Foodsoft in Tabelle kopiert).
6. Optional fortlaufende Bestellnummern vergeben, falls vom Lieferant keine Artikelnummern vorgesehen sind. Bestellnummern sind notwendig, wenn die Liste später aktualisiert und erneut hochgeladen wird, damit die aktualisierten den bestehenden Artikeln zugeordnet werden können. Bei den Bestelllisten, die die Foodsoft für die Lieferantin erstellt, wird die Bestellnummer in der ersten Spalte angezeigt. Um die Gefahr einer Verwechslung mit der Stückzahl in der zweiten Spalte zu reduzieren, können die Bestellnummern z.B. 1001, 1002, … sein.

- Artikel: ...

## Artikel exportieren

Alle Artikel der Produzentin werden in eine Textdatei im CSV Format gespeichert, können bei Bedarf mit einem Tabellenprogramm wie Excel oder Calc (LibreOffice) bearbeitet und mit der Import Funktion auch wieder bei einer anderen Produzentin oder in der Foodsoft einer anderen Foodcoop importiert werden.

Wird die CSV Datei in einer deutschen Office Version bearbeitet, kann es sein, dass Dezimaltrenner Punkt durch Komma ersetzt wird, was beim Einlesen der CSV Datei nicht akzeptiert wird. Abhilfe: im ODS-Format speichern.

~~Wenn die Datei im ODS Format gespeichert wird, fehlt die Beschriftung der ersten Spalte „Status“ in der ersten Zeile und muss ergänzt werden.~~
[*Behoben 2021-03*](https://github.com/foodcoops/foodsoft/commit/07c8393c8c81888b2853d8eca7ef4774fe06fde3)

## Artikel löschen

> Saisonal bzw. vorübergehend nicht verfügbare Artikel sollten besser als nicht verfügbar gekennzeichnet statt gelöscht werden. Sie können dann jederzeit wieder verfügbar gemacht werden.
{.is-info}


> Artikel können nicht gelöscht werden, solange sie Teil einer offenen
> Bestellung sind.
{.is-warning}


Bei abgeschlossenen oder abgerechneten Bestellungen bleiben die angezeigten Artikeldaten wie Name, Einheit, Preis erhalten, auch wenn der entsprechende Artikel gelöscht wird. Die anderen Details gehen allerdings verloren.

### Alle Artikel einer Lieferantin löschen
Aie Anzahl der angezeigten Artikel erhöhen, sodass alle angezeigt werden, am Ende der Liste „alle auswählen“, rechts daneben "Artikel löschen". 
> Es werden nur jene Artikel ausgewählt und gelöscht, die in der aktuellen Ansicht sichtbar sind.
{.is-warning}


## Artikel aktualisieren

Artikeldetails wie Preis, Bezeichnung, Menge können sich im Lauf der Zeit ändern. Hier wird beschrieben, wie diese Anpassungen durchgeführt werden können, und wie sich diese Änderungen auf bereits abgschelossene oder aktuelle Bestellungen auswirken.

- **Manuelle Aktualiserung durch Bearbeiten** einzelner oder aller Artikel: außer beim Preis wirken sich alle Änderungen auf alle Bestellungen aus, also auch auf aktuelle offene sowie bereits geschlossene oder abgerechnete Bestellungen (siehe [*https://github.com/foodcoops/foodsoft/issues/850*](https://github.com/foodcoops/foodsoft/issues/850)).

- Alternativ können Artikel auch durch **Hochladen einer aktualisierten Import-Liste** aktualisiert werden. Dazu ist es erforderlich, jedem Artikel eine Bestellnummer (order nummer) zuzuweisen. Das können einfach fortlaufende Zahlen sein (1, 2, 3, …), falls die Lieferantin keine Artikelnummern vergibt. Ohne Bestellnummern kann die Foodsoft die Artikel der hochgeladenen nicht den bestehenden zuordnen. Die Artikeldaten von bereits abgeschlosssenen Bestellungen wie Name, Einheit usw. werden dabei auch verändert, mit Ausnahme der Artikelpreise, was z.B. im Fall der Änderung der Einheit zu einer verfälschten Darstellung alter Bestellungen führt, siehe oben erwähnter Github Issue. 

- Eine weitere Möglichkeit, insbesondere wenn keine Bestellnummern vergeben wurden, ist es, **Artikel zu löschen, und dann die Artikel neu hochzuladen**. Das geht jedoch nur, solange keine Bestellung offen ist. Die Daten von bereits abgeschlossenen oder abgerechneten Bestellungen (Artikelname, Einheit, Preis, …) werden dabei nicht verändert. Das mag in bestimmten Fällen auch so erwünscht sein.

# Kategorien

Kategorien ermöglichen es, Artikel zu gruppieren. In der Bestellansicht wird für jede Kategorie eine Überschrift angelegt und dann die Artikel dieser Kategorie. Kategorien sind global, das heißt jede Kategorie  ist für alle Lieferantinnen gleichermaßen gültig und auswählbar.

## Neue Kategorie anlegen

### Name
Eine möglicht selbsterklärende und prägnante Bezeichnung für die Katorie.

#### Beispiel Gemüselieferantin

Kategorien
- Gemüse
- Säfte
- Öle
- Essig
- Eingemachtes
- Pflanzen
- Obst

Die Bestellliste sieht dann beispielsweise so aus (dargestellte Kategorien Eingemachtes, Essig und Gemüse):

![bestellung-kategorien.png](/bestellung-kategorien.png)

#### Beispiel Weinlieferantin
- Rotwein
- Weißwein
- Sekt und Prosecco

Da aus den Namen der Weine oft nicht hervorgeht, ob es sich um einen Weiß- oder Rotwein handelt, ist es über die Kategorie klar zugeordnet. 

### Beschreibung

Eine optionale Beschreibung der Kategorie. 

Wird angezeigt:
- Kategorien-Liste

Wird nicht angezeigt:
- Bestellen Artikelliste

## Kategorie bearbeiten

Hier kannst du Name und Beschreibung einer Kategorie anpassen. Die interne Zuordnung von Artikelns und Kategorien erfolgt über eine ID (eine eindeutige Zahl, die die Foodsoft automatisch für jede neue erstellte Kategorie vergibt), sodass Zuordnungen erhalten bleiben, auch wenn du die Bezeichnung der Kategorie änderst. 

## Kategorie löschen

> Unklar, ob es möglich ist, Kategorien zu löschen, die in Verwendung sind, bzw. was dann passiert. Info ergänzen!
{.is-danger}





