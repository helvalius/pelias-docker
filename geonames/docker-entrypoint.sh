#!/bin/bash

set -e

cd /mnt/data/geonames

# Download geonames data
./bin/pelias-geonames -d de
