#!/usr/bin/env python3
 
import json
import os
from datetime import datetime, timedelta

path = os.environ['HOME'] + '/Dropbox/.taskbook/storage/storage.json'
file = open(path, 'r')
data = json.loads(file.read())


def time_ago(date):
    date_fmt = '%Y%m%d %H%M%S'
    date = datetime.strptime(date.strftime(date_fmt), date_fmt)
    today = datetime.strptime(datetime.now().strftime(date_fmt), date_fmt)
    time_ago = today - date
    days, hours = time_ago.days, time_ago.seconds // 3600
    return days, hours


dates = []
dates.extend([v['_date'] for _, v in data.items() if v['_date'] not in dates])
dates = sorted(set(dates))

date_count = 0
tasks_count = 0
for date in dates:
    tasks_count = 0
    day = '${font Iosevka:bold:italic:size=12}' + date + '${font}'
    if date_count < 4:
        print(f'\n{day}')
        date_count += 1
        for _, v in data.items():
            if v['_isTask'] and v['boards'][0].replace('@','') != 'NaNoWriMo': 
                ts_date = datetime.fromtimestamp(int(v['_timestamp']) / 1000)
                days, hours = time_ago(ts_date)
                days_ago = (
                    '${color3}' + f'{days}d {hours}h' + '${color}'
                    if days > 0
                    else '${color3}today${color}'
                )
                if tasks_count < 2:
                    if v['_date'] == date:
                        is_starred = '${color3}六${color}' if v['isStarred'] else ''
                        if v['_isTask']:
                            if not v['isComplete']:
                                if not v['inProgress']:
                                    print(
                                            f'  {v["_id"]:02}. '
                                        + '${color1}${color}  '
                                        + f'{v["description"]} {days_ago} {is_starred}'
                                    )
                                if v['inProgress']:
                                    print(f'  {v["_id"]:02}. ' + '${color4}${color}  ' + f'{v["description"]} {days_ago} {is_starred}')
                                tasks_count += 1
file.close()

