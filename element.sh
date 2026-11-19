#!/bin/bash


PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"


if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit 0
fi

# Otherwise, use $1 in your PSQL query
echo "You searched for: $1"
