#!/bin/bash

# Create Database user and an empty database with some predefined configurations.

source ./environs.sh

source ./results.sh

echo "Creating User."

psql -c "CREATE USER $DATABASE_USER WITH CREATEDB CREATEROLE LOGIN PASSWORD '$DATABASE_PASSWORD';"

CommandResults $? "User $DATABASE_USER created successfully."

echo "Setting client encoding."

psql -c "ALTER ROLE $DATABASE_USER SET client_encoding TO '$CLIENT_ENCODING';"

CommandResults $? "Client encoded is set to $CLIENT_ENCODING successfully."

echo "Setting default transaction isolation."

psql -c "ALTER ROLE $DATABASE_USER SET default_transaction_isolation TO '$TRANSACTION_ISOLATION';"

CommandResults $? "Transaction isolation is set to $TRANSACTION_ISOLATION successfully."

echo "Setting user timezone."

psql -c "ALTER ROLE $DATABASE_USER SET timezone TO '$USER_TIMEZONE';"

CommandResults $? "User timezone is set to $USER_TIMEZONE successfully."

echo "Set standard conforming string for the database."

psql -c "ALTER ROLE $DATABASE_USER SET standard_conforming_strings = $STANDARD_CONFORMING_STRINGS;"

CommandResults $? "Standard conforming string is set successfully."

echo "Set check function bodies for the database."

psql -c "ALTER ROLE $DATABASE_USER SET check_function_bodies = $CHECK_FUNCTION_BODIES;"

CommandResults $? "Check function bodies is set successfully."

echo "Set client minimum messages for the database."

psql -c "ALTER ROLE $DATABASE_USER SET client_min_messages = $CLIENT_MIN_MESSAGES;"

CommandResults $? "Client minimum messages is set successfully."

echo "Set default tablespace for the database."

psql -c "ALTER ROLE $DATABASE_USER SET default_tablespace = '';"

CommandResults $? "Default tablespace is set successfully."

echo "Set default OIDs for the database."

psql -c "ALTER ROLE $DATABASE_USER SET default_with_oids = $DEFAULT_WITH_OIDS;"

CommandResults $? "Default OIDs is set successfully."

echo "Creating Database."

psql -c "CREATE DATABASE $DATABASE_NAME WITH OWNER $DATABASE_USER;"

CommandResults $? "Database $DATABASE_NAME is created successfully."

echo "Granting all permissions of the user to the database."

psql -c "GRANT ALL PRIVILEGES ON DATABASE $DATABASE_NAME TO $DATABASE_USER;"

CommandResults $? "Permission successfully granted for $DATABASE_USER on $DATABASE_NAME."

echo "Creating default schema."

psql -U "$DATABASE_USER" -d "$DATABASE_NAME" -c "CREATE SCHEMA $DEFAULT_SCHEMA;"

CommandResults $? "Schema creation is successful."

echo "Set default search path for the database."

psql -c "ALTER ROLE $DATABASE_USER SET search_path = $DEFAULT_SCHEMA, pg_catalog;"

CommandResults $? "Search path is set successfully."

CommandResults $? "Database creation is successful."





