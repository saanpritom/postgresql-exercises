#!/bin/bash

# Create dummy tables for the database.

source ./environs.sh

source ./results.sh

echo "Create bookings table."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -f ../tables/bookings.sql

CommandResults $? "Table bookings is created successfully."

echo "Create facilities table."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -f ../tables/facilities.sql

CommandResults $? "Table facilities is created successfully."

echo "Create members table."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -f ../tables/members.sql

CommandResults $? "Table members is created successfully."

CommandResults $? "All table creation has done."