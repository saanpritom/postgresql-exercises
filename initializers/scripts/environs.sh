#!/bin/bash

# Read environment variables from the .env file.

# The file .env must be existed on the root directory.

eval "$(grep ^DATABASE_NAME= ../../.env)";
eval "$(grep ^DATABASE_USER= ../../.env)";
eval "$(grep ^DATABASE_PASSWORD= ../../.env)";
eval "$(grep ^CLIENT_ENCODING= ../../.env)";
eval "$(grep ^TRANSACTION_ISOLATION= ../../.env)";
eval "$(grep ^USER_TIMEZONE= ../../.env)";
eval "$(grep ^DEFAULT_SCHEMA= ../../.env)";
eval "$(grep ^STANDARD_CONFORMING_STRINGS= ../../.env)";
eval "$(grep ^CHECK_FUNCTION_BODIES= ../../.env)";
eval "$(grep ^CLIENT_MIN_MESSAGES= ../../.env)";
eval "$(grep ^DEFAULT_WITH_OIDS= ../../.env)";