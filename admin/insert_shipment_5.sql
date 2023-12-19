
-- Shippment 5

-- 36 STEVE MASTRIANNI 9405830109355019408253 - boards only
-- 56 Walt Pergo 9405830109355019408246 - boards only
-- 75 JOSH BENDASON  9436130109355001451589,9436130109355001451572,9436130109355001451565
-- 19 Jeff Coward 9436130109355001451596
-- 49 Al Schemmer 9436130109355001451558,9436130109355001451602

SELECT count(*) from shipping;
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (75,'august 30 2023 00:00:00','USPS','9436130109355001451589','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (75,'august 30 2023 00:00:00','USPS','9436130109355001451572','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (75,'august 30 2023 00:00:00','USPS','9436130109355001451565','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (19,'august 30 2023 00:00:00','USPS','9436130109355001451596','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (49,'august 30 2023 00:00:00','USPS','9436130109355001451558','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (49,'august 30 2023 00:00:00','USPS','9436130109355001451602','Click-N-Ship');

SELECT count(*) from shipping;

