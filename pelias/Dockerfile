FROM node:0.12.13
MAINTAINER Jan Nonnen <helvalius@gmail.com>

# Define the OSM argument, use monaco as default
ARG OSM=http://download.geofabrik.de/europe/monaco-latest.osm.pbf

# Auxiliary folders
RUN rm -rf /mnt \
  & mkdir -p /mnt/data/openstreetmap \
  & mkdir -p /tmp/openstreetmap \
  & mkdir -p /mnt/data/openaddresses \
  & mkdir -p /mnt/data/nls-places


# Download OpenStreetMap
WORKDIR /mnt/data/openstreetmap
RUN curl -sS -O $OSM

# Download WOF
WORKDIR /mnt/data/
RUN git clone https://github.com/pelias/whosonfirst \
  && cd whosonfirst \
  && npm install \
  && npm run download

WORKDIR /root

# Copying pelias config file
ADD pelias.json pelias.json

RUN  npm install -g pelias-cli

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
