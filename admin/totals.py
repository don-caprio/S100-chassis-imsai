#!/usr/bin/python3

import sqlite3
con = sqlite3.connect('orders.db')
cur = con.cursor()

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
# 15  FP Mini PCB  6
# 16  IMSAI Switch Set   8
# 17  IMSAI CPA PCB      7
# 18  Inv No.
# 19  Amount received

# 1|S-100 Chassis|S-100 Reproduction IMSAI Chassis
# 2|Blank Bezel|
# 3|FPmini Bezel|
# 4|IMSAI Bezel|
# 5|9-Slot backplane PCB|
# 6|FPMini PCB|
# 7|IMSAI CPA PCB|
# 8|IMSAI Switch Set|
# 9|i8212|Intel i8212 chip
# 10|8T97|

# chassis_cnt           1 
# blank_bezel_cnt       2 
# fpMini_bezel_cnt      3
# imsai_Bezel_cnt       4 
# nineslot_pcb_cnt      5 
# fpmini_pcb_cnt        6 
# imsai_cpa_pcb_cnt     7 
# imsai_switch_set_cnt  8

# id          int PRIMARY KEY ,
# order_date  int NOT NULL,
# product_id  int NOT NULL,
# customer_id int NOT NULL,
# order_no    int UNIQUE,
# qty         int NOT NULL,
# ship_date   int,
# ship_status text


for row in cur.execute('SELECT sum(chassis_cnt), sum(blank_bezel_cnt), sum(fpMini_bezel_cnt), sum(imsai_Bezel_cnt), sum(nineslot_pcb_cnt), sum(fpmini_pcb_cnt), sum(imsai_cpa_pcb_cnt), sum(imsai_switch_set_cnt)  FROM customers'):
       print(' {} Chassis'.format(row[0]))
       print(' {} Blank Bezel'.format(row[1]))
       print(' {} FPMini Bezel'.format(row[2]))
       print(' {} IMSAI Bezel'.format(row[3]))
       print(' {} Backplane PCB'.format(row[4]))
       print(' {} FPMini PCB'.format(row[5]))
       print(' {} IMSAI CP-A PCB'.format(row[6]))
       print(' {} IMSAI Switch Set'.format(row[7]))



