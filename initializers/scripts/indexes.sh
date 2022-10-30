#!/bin/bash

# SET indexes for table columns.

source ./environs.sh

source ./results.sh

echo "Create Indexes."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -f ../rules/indexes.sql

CommandResults $? "Indexes are created successfully for all the tables."

CommandResults $? "Index creation has done successfully."