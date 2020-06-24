#!/usr/bin/env python3
import json
import os

path = os.environ['HOME'] + '/Dropbox/.taskbook/storage/storage.json'
file = open(path, 'r')
data = json.loads(file.read())

boards = []

boards.extend(
    [v['boards'][0] for _, v in data.items() if v['boards'][0] not in boards])
boards = sorted(set(boards))
for board in boards:
    print(f'\n{board}'.replace("@",""), )
    for _, v in data.items():
        if v['boards'][0] == board:
            if v['_isTask']:
                is_complete = ['    ' if v['isComplete'] else '   ' if v['inProgress']else '   ']
                print(f'{is_complete[0]} {v["description"]}')
