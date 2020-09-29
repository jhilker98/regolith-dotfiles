#!/usr/bin/env python3
import json
import os

path = os.environ['HOME'] + '/Dropbox/.taskbook/storage/storage.json'
file = open(path, 'r')
data = json.loads(file.read())
for _, v in data.items():
    if v['_isTask']:
        if v['isComplete']:
            print(f'🗹  {v["_id"]} {v["description"]}')
        else:
            print(f'☐  {v["_id"]} {v["description"]}')
