#!/usr/bin/python3

import sqlite3
import datetime


#  0  ID
#  1  date
#  2  First Name
#  3  Last Name
#  4  Your Email
#  5  Street Address
#  6  Street Address Line 2
#  7  City
#  8  State / Province
#  9  Postal / Zip Code
# 10  Chassis
# 11  Blank Bezel
# 12  FP Mini Bezel
# 13  IMSAI Bezel
# 14  9 Slot PCB
# 15  FP Mini PCB
# 16  IMSAI Switch Set
# 17  IMSAI CPA PCB
# 18  Inv No.
# 19  Amount received


con = sqlite3.connect('orders.db')
cur = con.cursor()

for row in cur.execute('SELECT email FROM customers'):
    if row[0]:
       print('{},'.format(row[0]),end="")
print('')


