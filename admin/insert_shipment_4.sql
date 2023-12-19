
-- Shippment 4

-- 36 STEVE MASTRIANNI 9436130109355000240436
-- 36 STEVE MASTRIANNI 9436130109355000240443
-- 28 TODD GOODMAN     9436130109355000240405
-- 69 KEN LESNIAK      9436130109355000240412
-- 43 JIM OKEEFE       9436130109355000240450
-- 18 JAY COTTON       9436130109355000240399
-- 6  BOB BELL         9436130109355000240429

SELECT count(*) from shipping;
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (36,'july 20 2023 00:00:00','USPS','9436130109355000240436','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (36,'july 20 2023 00:00:00','USPS','9436130109355000240443','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
             VALUES (28,'july 20 2023 00:00:00','USPS','9436130109355000240405','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
             VALUES (69,'july 20 2023 00:00:00','USPS','9436130109355000240412','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
             VALUES (43,'july 20 2023 00:00:00','USPS','9436130109355000240450','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
             VALUES (18,'july 20 2023 00:00:00','USPS','9436130109355000240399','Click-N-Ship');
INSERT INTO shipping (customer_id,ship_date,carrier,tracking_no,service_provider) 
            VALUES (6,'july 20 2023 00:00:00','USPS','9436130109355000240429','Click-N-Ship');

SELECT count(*) from shipping;
