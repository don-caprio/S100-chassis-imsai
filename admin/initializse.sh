#!/bin/bash

if [ -e orders.db ]; then
   echo "Database already exists!"
   echo "Remove and re-run if thats your entention"
   exit 1
fi

echo "Creating database"
sqlite3 orders.db < create_db.sql

echo "Importing customers"
sqlite3 orders.db < import.sql

echo "Normmalizing data"
sqlite3 orders.db < normalize.sql

echo "$(sqlite3 orders.db 'select count(*) from customers;') customers imported"

echo "finished"

