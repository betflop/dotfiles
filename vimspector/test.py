import json
import requests

for i in range(10):
    print(i)

for i in range(10):
    print(i)

for i in range(10):
    print(i)

def get_json(url):
    return json.loads(requests.get(url).text)
