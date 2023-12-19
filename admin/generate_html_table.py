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

def int_to_text(value):
    if value == 0:
       return ' '
    else:
       return value

def print_td(value):
    print('<td>{}</td>'.format(int_to_text(value)))


con = sqlite3.connect('orders.db')
cur = con.cursor()

now = datetime.datetime.now()
print('<h2>Updated: <span style="color: #ff0000;">{}</span></h2><br>'.format(now.strftime("%Y-%m-%d %H:%M:%S")))

print('<table style="background-color: #1be4d6;" border="0">')
print('<tbody>')
print('<tr>')
print('<td><strong>Builder</strong></td>')
print('<td><strong>Chassis</strong></td>')
print('<td><strong>Blank Bezel</strong></td>')
print('<td><strong>FPMini Bezel</strong></td>')
print('<td><strong>IMSAI Bezel</strong></td>')
print('<td><strong>9 Slot backplane</strong></td>')
print('<td><strong>FPMini PCB</strong></td>')
print('<td><strong>IMSAI CPA PCB</strong></td>')
print('<td><strong>IMSAI Switch Set</strong></td>')
print('<td><strong>Ship Date</strong></td>')
print('<td><strong>Carrier</strong></td>')
print('<td><strong>Tracking</strong></td>')
print('</tr>')

#for row in cur.execute('SELECT * FROM customers ORDER BY lname COLLATE NOCASE'):
for row in cur.execute('SELECT * FROM customers LEFT JOIN shipping ON customers.id = shipping.customer_id COLLATE NOCASE ORDER BY customers.lname'):
    print('<tr>')
    print('<td>{}, {}</td>'.format(row[3],row[2])) 
    #print('<td>{}</td>'.format(row[4]))
    #print('<td></td>'.format(int_to_text(row[10])))
    print_td(row[10])
    print_td(row[11])
    print_td(row[12])
    print_td(row[13])
    print_td(row[14])
    print_td(row[15])
    print_td(row[17])
    print_td(row[16])
    print_td(row[24])
    print_td(row[25])
    print_td(row[26])
    print('</tr>')

for row in cur.execute('SELECT sum(chassis_cnt), sum(blank_bezel_cnt), sum(fpMini_bezel_cnt), sum(imsai_Bezel_cnt),sum(nineslot_pcb_cnt), sum(fpmini_pcb_cnt), sum(imsai_cpa_pcb_cnt), sum(imsai_switch_set_cnt)  FROM customers'):
       print('<tr>')
       print('<td>TOTALS</td>')
       print('<td>{}</td>'.format(row[0]))
       print('<td>{}</td>'.format(row[1]))
       print('<td>{}</td>'.format(row[2]))
       print('<td>{}</td>'.format(row[3]))
       print('<td>{}</td>'.format(row[4]))
       print('<td>{}</td>'.format(row[5]))
       print('<td>{}</td>'.format(row[6]))
       print('<td>{}</td>'.format(row[7]))
       print('<td></td>')
       print('<td></td>')
       print('<td></td>')
       print('</tr>')

print('</tbody>')
print('</table>')


