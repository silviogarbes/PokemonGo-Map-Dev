# POKEMAP
This is a Docker Image for https://github.com/AHAAAAAAA/PokemonGo-Map/tree/develop

## Examples
You can use all attributes from https://github.com/AHAAAAAAA/PokemonGo-Map/wiki/Usage

Simple Example:
- docker run -d scazadar/pokemap -a PTC -u <PTC Account> -p <password> -l "Stachus,Munich" -st 10 -P 80 -k <GoogleMaps API Key>

Multiple Docker containers with MySQL backend:
- Create [config.ini](https://github.com/AHAAAAAAA/PokemonGo-Map/blob/develop/config/config.ini.example)
- docker run -d --name Pokemap --link mysql:mysql -v config_stachus.ini:/PokemonGo-Map/config/config.ini scazadar/pokemap -se -L de
Starts second server without webserver:
- docker run -d --name Pokemap --link mysql:mysql -v config_marienplatz.ini:/PokemonGo-Map/config/config.ini scazadar/pokemap -se -L de -ns
