FROM node:0.12.13
MAINTAINER Jan Nonnen <helvalius@gmail.com>



# Define the OSM argument, use monaco as default
ARG OSM=http://download.geofabrik.de/europe/monaco-latest.osm.pbf

# Auxiliary folders
RUN mkdir -p /mnt/data/openstreetmap \
  & mkdir -p /tmp/openstreetmap \
  & mkdir -p /mnt/data/openaddresses \
  & mkdir -p /mnt/data/nls-places \
  & mkdir -p /mnt/data/geonames



# Download WOF
WORKDIR /mnt/data/
RUN git clone https://github.com/pelias/whosonfirst \
  && cd whosonfirst \
  && npm install

VOLUME ["/mnt/data/whosonfirst/data"]

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
