#!/usr/bin/env python3
import json
import os
import random
import textwrap

path = os.environ['HOME'] + '/.config/conky/scripts/quotes.json'
file = open(path, 'r')
data = json.loads(file.read())
quote = random.choice(data)
author = quote['author']
print('${font} '
    + f'{textwrap.fill(quote["quote"], 52)} '
    + '${font}'
    + '\n   - ${font Iosevka Nerd Font:italic:size=11}'
    + '${color7}'
    + f'{author}'
    + '${font}'
    + '${color}'
)
