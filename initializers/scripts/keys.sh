#!/bin/bash

# SET primary keys and foreign key relations for tables.

source ./environs.sh

source ./results.sh

echo "Set KEY based relations for tables."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -f ../rules/keys.sql

CommandResults $? "Key relations have created successfully for all the tables."

CommandResults $? "Key creation has done successfully."