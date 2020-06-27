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
for board in boards:
    print('${color4}' + f'\n{board}'.replace('@','') + '${color}')
    for _, v in data.items():
        timestamp = int(v['_timestamp']) / 1000
        date = datetime.fromtimestamp(timestamp).strftime('%Y%m%d')
        today = datetime.now().strftime('%Y%m%d')
        days = int(today) - int(date)
        days_ago = (
            '${color8}' + f'{str(timedelta(days=days).days)}d' + '${color}'
            if days > 0
            else '${color8}today${color}'
        )
        if v['boards'][0] == board:
            is_starred = '${color3}六${color}' if v['isStarred'] else ''
            print(
                f'   {v["_id"]}. {"${color2} ${color} " if v["isComplete"] else "${color1} ${color} "} {v["description"]} {days_ago} {is_starred}'
                if v["_isTask"]
                else f'{v["_id"]}. '
                + "${color6} ${color} "
                + f'{v["description"]} {days_ago} {is_starred}'
            )
file.close()

