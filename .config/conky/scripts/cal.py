#!/usr/bin/env python3

import calendar
from datetime import date

today = date.today()
day = today.day
month = today.month
year = today.year
weekday = today.weekday()

cal = calendar.Calendar()
wh = calendar.weekheader(2).split(' ')
for i, h in enumerate(wh):
    print(
            '${font Iosevka Nerd Font:bold:size=12}${color3}' + h + '${color}${font}', end=' '
    ) if i == weekday else print('${font}${color8}' + h + '${color}${font}', end=' ')

for w in cal.monthdatescalendar(year, month):
    if today in w:
        print()
        for d in w:
            if d.day == day and d.month == month:
                print('${font Iosevka Nerd Font:bold:size=12}${color3}' + f'{d.day:2d}' + '${color}${font}', end=' ')
            else:
                print('${font}${color8}' + f'{d.day:2d}' + '${color}${font}', end=' ')

