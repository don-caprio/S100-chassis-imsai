DROP TABLE IF EXISTS shipping;

CREATE TABLE shipping (
rowid              INTEGER PRIMARY KEY AUTOINCREMENT,
customer_id        INTEGER,
order_id           INTEGER,
ship_date          DATETIME,
carrier            text,
tracking_no        text,
service_provider   text,
notes              text
);

