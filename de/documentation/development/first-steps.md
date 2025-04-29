---
title: Erste Schritte
description: Foodsoft Installation und Entwicklung
published: true
date: 2025-04-29T07:13:46.511Z
tags: 
editor: markdown
dateCreated: 2021-10-01T12:20:11.258Z
---

Die Foodsoft ist eine frei zugängliche Software, geschrieben in der Sprache Ruby basierend auf Rails. Die Quelltexte dafür sind auf der Web-Plattform Github öffentlich zugänglich. 

# Github Repositories

Über diese Plattform kannst du 
- die Foodsoft herunterladen, um sie 
  - auf deinem Rechner lokal zu installieren, um sie dort auszuprobieren oder auch Änderungen im Quelltext durchzuführen und sie zu testen
  - auf einem Webserver zu installieren, um sie den Mitgliedern deiner Foodcoop zugänglich zu machen
- Issues einbringen, wenn du auf Fehler (Bugs) draufgekommen bist, oder dir neue Funktionen wünscht, und auch  Issues von anderen einsehen und kommentieren (z.B. in der Art wie: ja das ist für mich auch relevant)
-  Von dir modifizierte oder neu geschriebene Quellcodes für Änderungs- und Erweiterungsvorschläge hochladen (Pull Requests), die dann hoffentlich von den anderen für gut geheißen werden, sodass sie „commited“ werden und damit offiziell Teil der Foodsoft werden

Folgende Links führen zu den Github Repositories:
- https://github.com/foodcoops/foodsoft – der Hauptzweig der Foodsoft. Sobald du dich registrierst und selbst Änderungen durchführst, solltest du einen Fork für deine Änderungen anlegen, der dann unter https://github.com/DEIN_GITHUB_BENUTZERNAME/foodsoft erreichbar ist.
   - Dokumentation zur Foodsoft Entwicklung: https://github.com/foodcoops/foodsoft/tree/master/doc
- https://github.com/foodcoopsat/foodsoft – eine Abspaltung („Fork“) des Hauptzweigs, der den Stand der Foodsoft am IG Foodcoops Server (https://app.foodcoops.at/...) wiederspiegeln sollte. Manche Erweiterungen sind hier für die österreichischen Foodcoops integriert, die für Foodcoops in anderen Ländern nicht „relevant“ sind.
- https://github.com/bankproxy - Erweiterung für Bankanbindung österreichische Banken
# Installation der Foodsoft

## Anleitungen auf Github

> Die Installation über [Docker](https://de.wikipedia.org/wiki/Docker_(Software)) erfordert weniger Schritte und Vorkenntnisse, und ist daher einfacher durchzuführen als das manuelle Setup. 
{.is-info}

- [Foodsoft setup manuell](https://github.com/foodcoops/foodsoft/blob/master/doc/SETUP_DEVELOPMENT.md)
- [Foodsoft setup Docker](https://github.com/foodcoops/foodsoft/blob/master/doc/SETUP_DEVELOPMENT_DOCKER.md)
{.links-list}


## Ergänzende Hinweise zur Installation

- Wenn ein Schritt nicht klappt, einen Neustart des Computers versuchen, z.B. nach  Installation der Docker Software.
- Vor dem Download deines Foodsoft Branches *Fetch Upstream > Fetch and Merge* ausführen, um alle Dateien deines Branches auf den aktuellsten Stand zu bringen. Mit veralteten Dateien kann es zu Fehlern bei der Installation kommen.
- Deinen Branch der Foodsoft herunterladen mit `git clone https://github.com/YOUR_USERNAME/foodsoft.git`; es entsteht im aktuellen Verzeichnis ein Verzeichnis `foodsoft`, das alle benötigten Dateien enthält.
- Wenn es mit deinem Branch nicht klappt, kannst du auch den Foodsoft-Master als ZIP Datei herunterladen und entpacken. Lokal durchgeführte Änderungen im Code können dann allerdings nicht mehr so einfach auf Github hochgeladen werden.
- Vor der Installation der Foodsoft (egal ob manuell oder über Docker) nach dem Download in das Verzeichnis wechseln: `cd foodsoft` bzw. `cd foodsoft-master`
- Foodsoft starten: 
  - manuelle Installation:  `bundle exec rails s`
  - Docker: `docker-compose -f docker-compose-dev.yml up`
  - Webbrowser: in beiden Fällen URL `http://localhost:3000/` öffnen, User: admin, Password: secret

## Datenbank importieren

Wenn du ein Abbild deiner Foodsoft-Datenbank als `datenbank.sql` Datei hast, kannst du es in deine lokale Installation einpielen:
- nach manueller Installation der Foodsoft und bei Verwendung einer mysql Datenbank: `mysql –u root –p foodsoft_development < datenbank.sql`
- Foodsoft Installation über Docker: ... (noch zu beschreiben) ...

<!--
## Anleitung für Ubuntu Linux über Docker

> Diese Anleitung ist möglicherweise unvollständig und wurde schon länger nicht mehr getestet.
{.is-warning}


### Installation
1. Docker Engine installieren:  https://docs.docker.com/engine/install/ubuntu/ 
2. Docker Compose installieren: https://docs.docker.com/compose/install/ > Linux (Aktuelle Version 1.28 oder ähnlich ist höher als erforderliche Version 1.4)
3. Docker so konfigurieren, dass es die nötigen Berechtigungen hat: https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user 
4. Computer neu starten, damit Änderungen wirksam werden, zum Testem `docker run hello-world` ausführen, es dürfen keine Fehlermeldungen kommen 
5. Github installieren mit `sudo apt-get install git`, siehe auch https://git-scm.com/download/linux 
<!---
# Nokogiri needs libxml2 and libxslt: https://stackoverflow.com/questions/25963315/nokogiri-installation-failes-on-elastic-beanstalk
sudo snap install libxslt
sudo apt-get install libxml2 
# libxml2 ist schon die neueste Version (2.9.10+dfsg-5ubuntu0.20.04.1).

# Gemfile changed: https://stackoverflow.com/questions/66919504/your-bundle-is-locked-to-mimemagic-0-3-5-but-that-version-could-not-be-found
bundle install --no-deployment 

# can't find header files for ruby at /usr/lib/ruby/include/ruby.h
# You might have to install separate package for the ruby development
# environment, ruby-dev or ruby-devel for example.
sudo apt-get install ruby-dev
sudo gem install nokogiri -v '1.10.10' --source 'https://rubygems.org/'
bundle install --no-deployment

sudo apt-get install magic
sudo gem install ruby-filemagic -v '0.7.2' --source 'https://rubygems.org/'
Building native extensions. This could take a while...
ERROR:  Error installing ruby-filemagic:
	ERROR: Failed to build gem native extension.

    current directory: /var/lib/gems/2.7.0/gems/ruby-filemagic-0.7.2/ext/filemagic
/usr/bin/ruby2.7 -I /usr/lib/ruby/2.7.0 -r ./siteconf20211128-45197-1g8m0o0.rb extconf.rb
checking for -lgnurx... no
checking for magic_open() in -lmagic... no
*** ERROR: missing required library to compile this module
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of necessary
libraries and/or headers.  Check the mkmf.log file for more details.  You may need configuration options.
-- >
6. Auf Github registrieren: Grundsätzlich kannst du dir den Quelltext mit „Download“ auch einfach herunterladen, um die Foodsoft lokal bei dir zu installieren. Sobald du jedoch veränderte Quellcodes wieder auf Github hochladen möchtest, kommt es zu  Problemen, wenn die Foodsoft in der Zwischenzeit durch andere auf Github verändert wurde. Daher zahlt es sich aus, den Quellcode gleich ordentlich „abzuzweigen“, sodass dann zu einem späteren Zeitunkt auch wieder ein reibungsloses Hochladen von Änderungen (push) möglich ist.
7. Fork erzeugen: diese sollte dann über `https://github.com/YOUR_USERNAME/oodsoft.git` ansprechbar sein
8. Fork der Foodsoft herunterladen mit `git clone https://github.com/YOUR_USERNAME/foodcoops/foodsoft.git`
9. Docker Compose aus dem Verzeichnis `foodsoft` aufrufen (dort befindet sich die Datei `docker-compose-dev.yml`), wie unter Setup beschrieben: https://github.com/foodcoops/foodsoft/blob/master/doc/SETUP_DEVELOPMENT_DOCKER.md 
     - `docker-compose -f docker-compose-dev.yml up -d mariadb`
     - `docker-compose -f docker-compose-dev.yml run --rm foodsoft bundle install`
> Hier kommt es zu Warnungen und anschließend zu einer Fehlermeldung bei mir (Mirko, 28.11.2021): 
{.is-danger}

```
Step 9/13 : RUN bundle config build.nokogiri "--use-system-libraries" &&     bundle install --frozen -j 4
 -- -> Running in 48e2f58af9a7
Warning: the running version of Bundler (1.17.2) is older than the version that created the lockfile (1.17.3). We suggest you upgrade to the latest version of Bundler by running `gem install bundler`.
Fetching gem metadata from https://rubygems.org/........
Your bundle is locked to mimemagic (0.3.5), but that version could not be found
in any of the sources listed in your Gemfile. If you haven't changed sources,
that means the author of mimemagic (0.3.5) has removed it. You'll need to update
your bundle to a version other than mimemagic (0.3.5) that hasn't been removed
in order to install.
ERROR: Service 'foodsoft' failed to build : The command '/bin/sh -c bundle config build.nokogiri "--use-system-libraries" &&     bundle install --frozen -j 4' returned a non-zero code: 16
```

     - `docker-compose -f docker-compose-dev.yml run --rm foodsoft bundle exec rake  foodsoft:setup_development_docker`
     - `docker-compose -f docker-compose-dev.yml run --rm foodsoft bundle exec rake db:schema:load db:seed:small.en`

### Lokale Instanz starten
1. Foodsoft „lokalen Server starten“: `docker-compose -f docker-compose-dev.yml up`
2. Falls es beim ersten Mal nach der Installation zu Fehlermeldungen kommt, den Computer neu starten und Schritt 1 wiederholen
3. Aufruf der lokalen Instanz im Webbrowser:  http://localhost:3000 
4. Anmelden mit Benutzer `admin` und Passwort `secret`

### Github mit SSH-Verbindung einrichten
1. https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh 
2. https://docs.github.com/en/github/using-git/changing-a-remotes-url#switching-remote-urls-from-https-to-ssh 
-->

# Ruby on Rails 
Allgemeine Einführungen zum Ruby Framework für Web-Applikationen:
- https://www.tutorialspoint.com/ruby-on-rails/rails-introduction.htm 
- Ruby in 20 Minutes: https://www.ruby-lang.org/en/documentation/quickstart/  
# Verwendete Tools

- **Ransack** enables the creation of both simple and advanced search forms for your Ruby on Rails application: https://github.com/activerecord-hackery/ransack/blob/master/README.md
- **Simple Form** aims to be as flexible as possible while helping you with powerful components to create your forms: https://github.com/heartcombo/simple_form


# Foodsoft Daten Struktur

https://github.com/foodcoop-adam/foodcoop-adam.github.io/blob/developer-docs/design_diagrams/201404-generated_erd_v3.pdf

# Foodsoft Dateistruktur

https://github.com/foodcoops/foodsoft/ 

Wo ist im Code was zu finden? 
- Datenbank Spezifikationen: app/models/...
  - Zeichenanzahl  Begrenzungen für Eingabefelder
  - Überprüfungen von Eingaben: z.B. unique (Name darf nur einmal vergeben werden, z.B. bei Artikelnamen)
- Übersetzungstexte für deutsche Foodsoft Version bearbeitbar über
  - https://crowdin.com/translate/foodsoft/ - wird nur 1-2 mal im Jahr übernommen, wenn ein „echtes Release“ herauskommt
  - `config/locales/de.yml` 

> Hier nur ein Auszug, bitte gerne erweitern!
{.is-danger}

# API 

Über das API können sich externe Anwendungen mit der Foodsoft verbinden und Daten austauschen bzw. Aktionen in der Foodsoft durchführen. 

## API V1
- https://raw.githubusercontent.com/foodcoops/foodsoft/master/doc/swagger.v1.yml

Query-Strings Beschreibung:
https://github.com/activerecord-hackery/ransack

Oauth2 Zugang zur Foodsoft einrichten:
- https://app.foodcoops.at/...foodcoop.../oauth/applications
- https://app.foodcoops.at/demo/oauth/applications
- http://localhost:3000/f/oauth/applications

## Beispiel-Codes

> Kommt sobald verfügbar...
{.is-danger}
