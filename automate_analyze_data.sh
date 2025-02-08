#!/bin/bash
if [ ! -f "raw_data/satelite_temperature_data.csv" ]; then
    echo "Error: satelite_temperature_data.csv not found in raw_data directory"
    exit 1
fi
echo "Extracting top 10 highest temperatures..."

tail -n +2 raw_data/satelite_temperature_data.csv | sort -t',' -k3 -nr | head -n 10 > analyzed_data/highest_temp.csv
read -p "Enter country name for humidity analysis: " country_name
echo "Extracting humidity data for ${country_name}..."
grep -i "$country_name" raw_data/satelite_temperature_data.csv | sort -t',' -k4 -nr > "analyzed_data/humidity_data_${country_name}.csv"

echo "Analysis completed! Check the analyzed_data directory for results."
