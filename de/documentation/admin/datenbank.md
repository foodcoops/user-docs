---
title: Datenbank - phpMyAdmin
description: Welche verstecken Features der Zugriff auf die Foodsoft-Datenbank bietet
published: true
date: 2023-04-09T03:36:31.831Z
tags: 
editor: markdown
dateCreated: 2023-04-09T02:10:13.914Z
---

# Datenbankzugriff via phpMyAdmin

> Über das Tool phpMyAdmin kannst du einfach im Browser auf die Datenbank deiner Foodsoft-Instanz zugreifen und Daten auslesen/verändern.
Dies ist für einige versteckte Features, für die es noch kein Menü in der Foodsoft-Benutzeroberfläche gibt, die einzige Möglichkeit sie zu aktivieren.
In anderen Fällen kann es einfach viel praktischer sein, als z.B. eine Reihe von Daten händisch über die Foodsoft-Benutzeroberfläche zu bearbeiten bzw. nachzuschlagen.
Für viele Zwecke brauchst du dabei gar keine speziellen SQL-Kenntnisse.
{.is-success}

> Sei aber äußerst vorsichtig, denn du kannst mit diesem Tool deine Foodsoft-Instanz zerstören bzw. darin viel kaputtmachen!
Sei daher behutsam mit dem Einsatz von phpMyAdmin und beachte u.a.:
	Verändere nicht die `id` eines Datensatzes, denn andere Datensätze verweisen auf diesen mittels dieser ID, außerdem dürfen zwei Datensätze in einer Tabelle nicht die gleiche ID haben.
{.is-warning}

> Den Zugang zu eurer Foodsoft-Datenbank musst du zunächst beim Host deiner Foodsoft-Instanz (z.B. IG FoodCoops in Österreich) anfordern.
Anschließend kannst du im Browser phpMyAdmin öffnen (die Adresse variiert je nach Installation).
{.is-info}


# Einführung in phpMyAdmin
## Navigation

In der linken Seitenleiste siehst du, für welche Foodsoft-Instanzen du Zugriffsrechte hast.

![grafik.png](/grafik.png)

Für jede Foodsoft-Instanz ist eine Reihe an Tabellen gespeichert:

![db_tabellen.png](/db_tabellen.png)

In jeder Tabelle wird eine Reihe an Datensätzen gespeichert, beispielsweise sämtliche Artikel von allen Lieferantinnen.

![db_datensaetze.png](/db_datensaetze.png)

## Datensätze bearbeiten

Um einen Wert in einem Datensatz zu bearbeiten, einfach auf den Wert doppelklicken:

![db_inline.png](/db_inline.png)

Bei mehrzeiligen Werten kann es jedoch mühsam sein, sie "inline" zu bearbeiten. Dafür links auf "Bearbeiten" klicken. Im folgenden Menü können die Werte in einem größeren Feld bearbeitet werden.

![db_bearbeiten.png](/db_bearbeiten.png)

Danach musst die Änderungen am Datensatz noch speichern, indem du unten auf OK klickst:

![db_speichern.png](/db_speichern.png)

Oder du klickst im Browser einfach auf Zurück oder in der oberen Leiste auf Anzeigen, um die Bearbeitung abzubrechen.

## Weitere Funktionen

Mit den entsprechenden Kenntnissen lassen sich auch SQL-Befehle und viele Funktionen anwenden. Diese brauchst du jedoch für die folgenden Anleitungen nicht.

# Benutzerdefinierte Felder (custom fields)

Mit diesem Feature kannst du zusätzliche Felder für
- Benutzerinnen
- Bestellgruppen
- Arbeitsgruppen
- Lieferantinnen (speichern funktioniert nicht)
- Rechnungen

anlegen, in die dann über die Benutzeroberfläche Daten eingetragen werden können.

> Die benutzerdefinierten Felder werden nicht in den Anzeige-Menüs aufgelistet, sondern nur in den Bearbeiten- bzw. Erstellen-Menüs.
{.is-danger}

Benutzerdefinierte Felder werden zusammen mit den Standard-Felder angezeigt:

![cf_bestellgruppe.drawio.png](/cf_bestellgruppe.drawio.png)

> Benutzerdefinierte Felder für Lieferantinnen werden zwar angezeigt, Eingaben werden jedoch nicht gespeichert: [Issue 952](https://github.com/foodcoops/foodsoft/issues/952)
{.is-danger}

## Felder konfigurieren

### Settings-Tabelle öffnen

Die Konfiguration der benutzerdefinierten Felder wird in einem einzigen Datensatz in der Tabelle settings gespeichert.

![db_settings.png](/db_settings.png)

### Datensatz für benutzerdefinierte Felder finden

Stelle die Anzahl der Datensätze auf das Maximum und gib bei "Zeilen filtern" `.custom` ein, dann sollte ein Datensatz mit var = `foodcoop.<name>.custom_fields` erscheinen. Wenn nichts erscheint, probiere auf Seite 2, 3 ... zu blättern, bis er erscheint.

![db_customfields.png](/db_customfields.png)

### Bearbeiten

Klicke auf **Bearbeiten** und verändere den Wert unter Value. Beispiel:

![db_cf_bearbeiten-.png](/db_cf_bearbeiten-.png)

### Syntax
#### Felder für unterschiedliche Objekte

So können jeweils beliebig viele Felder für Benutzerinnen, Bestellgruppen, Arbeitsgruppen, Lieferantinnen und Rechnungen konfiguriert werden.

```
--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess
user:
  - name: user_field
    label: Benutzerinnen-Feld
ordergroup:
  - name: ordergroup_field
    label: Bestellgruppen-Feld
workgroup:
  - name: workgroup_field
    label: Arbeitsgruppen-Feld
supplier:
  - name: supplier_field
    label: Lieferantinnen-Feld
invoice:
  - name: invoice_field
    label: Rechnungen-Feld
```

#### Weitere Optionen

Für Felder gibt es noch weitere hilfreiche Optionen:

```
--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess
user:
  - name: test_field
    label: Testfeld
    hint: Ein Hinweis, der unterhalb des Eingabefeldes angezeigt wird.
    placeholder: 'Hinweis innerhalb des Eingabefeldes'
  - name: text_field
    label: Textfeld
    as: text
  - name: password_field
    label: Passwort-Feld
    as: password
  - name: float_number_field
    label: Fließkommazahl
    as: float
  - name: date_field
    label: Datumsfeld
    as: date
    html5: true
```

Das sieht dann so aus:

![cf_beispiel.png](/cf_beispiel.png)

> Eine Liste an möglichen Optionen findest du [hier](https://github.com/heartcombo/simple_form#available-input-types-and-defaults-for-each-column-type), jedoch funktionieren nicht all diese Datentypen ohne weiteres (z.B. werden die Eingaben nicht gespeichert).
Die oben aufgelisten Datentypen sind erfolgreich getestet worden.
{.is-info}

#### Anwendung auf Kontotransaktionen (z.B. für Mitgliedsbeitrag)

--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess
ordergroup:
  - name: membership_fee
    label: Mitgliedsbeitrag
    hint: Als negative Zahl eintragen (z.B. -4 oder -4,5 oder -4.5)
    financial_transaction_source: true
    
Die letzte Zeile bewirkt, dass im Menü `Neue Überweisungen eingeben` folgender Button erscheint:

![mb_hinzufuegen.png](/mb_hinzufuegen.png)

> Dadurch werden die Bestellgruppen hinzugefügt und jeweils der Wert, der als Mitgliedsbeitrag gespeichert ist, direkt als Betrag eingefügt.
{.is-success}

> Da ein positiver Betrag der Bestellgruppe gutgeschrieben wird, ist es zum Einziehen von Mitgliedsbeiträgen notwendig das Feld mit einer negativen Zahl auszufüllen. Da dies kontraintuitiv ist, ist es ratsam per Hinweis (hint) darauf hinzuweisen.
{.is-warning}

> Der Mitgliedsbeitrag kann so je Bestellgruppe individuell festgelegt werden - z.B. je nach dem, aus wie vielen Personen eine Bestellgruppe besteht oder welche Einkommensverhältnisse vorherrschen.
{.is-success}

> Es können auch mehrere benutzerdefinierte als financial_transaction_source definiert werden, dann erscheinen mehrere solche Buttons ("Alle Bestellgruppen mit ... hinzufügen") nebeneinander.
{.is-success}

> Die Vorgehensweise für das Verwalten von Mitgliedsbeiträgen über die Foodsoft ist also:
(1) Mitgliedsbeitrag-Feld konfigurieren
(2) Höhe bzw. Berechnungsgrundlage für den Mitgliedsbeitrag sowie auf welchen Zeitraum er sich bezieht, überlegen
(3) Jeweiligen Mitgliedsbeitrag bei Bestellgruppen eintragen (Achtung, dies geht nur über die Administration, kann also nicht von allen Bestellgruppen selbst gemacht werden)
(4) [Kontotransaktionsklasse & -typ für Mitgliedsbeitrag einrichten](https://docs.foodcoops.net/de/documentation/admin/finances/accounts) (kann auch vorher geschehen)
(5...) Bestellgruppen laden ihren Mitgliedsbeitrag auf (wie Guthaben), können also beliebig im Voraus oder nur für die nächste Einziehung einzahlen
(5...) Ein Mitglied zieht den Mitgliedsbeitrag z.B. jeden Monat/Quartal ein - dabei kann es passieren, dass Bestellgruppen mit ihrem "Mitgliedsbeitrag-Guthaben" ins Minus rutschen und erinnert werden müssen es wieder einzuzahlen.
{.is-info}
