import os
import datetime
import json
import time
import redis

r = redis.StrictRedis(host='localhost', port=6379, db=0)
# pb = r.pubsub()
# print(pb.subscribe(['foo', 'bar']))
# print(r.publish('foo', 'hello'))
# format = 'dd-MMM-yyyy HH-mm:ss Z'
# print(datetime.strptime())
# r.set('a', 'aa')
def get_timestamp():
    return time.strftime("%Y-%m-%dT%H:%M:%SZ", time.localtime(time.time()))

def main():
    print(r.get('a'))
    data = {
    "message":"hello",
    "@verison":1,
    "@timestamp": get_timestamp(),
    "host":"localhost",
    "key":"hello"
    }
    ch = 'logstash-2'
    # print(str(data))
    print(r.publish(ch, json.dumps(data)))
    for i in range(0, 10):
        time.sleep(1)
        data['key'] = "hello{}".format(i)
        data['@timestamp'] = get_timestamp()
        print(r.publish(ch, data))

if __name__ == '__main__':
    main()
