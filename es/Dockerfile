FROM elasticsearch:1.7
MAINTAINER Jan Nonnen <helvalius@gmail.com>

# Finalize elasticsearch installation
ADD config/elasticsearch.yml /usr/share/elasticsearch/config/

RUN mkdir -p /var/lib/elasticsearch/pelias_data \
  && chown -R elasticsearch:elasticsearch /var/lib/elasticsearch/pelias_data

ENV ES_HEAP_SIZE 4g
