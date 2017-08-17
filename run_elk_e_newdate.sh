curl -XPOST http://127.0.0.1:9200/logstash-2017.08.17/testlog -d '{
    "date" : "1502959416393",
    "user" : "003",
    "mesg" : "third message into Elasticsearch"
}'


curl -XPOST http://127.0.0.1:9200/logstash-2017.08.17/testlog -d '{
    "date" : "1502959426393",
    "user" : "004",
    "mesg" : "four message into Elasticsearch"
}'


curl -XPOST http://127.0.0.1:9200/logstash-2017.08.17/testlog -d '{
    "date" : "1502959526393",
    "user" : "005",
    "mesg" : "005 message into Elasticsearch"
}'

curl -XPOST http://127.0.0.1:9200/logstash-2017.08.17/testlog -d '{
    "date" : "1502959526393",
    "user" : "006",
    "mesg" : "006 message into Elasticsearch"
}'