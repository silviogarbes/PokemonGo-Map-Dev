#!/bin/sh
cd PokemonGo-Map
git pull
python runserver.py --host 0.0.0.0 "$@"
