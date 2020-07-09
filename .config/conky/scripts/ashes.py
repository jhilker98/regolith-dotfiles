#!/usr/bin/env python3

import json
import os

path = os.environ['HOME'] + '/Dropbox/.taskbook/storage/storage.json'
file = open(path, 'r')
data = json.loads(file.read())
for _, v in data.items():
    if v['_isTask'] and v['boards'][0].replace('@','') == 'NaNoWriMo': 
        if not v['isComplete']:
            if v['inProgress']:
                print(f'  {v["_id"]:02}. ' + '${color4}${color}  ' + f'{v["description"]}')
                #print('  ${color4}${color}  ' + f'{v["description"]}.')
            else:
                print(f'  {v["_id"]:02}. ' + '${color1}${color}  ' + f'{v["description"]}')
                #print('  ${color1}${color}  ' + f'{v["description"]}.')
file.close()
