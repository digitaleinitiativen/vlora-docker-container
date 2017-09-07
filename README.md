# thingslogic Docker Container

Für den Smart City Wettbewerb stellen wir einen Docker Container zusammen.


Im Rahmen des Smart City Wettbewerb wird das:

* Fipy
* The Things Work

Dieser beinhaltet:

* NodeRED
* CrateDB
* Grafana

* Fipy > The Things Network > NodeRed > CrateDB > Grafana


## Installation

* docker pull thingslogic-scd
* docker run thingslogic-scd


## Offene Fragen

* Ports exposen
* Daten persistieren
* Standard Datenbank Schema
* Standard Visualisierung
* Default Konfiguration


## Links

* https://www.thethingsnetwork.org/docs/applications/nodered/


## Todos

* [x] Container bauen
* [x] CrateDB konfigurieren (Ports exposen)
* Grafana konfigurieren (Ports exposen, Datenbankverbindung erstellen)
* NodeRed konfigurieren (Datenbankverbindung erstellen)
* CrateDB Standardtabelle erstellen
* The Things Network anbinden
* Daten persistieren
* Container auf Docker Hub publishen
