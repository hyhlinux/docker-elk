# https://github.com/elastic/elasticsearch-docker
#FROM elasticsearch:5.5.2-alpine
FROM docker.elastic.co/elasticsearch/elasticsearch:5.5.2

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
# RUN elasticsearch-plugin install x-pack
ADD x-pack/x-pack-5.5.2.jar /usr/share/elasticsearch/plugins/x-pack/x-pack-5.5.2.jar
