---
title: Benutzerinnenverwaltung 
description: Foodsoft Menü "Administration": Benutzerinnen, Bestellgruppen, Arbeitsgruppen, Nachrichtengruppen
published: true
date: 2021-05-14T22:50:45.766Z
tags: 
editor: markdown
dateCreated: 2021-04-21T00:39:19.334Z
---


<h1 id="benutzendeverwaltung-uebersicht" class="toc-header"><a class="toc-anchor" href="#benutzendeverwaltung-uebersicht"></a>Übersicht</h1>

<h1 id="benutzendeverwaltung" class="toc-header"><a class="toc-anchor" href="#benutzendeverwaltung"></a>Benutzerinnen</h1>

<h1 id="bestellgruppen" class="toc-header"><a class="toc-anchor" href="#bestellgruppen"></a>Bestellgruppen</h1>

<h2 id="bestellgruppen-erstellen" class="toc-header"><a class="toc-anchor" href="#bestellgruppen-erstellen"></a>Bestellgruppe erstellen und bearbeiten</h2>

Mitgliedsbeitrag: negative Zahl eingeben. Siehe eigener Abschnitt “Mitgliedsbeiträge”.

Pausieren von/bis: hat nur Notiz-Charakter, d.h. es kann jeweils ein Datum eingegeben werden, es verändert sich dadurch aber nichts für das Mitglied (z.B. kann das Mitglied auch in der Pause Guthaben aufladen und bestellen, und es wird ihm ein Mitgliedsbeitrag verrechnet, wenn dieser nicht während der Pause händisch auf 0 gesetzt wird).

Mitglieder entfernen aus Bestellgruppe: 
1. Benutzername(n) notieren
2. Benutzer aus Bestellgruppe entfernen 
3. Notierte Benutzer löschen


<h2 id="bestellgruppen-loeschen" class="toc-header"><a class="toc-anchor" href="#bestellgruppen-loeschen"></a>Bestellgruppe löschen</h2>

…

Kontoauszug und Kontostand einer gelöschten Bestellgruppe anzeigen:
siehe [Foodsoft-Kontoauszüge anzeigen](#anchor-139)

<h1 id="bestellgruppenberecht" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht"></a>Berechtigungen</h1>

<h2 id="bestellgruppenberecht-setzen" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-setzen"></a>Berechtigungen setzen</h2>

Berechtigungen können entweder über Adminstration \> Arbeitsgruppen oder pauschal für alle Mitglieder über Administration \> Einstellungen \> Sicherheit \> Zugriff auf gesetzt werden. Es ist nicht möglich, Berechtigungen nur für einzelne Mitglieder zu setzen, sondern es ist immer erforderlich, eine Arbeitsgruppe anzulegen, dieser Berechtigungen zu vergeben, und anschließend dieser Arbeitsgruppe Mitglieder zuzuweisen. Eine Arbeitsgruppe kann kein, eines oder beliebig viele Mitglieder enthalten. Mitglieder können in beliebig vielen Arbeitsgruppen Mitglied sein. Beispiele siehe ...

<h2 id="bestellgruppenberecht-anzeigen" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-anzeigen"></a>Berechtigungen anzeigen</h2>

- Adminstration \> Arbeitsgruppen \> Arbeitsgruppe auswählen, um Mitglieder anzuzeigen
- Adminstration \> Benutzer/innen: für jede Benutzerin werden die Berechtigungen durch entsprechende Symbole angezeigt. Für die Bedeutung der Symbole mit der Maus über das Symbol fahren, es wird der entsprechene Text eingeblendet.

<h2 id="bestellgruppenberecht-arten" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-arten"></a>Arten von Berechtigungen</h2>

<h3 id="bestellgruppenberecht-arten-lieferanten" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-arten-lieferanten"></a>Lieferanten</h3>

Menü „Artikel“ wird angezeigt, kann Lieferanten, Lager und Lagerartikel einsehen und bearbeiten, jedoch nicht die Artikel der Lieferanten einsehen: Link auf Artikel bei Lieferanten scheint zwar auf, aber beim Anklicken kommt Hinweis: keine Berechtigung

<h3 id="bestellgruppenberecht-arten-artikeldb" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-arten-artikeldb"></a>Artikeldatenbank (Artikel)</h3>

Wird als Berechtigung „Artikel“ angezeigt, beim Einstellen heißt die Berechtigung „Artikeldatenbank“. Menü „Artikel“ wird angezeigt, alle Unterpunkte können eingesehen und bearbeitet werden, auf Lieferanten (schließt Berechtigung Lieferanten mit ein).

...


<h3 id="bestellgruppenberecht-arten-bestverw" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-arten-bestverw"></a>Bestellverwaltung (Bestellung)</h3>

Wird als Berechtigung „Bestellung“ angezeigt, beim Einstellen heißt die Berechtigung „Bestellverwaltung“.

Kann Bestellungen anlegen, bearbeiten und in Empfang nehmen.

Achtung, für das Anlegen einer Lagerbestellung ist zumindest die Berechtigung „Lieferanten“ erforderlich, oder „Artikel(datenbank)“.

<h3 id="bestellgruppenberecht-arten-abholtage" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-arten-abholtage"></a>Abholtage</h3>

Mitglieder mit Abholtage Berechtigung können im _Menü \> Bestellungen \> Abholtage wählen. Dort kannst du bei der jeweiligen Bestellung auf den _Download_*-Schalter drücken und zb. _Gruppen PDF_ wählen. Freischalten der Funktion Abholtage für eine FoodCoop (Untermenü Bestellungen)
- Es gibt unter _Menü \> Administration \> Arbeitsgruppen_die Möglichkeit einer Arbeitsgruppe die Berechtigung Abholtage zu erteilen. Bitte beachte dass Berechtigungen nur von Admins vergeben werden können. 
- Alternativ kann die Berechtigung über Administration \> Einstellungen \> Sicherheit \> Jedes Mitglied der Foodcoop hat automatisch Zugriff auf folgende Bereiche: Abholtage auch für alle Mitglieder gesetzt werden.


<h3 id="bestellgruppenberecht-arten-finanzen" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-arten-finanzen"></a>Finanzen</h3>

Zeigt das gesamte Menü Finaznen an, schließt Rechnungen mit ein.

Berechtigt zu:
- Foodsoft Transaktionen erstellen
- Importiertes Bankkonto anzeigen
- Bestellungen abrechnen


<h3 id="bestellgruppenberecht-arten-rechnungen" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-arten-rechnungen"></a>Rechnungen</h3>

Zeigt den Menüpunkt „Finanzen \> Rechnungen“ an. Ohne die zusätzliche Berechtigung „Finanzen“ wird sonst kein Menüpunkt des Finanzen-Menüs angezeigt.

Rechnungen zu Bestellungen können angelegt werden, aber Bestellungen können nicht angepasst oder abgerechnet werden.

<h3 id="bestellgruppenberecht-arten-administration" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-arten-administration"></a>Administration</h3>

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

<h2 id="bestellgruppenberecht-beispiele" class="toc-header"><a class="toc-anchor" href="#bestellgruppenberecht-beispiele"></a>Beispiele für typische Aufgaben und Berechtigungen</h2>
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

<h1 id="benutzverwarbeitsgruppen" class="toc-header"><a class="toc-anchor" href="#benutzverwarbeitsgruppen"></a>Arbeitsgruppen</h1>

<h1 id="benutzverwnachrgruppen" class="toc-header"><a class="toc-anchor" href="#benutzverwnachrgruppen"></a>Nachrichtengruppen</h1>


