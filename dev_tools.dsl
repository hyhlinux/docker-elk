#ip 
GET /db_apkpure_log/event_download/_search
{
  "query": {
    "match": {
      "ip": "42.1.48.0"
    }
  }
}

#package_name
GET /db_apkpure_log/event_download/_search
{
  "query": {
    "match": {
      "package_name": "com.peacechurch.user.sahayamathachurch"
    }
  }
}


#sort
GET /db_apkpure_log/event_download/_search
{
  "query": {
    "match_all": {
    }
  },
  "sort":{
    "apk_type":{
      "order":"asc"
    }
  }
}

#mapping: get key type
GET /db_apkpure_log/_mapping

#craet my type
PUT /my_index/my_type/1
{
  "create_date": "2015/09/02"
}

#"type": "date"
GET /my_index/my_type/_mapping
#{
#  "my_index": {
#    "mappings": {
#       "my_type": {
#         "properties": {
#           "create_date": {
#             "type": "date",
# #             "format": "yyyy/MM/dd HH:mm:ss||yyyy/MM/dd||epoch_millis"
#           }
#         }
#       }
#     }
#   }
# }


#1.add_date ===> date

PUT /my_index2/my_type2/1
{
  "create_date": "2017-07-05 07:48:50"
}

GET /my_index2/my_type2/_mapping


#part5 search
#5.1 empty search
GET _search
#total": 2708 all doc

#timeout 
GET /_search?timeout=1ms

#page
GET /db_apkpure_log/_search?size=10
GET /db_apkpure_log/_search?size=5&from=5
GET /db_apkpure_log/_search?size=5&from=2700
DELETE db_apkpure_log/event_download/AV4HlnnELpLewZ6gEUUu


#all query
GET /_search?q=mary


#!package_name:com.*
GET db_apkpure_log/event_download/_search?q=package_name:com*
#"total": 2001,
GET db_apkpure_log/event_download/_search?q=!package_name:com*
#"total": 702,



#--------------P6
#index manage
DELETE /my_index2
DELETE /my_index
DELETE db_apkpure_log

#C
PUT /db_apkpure_log
GET db_apkpure_log/_mapping


#
#测试分析器， 查看分词效果
GET /_analyze?analyzer=standard&text="2017-06"
#{
#  "tokens": [
#    {
#      "token": "2017",
#      "start_offset": 1,
#      "end_offset": 5,
#      "type": "<NUM>",
#      "position": 0
#    },
#    {
#      "token": "06",
#      "start_offset": 6,
#      "end_offset": 8,
#      "type": "<NUM>",
#      "position": 1
#    }
#  ]
#}


# 自定义字段是否分词
PUT /gb/_mapping/tweet
{
  "properties" : {
    "tag" : {
      "type" :    "string",
      "index":    "not_analyzed"
    }
  }
}
GET /gb/_mapping
GET /gb/_analyze?field=tag&text=Black-cats
#{
#  "tokens": [
#    {
#      "token": "Black-cats",
#      "start_offset": 0,
#      "end_offset": 10,
#      "type": "word",
#      "position": 0
#    }
#  ]
#}

