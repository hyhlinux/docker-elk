# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:5.5.1

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
ADD postgresql-42.1.4.jar /usr/share/logstash/postgresql-42.1.4.jar
RUN logstash-plugin install x-pack
RUN logstash-plugin install logstash-input-jdbc