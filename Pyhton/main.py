# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and setting

import csv
with open('weather.csv', newline='') as File:
    reader = csv.reader(File)
    for row in reader:
        print(row)
