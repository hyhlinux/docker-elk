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


PUBLISH logstash-2 '{"message":"hello009 world","@version":"1","@timestamp":"2016-08-09T16:34:21.865Z","host":"raochenlindeMacBook-Air.local","key1":"2016 huoyinghui"}'

PUBLISH logstash-2 '{"message":"hello009 world","@version":"1","@timestamp":"2017-08-09T16:34:21.865Z","host":"raochenlindeMacBook-Air.local","key1":"2017 huoyinghui"}'

PUBLISH logstash-2 '{"message":"hello009 world","@version":"1","@timestamp":"2018-08-09T16:34:21.865Z","host":"raochenlindeMacBook-Air.local","key1":"2018 huoyinghui", "key2":"key2"}'
