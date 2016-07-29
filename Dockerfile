FROM 	alpine
RUN 	apk update
RUN 	apk add git py-pip gcc build-base python-dev npm
RUN   npm install --silent -g grunt-cli bower
RUN 	git clone https://github.com/AHAAAAAAA/PokemonGo-Map.git -b develop
RUN 	pip install -r /PokemonGo-Map/requirements.txt
RUN   cd /PokemonGo-Map && grunt build
COPY	./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
