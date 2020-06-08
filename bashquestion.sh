#!/usr/bin/env bash

echo "a, The first 3 of arrive delay flights from SFO airport are: "

csvcut -c 15,17 2007.csv | csvgrep -c Origin -m SFO | csvcut -c 1 | head -4 > first3sfo.csv

csvlook first3sfo.csv

echo "b, Top 3 destination airpots are: "

csvcut -c 18 2007.csv | sort | uniq -c | sort -r -n | awk 'BEGIN {print "Dest"",""Counts"}; {print $2","$1}' | head -4 > top3dest.csv

csvlook top3dest.csv
