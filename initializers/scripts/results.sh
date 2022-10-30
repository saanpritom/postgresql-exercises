#!/bin/bash

# Print command output results.

set -e

# Command output function
CommandResults () {
  if [ "$1" -eq 0 ]; then
    echo "$2"
  else
    echo "$1"
  fi
}