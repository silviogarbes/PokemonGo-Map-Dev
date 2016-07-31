FROM python:2.7-alpine
RUN apk update
RUN apk add git py-pip gcc build-base python-dev nodejs
RUN apk add --no-cache ca-certificates
RUN git clone https://github.com/AHAAAAAAA/PokemonGo-Map.git -b develop
RUN pip install -r /PokemonGo-Map/requirements.txt
RUN npm install -g grunt-cli
RUN npm install
RUN npm run-script build 
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
