# Übersicht

# Benutzende

# Bestellgruppen

## Bestellgruppe erstellen und bearbeiten

Mitgliedsbeitrag: negative Zahl eingeben. Siehe eigener Abschnitt “Mitgliedsbeiträge”.

Pausieren von/bis: hat nur Notiz-Charakter, d.h. es kann jeweils ein Datum eingegeben werden, es verändert sich dadurch aber nichts für das Mitglied (z.B. kann das Mitglied auch in der Pause Guthaben aufladen und bestellen, und es wird ihm ein Mitgliedsbeitrag verrechnet, wenn dieser nicht während der Pause händisch auf 0 gesetzt wird).

Mitglieder entfernen aus Bestellgruppe: 
1. Benutzername(n) notieren
2. Benutzer aus Bestellgruppe entfernen 
3. Notierte Benutzer löschen


## Bestellgruppe löschen

…

Kontoauszug und Kontostand einer gelöschten Bestellgruppe anzeigen:
siehe [Foodsoft-Kontoauszüge anzeigen](#anchor-139)

# Berechtigungen

## Berechtigungen setzen

Berechtigungen können entweder über Adminstration \> Arbeitsgruppen oder pauschal für alle Mitglieder über Administration \> Einstellungen \> Sicherheit \> Zugriff auf gesetzt werden. Es ist nicht möglich, Berechtigungen nur für einzelne Mitglieder zu setzen, sondern es ist immer erforderlich, eine Arbeitsgruppe anzulegen, dieser Berechtigungen zu vergeben, und anschließend dieser Arbeitsgruppe Mitglieder zuzuweisen. Eine Arbeitsgruppe kann kein, eines oder beliebig viele Mitglieder enthalten. Mitglieder können in beliebig vielen Arbeitsgruppen Mitglied sein. Beispiele siehe ...

## Berechtigungen anzeigen

- Adminstration \> Arbeitsgruppen \> Arbeitsgruppe auswählen, um Mitglieder anzuzeigen
- Adminstration \> Benutzer/innen: für jede Benutzerin werden die Berechtigungen durch entsprechende Symbole angezeigt. Für die Bedeutung der Symbole mit der Maus über das Symbol fahren, es wird der entsprechene Text eingeblendet.

## Arten von Berechtigungen

### Lieferanten

Menü „Artikel“ wird angezeigt, kann Lieferanten, Lager und Lagerartikel einsehen und bearbeiten, jedoch nicht die Artikel der Lieferanten einsehen: Link auf Artikel bei Lieferanten scheint zwar auf, aber beim Anklicken kommt Hinweis: keine Berechtigung

### Artikeldatenbank (Artikel)

Wird als Berechtigung „Artikel“ angezeigt, beim Einstellen heißt die Berechtigung „Artikeldatenbank“. Menü „Artikel“ wird angezeigt, alle Unterpunkte können eingesehen und bearbeitet werden, auf Lieferanten (schließt Berechtigung Lieferanten mit ein).

...


### Bestellverwaltung (Bestellung)

Wird als Berechtigung „Bestellung“ angezeigt, beim Einstellen heißt die Berechtigung „Bestellverwaltung“.

Kann Bestellungen anlegen, bearbeiten und in Empfang nehmen.

Achtung, für das Anlegen einer Lagerbestellung ist zumindest die Berechtigung „Lieferanten“ erforderlich, oder „Artikel(datenbank)“.

### Abholtage

Mitglieder mit Abholtage Berechtigung können im _Menü \> Bestellungen \> Abholtage wählen. Dort kannst du bei der jeweiligen Bestellung auf den _Download_*-Schalter drücken und zb. _Gruppen PDF_ wählen. Freischalten der Funktion Abholtage für eine FoodCoop (Untermenü Bestellungen)
- Es gibt unter _Menü \> Administration \> Arbeitsgruppen_die Möglichkeit einer Arbeitsgruppe die Berechtigung Abholtage zu erteilen. Bitte beachte dass Berechtigungen nur von Admins vergeben werden können. 
- Alternativ kann die Berechtigung über Administration \> Einstellungen \> Sicherheit \> Jedes Mitglied der Foodcoop hat automatisch Zugriff auf folgende Bereiche: Abholtage auch für alle Mitglieder gesetzt werden.


### Finanzen

Zeigt das gesamte Menü Finaznen an, schließt Rechnungen mit ein.

Berechtigt zu:
- Foodsoft Transaktionen erstellen
- Importiertes Bankkonto anzeigen
- Bestellungen abrechnen


### Rechnungen

Zeigt den Menüpunkt „Finanzen \> Rechnungen“ an. Ohne die zusätzliche Berechtigung „Finanzen“ wird sonst kein Menüpunkt des Finanzen-Menüs angezeigt.

Rechnungen zu Bestellungen können angelegt werden, aber Bestellungen können nicht angepasst oder abgerechnet werden.

### Administration

Zeigt das Menü „Adminstration“ an.

Berechtigt zu:
- Mitgliederverwaltung
  - Mitglieder anlegen und löschen
  - Mitglieder Telefon und Emaildaten unter Foodcoop \> Mitglieder anzeigen, auch wenn diese in ihrem Profil unter Privatsphäre „sichtbar“ nicht angewählt haben
  - Bestellgruppen anlegen und löschen
  - Arbeitsgruppen anlegen und bearbeiten
  - Nachrichtengruppen anlegen und bearbeiten

- Einstellungen in der Foodsoft vornehmen
  - Finanzen: Transaktionsklassen und -typen erstellen und bearbeiten
  - Links
  - Einstellungen: 

Dieses Berechtigung sollte aufgeteilt werden in „Mitgliederverwaltung“ und „Einstellungen“, siehe auch: [*https://github.com/foodcoops/foodsoft/issues/825*](https://github.com/foodcoops/foodsoft/issues/825)

## Beispiele für typische Aufgaben und Berechtigungen

- Regelmäßig wiederkehrende Bestellungen anlegen: 
  - Bestellungen 
  - Für Lagerbestellungen: Lieferanten oder Artikeldatenbank
- LieferantInnen Betreuung durch FC Mitglieder: Lieferantin und Artikel anlegen/aktualisieren, Bestellungen anlegen und annehmen (anpassen an tatsächlich gelieferte Mengen), Rechnungen der Lieferantin in die Foodsoft eingeben
  - Lieferanten, Artikel, Bestellung, Abholtage, Rechnungen 
- ProduzentInnen, die selber Zugriff auf die Foodsoft haben sollen, um dort ihre Artikel zu aktualisieren und Bestellungen anzulegen: 
  - Lieferanten, Artikel, Bestellung
- Bestellungen abrechnen: Bestellungen anpassen an tatsächlich gelieferte Mengen, Ausgleichstransaktionen bei abweichenden Gewichten/Preisen
  - Finanzen
- Mitglieder Betreuung
  - Administration: Mitglieder und Bestellgruppen Verwalten
  - Finanzen: Guthaben manuell aufladen bei Neumitgliedern, Guthaben entleeren bei Austritten, Mitgliedsbeiträge abbuchen
- Finanzteam mit Zugriff aus Foodcoop-Bankkonto
  - Finanzen: Bankkontodaten importieren, Rechnungen bezahlen,
        manuelle Transkationen Guthaben Bestellgruppen 

# Arbeitsgruppen

# Nachrichtengruppen



