#!/usr/bin/env python3
import random as r
from pprint import pprint
import argparse
parser = argparse.ArgumentParser(description="Generates a random date")
parser.add_argument("-y", "--year", help="Generate a date in a particular year", action='store', dest='year', default='') 

parser.add_argument("-n", "--number", help="Generate a certain number of dates", action='store', dest='number', default=1) 
args = parser.parse_args()

dates = {
        "Jan": 31,
        "Feb": 28,
        "Mar": 31,
        "Apr": 30,
        "May": 31,
        "Jun": 30,
        "Jul": 31,
        "Aug": 31,
        "Sep": 30,
        "Oct": 31,
        "Nov": 30,
        "Dec": 31
        }
year = vars(args)['year']
number = int(vars(args)['number'])
for num in range(number):
    month = r.choice(list(dates.keys()))
    day = r.randint(1,dates[month])
    #print(arg, getattr(args, arg)) 
    print(f'{day:02} {month} {year}')
#print(r.randint(1,))


