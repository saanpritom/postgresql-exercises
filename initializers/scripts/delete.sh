#!/bin/bash

# Delete the database with it's associated user.

source ./environs.sh

source ./results.sh

echo "Revoking all privileges on all tables for the user."

psql -c "REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM $DATABASE_USER;"

CommandResults $? "All Tables privileges revoked successfully for the user $DATABASE_USER."

echo "Revoking all privileges on all sequences for the user."

psql -c "REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM $DATABASE_USER;"

CommandResults $? "All sequences privileges revoked successfully for the user $DATABASE_USER"

echo "Revoking all privileges on all functions for the user."

psql -c "REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM $DATABASE_USER;"

CommandResults $? "All functions privileges revoked successfully for the user $DATABASE_USER"

echo "Revoking all privileges on all schemas for the user."

psql -c "REVOKE ALL PRIVILEGES ON SCHEMA public FROM $DATABASE_USER;"

CommandResults $? "All schemas privileges revoked successfully for the user $DATABASE_USER"

echo "Dropping default schema."

psql -c "DROP SCHEMA IF EXISTS $DEFAULT_SCHEMA;"

CommandResults $? "Schema $DEFAULT_SCHEMA dropped successfully."

echo "Dropping database."

psql -c "DROP DATABASE IF EXISTS $DATABASE_NAME;"

CommandResults $? "Database $DATABASE_NAME dropped successfully."

echo "Dropping user role."

psql -c "DROP ROLE IF EXISTS $DATABASE_USER;"

CommandResults $? "User role $DATABASE_USER dropped successfully."

echo "Dropping user."

psql -c "DROP USER IF EXISTS $DATABASE_USER;"

CommandResults $? "User $DATABASE_USER dropped successfully."

CommandResults $? "Database deletion is successful."



