FROM 	alpine
RUN 	apk update && \
    	apk add git py-pip gcc build-base python-dev
RUN 	git clone https://github.com/AHAAAAAAA/PokemonGo-Map.git -b develop
RUN 	pip install -r /PokemonGo-Map/requirements.txt
COPY	./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 80
