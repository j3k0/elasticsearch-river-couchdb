FROM dockerfile/elasticsearch:latest
MAINTAINER Jean-Christophe Hoelt <hoelt@fovea.cc>
COPY elasticsearch.yml /elasticsearch/config/elasticsearch.yml
RUN (cd /elasticsearch && ./bin/plugin -install elasticsearch/elasticsearch-river-couchdb/2.4.1)
