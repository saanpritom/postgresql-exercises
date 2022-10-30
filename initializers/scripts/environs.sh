#!/bin/bash

# Read environment variables from the .env file.

# The file .env must be existed on the root directory.

eval "$(grep ^DATABASE_NAME= ../../.env)";
eval "$(grep ^DATABASE_USER= ../../.env)";
eval "$(grep ^DATABASE_PASSWORD= ../../.env)";
eval "$(grep ^CLIENT_ENCODING= ../../.env)";
eval "$(grep ^TRANSACTION_ISOLATION= ../../.env)";
eval "$(grep ^USER_TIMEZONE= ../../.env)";