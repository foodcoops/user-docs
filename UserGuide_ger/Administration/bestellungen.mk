# Einleitung

## Lebenszyklus von Bestellungen

Bestellungen durchlaufen in der Regel folgende Stadien, wobei eine Änderung meist nur vorwärts möglich ist:

1. Bestellung ist noch nicht offen, weil sie erst in der Zukunft startet
2. Bestellung ist offen: Bestellgruppen können ihre Bestellungen erstellen und bearbeiten
3. Bestellung ist beendet: Bestellgruppen können ihre Bestellungen nicht mehr bearbeiten, Bestellungen werden an Lieferantinnen geschickt; Bestellung kann nicht mehr wieder geöffnet werden, um von Bestellgruppen bearbeitet zu werden. Nach der Lieferung kann die Bestellung grundsätzlich nur noch mit spezieller Berechtigung  angepasst werden (z.B. wenn nicht alles geliefert wurde, was bestellt wurde)
4. Bestellung ist abgrechnet: Bestellung kann nicht mehr verändert werden

## Bestellungen abrechnen und Rechnungen anlegen

Beim Bestellen werden die Beträge den Bestellgruppen noch nicht von ihren Konten abgebucht, es verringern sich zunächst nur die verfügbaren Guthaben. Erst beim Abrechnen einer Bestellung werden die Beträge für diese Bestellung den Bestellgruppen von ihren Foodsoft-Konten abgebucht.
Nur vorher können noch Anpassungen durchgeführt werden, wenn es z.B. bei der Lieferung Abweichungen zur Bestellung gibt. Weiters sollte die Rechnung des Produzenten angelegt und mit der Bestellung verknüpft werden, um vergleichen zu können, ob sich die Geldbeträge von Rechnung und Bestellung decken.

> Achtung auf die Einhaltung der Reihenfolge: sobald eine Bestellung abgerechnet ist, kann sie nicht mehr angepasst werden, und es können keine Rechnungen mehr mit dieser Bestellung verknüpft werden.
{.is-warning}

Daher sollte folgende Reihenfolge strikt eingehalten werden:

1. Bestellung an tatsächlich gelieferte Artikel anpassen
2. Rechnung in der Foodsoft für die Bestellung anlegen (Details siehe unten). Wenn die ProduzentInnen Rechnungen über mehrere Bestellungen gesammelt ausstellen, warten, bis die Rechnung kommt und für die betroffenen Bestellungen eine gemeinsame Rechnung in der Foodsoft anlegen. 
3. Rechnungsdaten der Rechnung von der ProduzentIn in die Foodsoft eingeben und prüfen: stimmen Beträge von Bestellung/Lieferung (“Total”) und der pfandbereinigten Rechnung überein? 
4. Rechnung bezahlen per Überweisung vom Foodcoop Bankkonto 
5. Bankdaten importieren und zuordnen: Rechnung wird in der Foodsoft als bezahlt gekennzeichnet 
6. Bestellung abrechnen 

## Erforderliche Berechtigungen für Bestellverwaltung

- Bestellungen anlegen, bearbeiten, beenden, anpassen, Lieferungen entgegenehmen, Rechnungen anlegen: **Bestellungen**
- Lagerbestellungen anlegen: **Lieferanten** oder **Artikeldatenbank**
- Bestellungen abrechnen: **Finanzen**

# Bestellungen anlegen

Es gibt folgende zwei Arten von Bestellungen:
- **Bestellung für Bestellgruppen bei Lieferant**: Bestellungen \> Bestellverwaltung \> neue Bestellung anlegen \> Lieferant auswählen (Berechtigung Bestellen erforderlich)
- **Bestellung für Bestellgruppen im Foodcoop-Lager**: Artikel \> Lager \> Lagerbestellung online stellen (Berechtigung Lieferanten oder Artikeldatenbank erforderlich)
   
> Die Foodsoft erlaubt derzeit noch keine automatisierte Erstellung von Bestellungen. Auch wenn sich z.B. eine Bestellung wöchentlich exakt wiederholt, muss sie dennoch jede Woche neu angelegt werden.
{.is-info}

> *Bestellung kopieren* erspart bei regelmäßigen Bestellungen Aufwand. Allerdings werden dabei zunächst nur die Artikel der kopierten Bestellung übernommen. 
{.is-info}


## Bestellzeitraum

Eine Bestellung ist im festgelegten Zeitraum „offen“, d.h. dass Bestellgruppen bestellen können bzw. ihre Bestellung verändern können. 

Sobald eine Bestellung beendet ist, 

- können die Bestellguppen ihre Bestellung nicht mehr verändern. Üblicherweise ist das erforderlich, weil dann die Bestellungen an die Lieferanten geschickt werden;, und Änderungen daher nicht mehr berücksichtigt werden könnten;  
- kann das Abholdatum nicht mehr verändert werden

## Abholdatum

Das Abholdatum ist wichtig, wenn Abhhollisten über die Funktion *Bestellen \> Abholtage* erstellt werden, damit alle Bestellungen eines Abholtages gemeinsam auf den Listen erscheinen. Es kann nach dem Beenden der Bestellung nicht mehr geändert bzw. gesetzt sein. Daher die
Empfehlung, Bestellungen erst abzuschließen, wenn auch das Abholdatum feststeht.

## Endeaktion: Optionen für Aktionen beim Bestellende

> Screenshot
{.is-danger}

- **keine automatische Aktion:** die Bestellung bleibt offen. Sinnvoll, wenn eine Mindestbestellmenge erreicht werden soll, und die Bestellung so lange hinausgezögert werden soll, bis sie erreicht wird.
- **Bestellung beenden**: die Bestellung wird automatisch beendet, und kann dann auch nicht mehr geöffnet werden.
- **… an Lieferantin schicken:** die Bestellliste wird von der Foodsoft automatisch als PDF Anhang per Email an die Lieferantin und an das Foodsoft Mitglied geschickt. 
- **… sofern die Mindestbestellmenge erreicht wurde**: bei jeder Lieferantin kann eine Mindestbestellmenge als Geldbetrag angegeben werden. Dieser Mindestbetrag und wieviel davon schon erreicht wurde, wird den Bestellgruppen beim Bestellen angezeigt. Wenn die Bestellung nicht zustande kommt, sollte
  - Eine Nachricht an die Bestellgruppen geschickt werden (Funktion „An die Mitglieder schicken, die bei einer Bestellung etwas bestellt haben“)
  - Bestellen \> Bestellverwaltung \> Beendet \> Bestellung (Zeile mit der betroffenen Bestellung suchen)... \> in Empfang nehmen, Alle auf Null setzen, Bestellung in Empfang nehmen. Damit wird dann auch nichts abgerechnet, und die auf den Bestelllisten (Bestellen \> Abholtage) scheint bestellt: x, erhalten: 0 auf, in grau statt schwarz. Das sollte idealerweise möglichst rasch nachdem die Bestellung gescheitert ist, passieren, damit es bei den ausgedruckten Bestelllisten berücksichtigt ist. 
  - Vorschlag für Automatisierung: [*https://github.com/foodcoops/foodsoft/issues/858*](https://github.com/foodcoops/foodsoft/issues/858)
        
## Artikel für Bestellung auswählen

…

Es werden nur die Artikel des Lieferanten zur Bestellung hinzugefügt, die aktuell verfügbar sind (Lager: Lagerstand \> 0). Wenn Artikel nachträglich verfügbar werden, hinzugefügt oder ins Lager geliefert werden, muss die Bestellung bearbeitet werden und die zusätzlichen Artikel ausgewählt werden (oder: „alle auswählen“ am unteren Ende der Liste).

## Lagerbestellung

Zusätzlich zu den direkten Bestellungen der Mitglieder kann bei einer Bestellung bei der Lieferantin eine Lagerbestellung (Foodcoop bestellt bei Lieferant um Lagerbestand aufzufüllen) hinzugefügt werden. Diese Artikel scheinen dann in der Bestellliste, die an den Lieferanten geht, auch auf, nicht aber in der Abrechnung und bei “Bestellung annehmen”(?). Wenn die Artikel geliefert sind, ist fürs Lager nochmal extra eine Lieferung für diese Artikel anzulegen, damit sie in den Lagerbestand aufgenommen werden. Für die Rechnung sind dann sowohl Bestellung und (Lager-)Lieferung anzugeben.

# Bestellungen an Lieferantin schicken

- Wenn automatisch über die Foodsoft: Email geht an Lieferantin mit Bestellliste als PDF und CSV Datei, CC an FC Mitglied, das die Bestellung erstellt hat
- Manuell: Bestelllisten herunerladen (...) und z.B. per Email versenden

# Bestelllisten für Aufteilung der Lieferungen auf Bestellgruppen

Siehe [Abholtage](../Anwendung/Bestellen)

# Bestellungen an Lieferung Anpassen

Nicht immer wird genau das geliefert, was bestellt wird. Manchmal sind Artikel nicht mehr oder nur beschränkt verfügbar, oder die Lieferanten irrt sich - so können sowohl mehr als auch weniger Artikel als bestellt geliefert werden. Nur wenn ihr die Foodsoft auch zum Abrechnen verwendet, ist es wichtig, die Bestellungen an die tatsächliche Lieferung anzupassen, damit
- die Rechnung der Lieferantin mit der Bestellsumme in der Foodsoft zusammenstimmt, und
- den Mitgliedern  Beträge von ihrem Guthaben abgebucht werden, die dem entsprechen, was sie tatsächlich bekommen haben.

> Wenn ihr die Foodsoft nicht zum Abrechnen verwendet, könnt ihr diesen Schritt überspringen, und die Bestellung sofort abrechnen. Dieser Schritt ist wichtig, damit Bestellungen als abgeschlossen gelten und von der Foodsoft auch also solche (nicht mehr) dargestellt werden können. Auch wenn ihr euch zu einem späteren Zeitpunkt entscheidet, die Foodsoft doch für die Abrechnung zu verwenden, habt ihr dann einen sauberen Umstieg - sonst müsstet ihr nachträglich alle bisherigen Bestellungen abrechnen.
{.is-info}

## Bestellungen in Empfang nehmen

Die Funktion "In Empfang nehmen" ist so, dass du bei Artikeln, wo eine Anzahl abweichend von der bestellten geliefert wurde, die tatsächlich gelieferte Anzahl in das leere Feld schreibst. Es können auch Dezimalzahlen mit Punkt eingegeben werden (z.B: 3.5 für dreieinhalb Einheiten), wenn die gelieferte Menge von der bestellten abweicht.

Wenn die Bestellmenge mit der Liefermenge übereinstimmt, können die entsprechenden Felder frei gelassen werden. Es empfiehlt sich aber dennoch, alle Felder auszufüllen, da dadurch einfach nachvollziehbar ist, ob alle Mengen kontrolliert wurden.

Wenn die Bestellung komplett ausgefallen ist (z.B. weil die Mindestmenge nicht erreicht wurde), kannst du die Funktion „alle auf Null setzen“ verwenden.

Dann klickst du auf "Bestellung in Empfang nehmen".

Man sieht die bestellten, aber nicht gelieferten Artikel dann nur mehr in der Gruppen-PDF Ansicht.


## Mitglieder-Bestellungen anpassen

Der Vorgang „Bestellung abrechnen“ erfolgt in zwei Stufen, die – leider etwas verwirrend – gleich heißen:

1. **Bestellung zur Abrechnung vorbereiten**: In der Liste “Finanzen \> Bestellung abrechnen” bei der entsprechenden Bestellung auf „abrechnen“ oder den Datumslink klicken. In diesem Schritt bereitest du die Bestellung zur Abrechnung vor, indem du  noch Änderungen an der     Bestellung vornehmen kannst, wie unten beschrieben. Alle Änderungen an der Bestellung werden automatisch gespeichert (keine „Abbrechen“ Funktion\!), es wird aber das Guthaben der Bestellgruppen noch nicht belastet. Du kannst auch öfters zurückkehren und weitere Änderungen vornehmen, solange du nicht den 2. Schritt ausgeführt hast.
2. **Bestellung endgültig abrechnen**: Auf der Seite von Schritt 1 gibt es nochmals die Schattfläche „Bestellung abrechnen“, mit der die Bestellung dann endgültig abgerechnet wird. Damit werden den Bestellgruppen die entsprechenden Beträge von ihrem Guthaben endgültig abgezogen, die Bestellung kann nicht mehr verändert werden, und diese Bestellung kann auch keiner Rechnung mehr zugeordnet werden. 

*Folgende Schritte überarbeiten...*

- Siehe oben Bestellung in Empfang nehmen, oder
- unter “Finanzen \> Bestellung abrechnen”: 
Bestellte Anzahl an gelieferte anpassen (mehr oder weniger Artikel als bestellt wurden geliefert): Bestellung bearbeiten \> Titel des Artikels anklicken \> Im Aufklappmenü Menge bei den Gruppen entsprechend ändern ODER Gruppenansicht \> Anpassen der gelieferten Menge, wenn diese von der Bestellung abweicht
 - Neue Bestellgruppe(n) hinzufügen (es wurde z.B. ein Alternativartikel für nicht gelieferte Produkte geliefert): Bestellung bearbeiten \> Titel des Artikels anklicken \> Im Aufklappmenü “Gruppe hinzufügen”, Anzahl eingeben, bei Bedarf (mehrere Gruppen betroffen) Schritt wiederholen
 - Es können auch Kommazahlen bei “Anzahl” eingeben werden. Das kann genützt werden, um Artikel mit schwankendem Gewicht bzw. Preis abzurechnen:

> **Beispiel: tatsächliches Gewicht bekannt**:
>
>Bestellt werden 2 Stück Krautkopf, in der Foodsofthinterlegt zu je 3,00 € für 2 kg/Stück und 1,50 € pro kg, also gesamt 6,00 € Bekommen: 1,8 kg und 2,5 kg = gesamt 4,3 kg
> - Umrechnung in Stück: 4,3 kg / 2 kg pro Stück = 2,15 Stück
> - Preis wird automatisch zu 2,15 \* 3,00 € = 6,45 €berechnet
{.is-info}

> **Beispiel: tatsächliche Kosten bekannt** 
>
> Bestellt werden 2 Stück Käse, in der Foodsoft hinterlegt zu je 10,00 € für 500 g/Stück und 20 € pro kg, also gesamt 20,00 €
> - Bekommen: 9,50 € und 9,10 € = gesamt 18,60 €
> - Umrechnung in Stück: 18,60 € / 10 € pro Stück = 1,86 Stück
> - Preis wird automatisch zu 1,86 \* 10,00 € = 18,60 € berechnet
{.is-info}

## Artikeleigenschaften anpassen

Manchmal ändern sich z.B. Artikelpreise zwischen Bestellung und Lieferung und müssen in der bereits abgeschlossenen, aber noch nicht abgerechneten Bestellung korrigiert werden, damit sie der Rechnung entsprechen. Unter Finanzen \> Bestellungen abrechnen kannst du jeden Artikel bearbeiten:

- Der Preis ist die einzige Artikeleigenschaft, die für jeden Artikel und jede Bestellung separat abgespeichert wird. Dadurch wirken sich Preisänderungen eines Artikels in einer Bestellung zunächst nicht auf andere Bestellungen aus: 
  - Bei vergangenen Bestellungen soll das ja immer so sein. 
  - Für zukünftige Bestellungen kannst du über die Option „Globalen Preis aktualisieren“ den Preis auch in der Artikelliste der Lieferantin ändern. Wird diese Option nicht angewählt, wird die Änderung nur für die aktuelle Bestellung übernommen und der Preis in der Artikelliste der Lieferantin bleibt unverändert.
  - Alle anderen Artikeleigenschaften wie Name, Einheit usw. können nur global verändert werden, sie ändern sich also sowohl bei vergangenen Bestellungen als auch in der Artikellliste der Lieferantin und damit auch in zukünftigen Bestellungen.

Nur wenn Artikel mit veränderten Eigenschaften in der Artikelliste der Lieferantin als neue Artikel angelegt werden (anstatt die bestehenden zu bearbeiten), werden die Eigenschaften der Artikel in früheren Bestellungen nicht beeinflusst. Die veränderten Artikel sind dann allerdings auch erst bei zukünftig neu angelegten Bestellungen verfügbar. 


## Transportkosten hinzufügen

Manche ProduzentInnen verrechnen pro Lieferung Transportkosten, manchmal auch abhängig von der Bestellsumme. So können die tatsächlich angefallenen Transportkosten für jede Bestellung im Nachhinein gerecht auf alle Bestellgruppen aufgeteilt werden:

1. Finanzen \> Bestellungen abrechnen
2. Bestellung auswählen
3. rechts oben “Artikel hinzufügen” \> “Transportkosten bearbeiten”
4. Gesamte Transportkosten für Bestellung eingeben (auch negativer Betrag möglich, falls z.B. zu viel bereits in die Artikelpreise einkalkulierte Transportkosten abgezogen werden sollen)
5. Transportkostenverteilung auswählen:
   1. Kosten nicht auf die Bestellgruppen aufteilen
   2. Jede Bestellgruppe zahlt gleich viel
   3. Kosten anhand der Bestellsumme aufteilen
   4. Kosten anhand der Anzahl an erhaltenen Artikeln verteilen
6. Speichern
7. Ansichtsoptionen \> Gruppenübersicht: Anteil an Transportkosten für jede Bestellgruppe wird angezeigt

8. Solange die Bestellung noch nicht abgerechnet wurde, kann der Vorgang ab Schritt 3 wiederholt werden, um Korrekturen vorzunehmen, nachdem die Ansichtsoption wieder auf “Bestellung bearbeiten” zurückgesetzt wurde.

# Bestellung abrechnen

Beim Bestellen werden die Beträge den Bestellgruppen noch nicht von ihren Konten abgebucht, es verringern sich zunächst nur die verfügbaren Guthaben. Erst beim Abrechnen einer Bestellung werden die Beträge für diese Bestellung den Bestellgruppen von ihren Foodsoft-Konten abgebucht. Nur vorher können noch Anpassungen durchgeführt werden, wenn es z.B. bei der Lieferung Abweichungen zur Bestellung gibt. Weiters sollte die Rechnung des Produzenten angelegt und mit der Bestellung verknüpft werden, um vergleichen zu können, ob sich die Geldbeträge von Rechnung und Bestellung decken.

Die Bestellung sollte erst abgerechnet werden, wenn auch die [Rechnung](Rechnungen) angelegt und idealerweise auch bezahlt oder zumindest zur Bezahlung freigegeben wurde.

> Sobald eine Bestellung abgerechnet wurde, kann keine Rechnung mehr für
> diese Bestellung angelegt werden. Es kann zwar eine Rechnung erstellt
> werden, aber die bereits abgrechnete Bestellung kann nicht mehr ausgewählt werden, um mit der Rechnung verknüpft zu werden.
{.is-warning}


## Eine Bestellung abrechnen

1. Menü Finanzen > Bestellungen abrechnen
1. Abzurechnedne Bestellung aus der Liste suchen, in dieser Zeile den Link der Lieferantin oder "abrechnen" anklicken
1. Bestellung abrechnen
1. Bestätigen (kein Zurück!)

