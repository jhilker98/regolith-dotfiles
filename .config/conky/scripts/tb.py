#!/usr/bin/env python3
import json
import os 
import argparse


path = os.environ['HOME'] + '/Dropbox/.taskbook/storage/storage.json'
file = open(path, 'r')
data = json.loads(file.read())

parser = argparse.ArgumentParser(prog="tb.py",description="This is a program for displaying your taskbook todo list with a certain format. It always displays the task description.", usage='%(prog)s [options]')
parser.add_argument("-i","--icon", help="display the icons of your todo list", action="store_true")
parser.add_argument("-n", "--number",help="display the ID numbers of the tasks on your todo list.", action="store_true")
parser.add_argument("-f","--full",help="display the ID number, icon, and description of the task", action="store_true")

args = parser.parse_args()

if args.full or args.icon and args.number:
    for _, v in data.items():
        if v['_isTask']:
            if v['isComplete']:
                print(f' {v["_id"]} {v["description"]}')
            else:
                print(f' {v["_id"]} {v["description"]} ')



elif args.icon:
    for _, v in data.items():
      if v['_isTask']:
        if v['isComplete']:
            print(f' {v["description"]}') 
        else:
            print(f' {v["description"]}')

elif args.number:
    for _,v in data.items():
        if v['_isTask']:
            print(f'{v["_id"]} {v["description"]}')


