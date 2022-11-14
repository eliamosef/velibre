#!/bin/bash
echo "Getting data from API: opendata.paris.fr"

OUTPUT_PATH=$1

curl -s -X 'GET'   'https://opendata.paris.fr/api/v2/catalog/datasets/velib-disponibilite-en-temps-reel/exports/csv?select=stationcode%2Cis_installed%2Cnumbikesavailable%2Cduedate%2Cnom_arrondissement_communes&limit=-1&offset=0&timezone=UTC'   -H 'accept: */*' > $OUTPUT_PATH