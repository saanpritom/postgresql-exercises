#!/bin/bash

# Run all the scripts sequentially. Run this script to create and prepare DB from scratch.

source ./create.sh

source ./tables.sh

source ./keys.sh

source ./indexes.sh

source ./data.sh