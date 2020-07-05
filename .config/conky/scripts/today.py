#!/usr/bin/env python3

HIGH = '${color1}${color}'
LOW = '${color4}${color}'
import json
import requests
from datetime import datetime
import numpy as np
forecast = requests.get('http://wttr.in?format=j1')
forecast = json.loads(forecast.content.decode('utf-8'))
weather = forecast['weather']

# Convert the date strings from weather json into the
today = datetime.strptime(weather[0]['date'], "%Y-%m-%d")
tomorrow = datetime.strptime(weather[1]['date'], "%Y-%m-%d")
next_day = datetime.strptime(weather[2]['date'], "%Y-%m-%d")

# Get the current condition and what it feels like
current_temp = forecast['current_condition'][0]['FeelsLikeF']
# current_temp = '${color3}'+current_temp+'${color}'
current_condition = forecast['current_condition'][0]['weatherDesc'][0]['value'].lower()

# Get the max temp
max_temp = [max_temp['maxtempF'] for max_temp in weather]
min_temp = [min_temp['mintempF'] for min_temp in weather]

# Change the date format
today = today.strftime("%d %b")
tomorrow = tomorrow.strftime("%d %b")
next_day = next_day.strftime("%d %b")

# Go ahead and get the highest chance of rain for the day
td_rc = 0
td = weather[0]['hourly']
for hour in range(0, 8):
    if int(td[hour]['chanceofrain']) > td_rc:
        td_rc = int(td[hour]['chanceofrain'])

tm_rc = 0
tm = weather[1]['hourly']
for hour in range(0, 8):
    if int(tm[hour]['chanceofrain']) > tm_rc:
        tm_rc = int(td[hour]['chanceofrain'])

nd_rc = 0
nd = weather[2]['hourly']
for hour in range(0, 8):
    if int(nd[hour]['chanceofrain']) > nd_rc:
        nd_rc = int(nd[hour]['chanceofrain'])


# Get Conditions
td_cond = np.array([])
for num in range(0, 8):
    td_cond = np.append(
        td_cond, weather[0]['hourly'][num]['weatherDesc'][0]['value'].lower()
    )
tdcnd, td_cond_cnt = np.unique(td_cond, return_counts=True)
tdct = np.argsort(-td_cond_cnt)


tm_cond = np.array([])
for num in range(0, 8):
    tm_cond = np.append(
        tm_cond, weather[0]['hourly'][num]['weatherDesc'][0]['value'].lower()
    )
tmcnd, tm_cond_cnt = np.unique(tm_cond, return_counts=True)
tmct = np.argsort(-tm_cond_cnt)

nd_cond = np.array([])
for num in range(0, 8):
    nd_cond = np.append(
        td_cond, weather[0]['hourly'][num]['weatherDesc'][0]['value'].lower()
    )
ndcnd, nd_cond_cnt = np.unique(td_cond, return_counts=True)
ndct = np.argsort(-nd_cond_cnt)

## Print Info
# print(f'{today}: {HIGH} {max_temp[0]}°F/{min_temp[0]}°F {LOW}, {td_rc}% rain chance')
# print(f'{tomorrow}: {HIGH} {max_temp[1]}°F/{min_temp[1]}°F {LOW}, {tm_rc}% rain chance')
# print(f'{next_day}: {HIGH} {max_temp[2]}°F/{min_temp[2]}°F {LOW}, {nd_rc}% rain chance')

# print(f'Currently it is {current_temp}°F and {current_condition}.')
# print(f'{today}: {tdcnd[tdct][0]}, {HIGH} {max_temp[0]}°F/{min_temp[0]}°F {LOW}')
# print(f'{tomorrow}: {tmcnd[tmct][0]}, {HIGH} {max_temp[1]}°F/{min_temp[1]}°F {LOW}')
# print(f'{next_day}: {ndcnd[ndct][0]}, {HIGH} {max_temp[2]}°F/{min_temp[2]}°F {LOW}')

tab = '                                '
print(f'{tab}{today}: {HIGH} {max_temp[0]}°F/{min_temp[0]}°F {LOW}')

