#!/usr/bin/env python3

import json
import os
from datetime import datetime, timedelta

path = os.environ['HOME'] + '/Dropbox/.taskbook/storage/storage.json'
file = open(path, 'r')
data = json.loads(file.read())

boards = []
boards.extend([v['boards'][0] for _, v in data.items() if v['boards'][0] not in boards])
boards = sorted(set(boards))
    #print('${color9}' + f'\n{board}'.replace('@','') + '${color}')
for _, v in data.items():
    timestamp = int(v['_timestamp']) / 1000
    date = datetime.fromtimestamp(timestamp).strftime('%Y%m%d')
    today = datetime.now().strftime('%Y%m%d')
    days = int(today) - int(date)
    days_ago = (
            '${color3}' + f'{str(timedelta(days=days).days)}d' + '${color}'
            if days > 0
            else '${color3}today${color}'
            )

for board in boards:
    if v['boards'][0] == board:
        is_starred = '${color3}六${color}' if v['isStarred'] else ''
        #print('${color9}' + f'\n{board}'.replace('@','') + '${color}')


for _, v in data.items():
    if not v['isComplete']:
        if v["boards"][0] != board:
        
            board = v["boards"][0]
            print('${color9}' + f'\n{board}'.replace('@','') + '${color}')
        #board = v["boards"][0]
    
        #print("v boards 0 is {} and board is {}".format(v['boards'][0],board))
        if not v['inProgress']:
            check = '${color1}' + '' + '${color}'
            print(f'  {v["_id"]}. {check}  {v["description"]} {days_ago} {is_starred}')
        else:
            ellips = '${color7}' + '' + '${color}'
            print(f'  {v["_id"]}. {ellips}  {v["description"]} {days_ago} {is_starred}')
    else:
        pass
file.close()
