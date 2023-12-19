
-- Shippment 6 10/10/2023

--  2 EVAN Allen        9436130109355003145264
-- 36 STEVE MASTRIANNI  9400130109355003735248
-- 11 Dennis Bushmitch  9436130109355003145271
--  7 Greg Bober        9436130109355003145240
-- 16 David Carroll     9436130109355003145226
--  3 Corey Anderson    9436130109355003145233
-- 13 Rich Camarda      9436130109355003145257


SELECT count(*) from shipping;
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (2,'October 10 2023 00:00:00','USPS','9436130109355003145264','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (36,'October 10 2023 00:00:00','USPS','9400130109355003735248','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (11,'October 10 2023 00:00:00','USPS','9436130109355003145271','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (7,'October 10 2023 00:00:00','USPS','9436130109355003145240','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (16,'October 10 2023 00:00:00','USPS','9436130109355003145226','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (3,'October 10 2023 00:00:00','USPS','9436130109355003145233','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (13,'October 10 2023 00:00:00','USPS','9436130109355003145257','Click-N-Ship');

SELECT count(*) from shipping;

