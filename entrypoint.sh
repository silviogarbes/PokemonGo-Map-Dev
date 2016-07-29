#!/bin/sh
cd PokemonGo-Map
git pull
pip install -r requirements.txt
python runserver.py --host 0.0.0.0 -a google -u "pokemonemail74@gmail.com" -p "2l2VP20Js8" -l "429 Castro St, San Francisco, CA 94114" -st "10" -k "AIzaSyCOnqAeccvKvgHJ7sJKCHB_CBbeL7qkF_w" --port 80 -sd 10 "$@"
#python runserver.py --host 0.0.0.0 -a google -u "pokemonemail74@gmail.com" -p "2l2VP20Js8" -l "429 Castro St, San Francisco, CA 94114" -st "10" -k "AIzaSyCOnqAeccvKvgHJ7sJKCHB_CBbeL7qkF_w" --port 80 -sd 10 --db-type "mysql" --db-name "pokemongo" --db-user "root" --db-pass "senha" --db-host "127.0.0.1" "$@"
