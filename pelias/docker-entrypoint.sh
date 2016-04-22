#!/bin/bash

set -e

pelias schema#master drop_index --force-yes
pelias schema#master create_index

pelias geonames import 
pelias openstreetmap#master import

#pelias openaddresses#master import --admin-values
