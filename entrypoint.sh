#!/bin/sh
cd PokemonGo-Map
git checkout /PokemonGo-Map/config/config.ini
git pull
pip install -r requirements.txt
python runserver.py --host 0.0.0.0 "$@"
