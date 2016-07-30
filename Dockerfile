FROM python:2.7-alpine
RUN  apk update
RUN  apk add --no-cache ca-certificates
RUN  apk add git py-pip gcc build-base python-dev nodejs
RUN  git clone https://github.com/AHAAAAAAA/PokemonGo-Map.git -b develop
RUN  pip install -r /PokemonGo-Map/requirements.txt
RUN  cd /PokemonGo-Map
RUN  npm install -g grunt-cli \
  && npm install \
  && npm run-script build 
#RUN  cd /PokemonGo-Map && grunt build
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
