# Tester-metro-bordeaux

## Présentation du projet

Dans le cadre de son projet de mobilité devant répondre à la forte augmentation du nombre d'usagers des transports en commun d'ici 2030-2035, l'association Métro de Bordeaux a mis en place un calculateur d'itinéraires afin de permettre de tester ses propositions.

Pour plus d'informations sur le projet, merci de vous référer à la page suivante : https://www.metrobordeaux.fr/projet

Le calculateur est basé sur la solution [Open Trip Planner (version 2)](https://github.com/opentripplanner/OpenTripPlanner)

Pour le front, le calculateur utilise le projet [Open Trip Planner React Redux](https://github.com/opentripplanner/otp-react-redux)

Le site est disponible à l'adresse suivante : https://www.metrobordeaux.fr/itineraires

## Source de données 

L'association a utilisé des données provenant de divers open data et a généré ses propres données lorsque cela était necessaire.

### Open data
Voici la liste complète des données de divers open data utilisée sur le projet
- les trams de la Métropole Bordelaise (source : https://opendata.bordeaux-metropole.fr/api/datasets/1.0/offres-de-services-bus-tramway-gtfs/attachments/keolis_tram_zip/)
- les bus de la Métropole Bordelaise (source : https://opendata.bordeaux-metropole.fr/api/datasets/1.0/offres-de-services-bus-tramway-gtfs/attachments/keolis_bus_zip/)
- les TERs de nouvelle aquitaine (source : https://eu.ftp.opendatasoft.com/sncf/gtfs/export-ter-gtfs-last.zip)
- les autocars de nouvelle aquitaine (source : https://www.pigma.org/public/opendata/nouvelle_aquitaine_mobilites/publication/gironde-aggregated-gtfs.zip)
Le script d'import supprime la liane 9 dans le GTFS des bus de TBM. Il devra à terme supprimer le BHNS de St Aubin (remplacé par la version de l'association) ainsi que la liane 3.

### Les données créées par Métro de Bordeaux
L'association a généré les TCHNS suivants :
- la ligne de métro de l'association (source : https://github.com/Metro-Bordeaux/Metro-ligne-de-l-association)
- un BHNS (bus express) sur les Boulevards (source : https://github.com/Metro-Bordeaux/BHNS-Boulevard)
- un ensemble de BHNS à gradignan (source : https://github.com/Metro-Bordeaux/BHNS-Gradignan)
- un BHNS Saint Aubin de Médoc - Bordeaux Gambetta (source : https://github.com/Metro-Bordeaux/BHNS-Saint-Aubin-Gambetta)
