
CREATE TABLE customers (
id                 int PRIMARY KEY,
date               int,
fname              text,
lname              text,
email              text,
street_addr1       text,
street_addr2       text,
city               text,
state              text,
zip                text,
chassis_cnt        int default 0,
blank_bezel_cnt    int default 0,
fpMini_bezel_cnt   int default 0,
imsai_Bezel_cnt    int default 0,
nineslot_pcb_cnt   int default 0,
fpmini_pcb_cnt     int default 0,
imsai_switch_set_cnt   int default 0,
imsai_cpa_pcb_cnt  int default 0,
invoice_no         text,
amount_rcvd        int default 0 ,
country            text
);


CREATE TABLE products (
id          int PRIMARY KEY ,
name        text,
description text,
part_nuimber text
);

INSERT INTO products (id, name,description, part_number) VALUES (1,'S-100 Chassis','S-100 Reproduction IMSAI Chassis','');
INSERT INTO products (id, name,description, part_number) VALUES (2,'Blank Bezel','','DC-10-0013');
INSERT INTO products (id, name,description, part_number) VALUES (3,'FPmini Bezel','','DC-10-0011');
INSERT INTO products (id, name,description, part_number) VALUES (4,'IMSAI Bezel','','DC-10-0002');
INSERT INTO products (id, name,description, part_number) VALUES (5,'9-Slot backplane PCB','PCB-9BACKPLANE');
INSERT INTO products (id, name,description, part_number) VALUES (6,'FPMini PCB','PCB-FPMINI');
INSERT INTO products (id, name,description, part_number) VALUES (7,'IMSAI CPA PCB','PCB-IMSAI-CPA');
INSERT INTO products (id, name,description, part_number) VALUES (8,'IMSAI Switch Set','NKK-LRG-SET');
INSERT INTO products (id, name,description, part_number) VALUES (9,'i8212','Intel i8212 chip','');
INSERT INTO products (id, name,description, part_number) VALUES (10,'8T97','','');


CREATE TABLE orders (
id          int PRIMARY KEY ,
order_date  int NOT NULL,
product_id  int NOT NULL,
customer_id int NOT NULL,
order_no    text,
qty         int NOT NULL,
ship_date   int,
ship_status text 
);

update customers set date = CURRENT_TIMESTAMP;

