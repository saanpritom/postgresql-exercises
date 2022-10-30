#!/bin/bash

# Insert dummy data into tables.

source ./environs.sh

source ./results.sh

echo "Insert data into the bookings table."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -f ../data/bookings.sql

CommandResults $? "Booking table data is inserted successfully."

echo "Insert data into the facilities table."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -f ../data/facilities.sql

CommandResults $? "Facilities table data is inserted successfully."

echo "Insert data into the members table."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -f ../data/members.sql

CommandResults $? "Members table data is inserted successfully."

CommandResults $? "Data insertion has done successfully for all the tables."