#!/bin/bash
RAW_DATA="raw_data/satelite_temperature_data.csv"
sort -t ',' -k3 -nr $RAW_DATA | head -10 > ../analyzed_data/highest_temp.csv
grep "Senegal" $RAW_DATA | sort -t ',' -k4 -nr > ../analyzed_data/humidity_data_Senegal.csv 
