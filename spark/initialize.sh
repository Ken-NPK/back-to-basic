#!/bin/bash

# Create data directory if not found
mkdir -p ./data

# Download required dataset for experiment.
cd data

# 1. Firefighter dataset
wget -P ./data https://data.sfgov.org/api/views/wr8u-xric/rows.csv?accessType=DOWNLOAD -O fire_incidents.csv