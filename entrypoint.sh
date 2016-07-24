#!/bin/sh
cd PokemonGo-Map
git pull
pip install -r requirements.txt
python runserver.py --host 0.0.0.0 "$@"
