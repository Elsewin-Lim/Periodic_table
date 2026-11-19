#!/bin/bash


PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"


if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit 0
fi



if [[ $1 =~ ^[0-9]+$ ]]
then
  CONDITION="e.atomic_number = $1"
else
  CONDITION="e.symbol = '$1' OR e.name = '$1'"
fi

