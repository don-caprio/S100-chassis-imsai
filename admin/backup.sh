#!/bin/bash
BKUP_FILENAME="customers_orders.sq3"
DUMP_FILENAME="customers_orders.dump"

echo "Performing sqlite .backup to $BKUP_FILENAME..."
sqlite3 orders.db ".backup $BKUP_FILENAME"
echo "Performing sqlite .dump... to $DUMP_FILENAME"
sqlite3 orders.db .dump > $DUMP_FILENAME

