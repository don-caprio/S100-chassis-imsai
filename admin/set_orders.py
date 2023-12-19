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

def int_to_text(value):
    if value == 0:
       return ' '
    else:
       return value

def print_td(value):
    print('<td>{}</td>'.format(int_to_text(value)))

for row in cur.execute('SELECT * FROM customers ORDER BY lname COLLATE NOCASE'):
    print('# creating orders for {} {}'.format(row[2],row[3]))
    #print(' [{}] [{}] [{}] [{}] [{}] [{}] [{}] [{}]'.format(row[10],row[11],row[12],row[13],row[14],row[15],row[16],row[17]))
    if not int(row[10]) == 0:
       print('INSERT INTO orders (order_date,product_id,customer_id,qty) VALUES(CURRENT_TIMESTAMP,1,{},{});'.format(row[0],row[10]))
    if not int(row[11]) == 0:
       print('INSERT INTO orders (order_date,product_id,customer_id,qty) VALUES(CURRENT_TIMESTAMP,2,{},{});'.format(row[0],row[11]))
    if not int(row[12]) == 0:
       print('INSERT INTO orders (order_date,product_id,customer_id,qty) VALUES(CURRENT_TIMESTAMP,3,{},{});'.format(row[0],row[12]))
    if not int(row[13]) == 0:
       print('INSERT INTO orders (order_date,product_id,customer_id,qty) VALUES(CURRENT_TIMESTAMP,4,{},{});'.format(row[0],row[13]))
    if not int(row[14]) == 0:
       print('INSERT INTO orders (order_date,product_id,customer_id,qty) VALUES(CURRENT_TIMESTAMP,5,{},{});'.format(row[0],row[14]))
    if not int(row[15]) == 0:
       print('INSERT INTO orders (order_date,product_id,customer_id,qty) VALUES(CURRENT_TIMESTAMP,6,{},{});'.format(row[0],row[15]))
    if not int(row[16]) == 0:
       print('INSERT INTO orders (order_date,product_id,customer_id,qty) VALUES(CURRENT_TIMESTAMP,8,{},{});'.format(row[0],row[16]))
    if not int(row[17]) == 0:
       print('INSERT INTO orders (order_date,product_id,customer_id,qty) VALUES(CURRENT_TIMESTAMP,7,{},{});'.format(row[0],row[17]))



