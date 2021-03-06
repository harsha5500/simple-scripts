#!/bin/bash

# Enable POSTGIS plugin for a give database

echo "Enabling postgis for $1"

psql -d $1 -c "CREATE EXTENSION fuzzystrmatch"
psql -d $1 -c "CREATE EXTENSION postgis;"
psql -d $1 -c "CREATE EXTENSION postgis_topology;"
psql -d $1 -c "CREATE EXTENSION postgis_tiger_geocoder"
