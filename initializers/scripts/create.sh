#!/bin/bash

# Create Database user and an empty database with some predefined configurations.

source ./environs.sh

source ./results.sh

echo "Creating User."

psql -c "CREATE USER $DATABASE_USER WITH PASSWORD '$DATABASE_PASSWORD';"

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

echo "Creating Database."

psql -c "CREATE DATABASE $DATABASE_NAME WITH OWNER $DATABASE_USER;"

CommandResults $? "Database $DATABASE_NAME is created successfully."

echo "Granting all permissions of the user to the database."

psql -c "GRANT ALL PRIVILEGES ON DATABASE $DATABASE_NAME TO $DATABASE_USER;"

CommandResults $? "Permission successfully granted for $DATABASE_USER on $DATABASE_NAME."

CommandResults $? "Database creation is successful."