#! /bin/bash

echo "What day do you want?"

read day

echo "What month do you want?"

read month

echo "what year do you want?"

read year


curl "https://www.wunderground.com/history/airport/GNV/$year/$month/$day/DailyHistory.html?&format=1" >> weather.txt


maxtemp=`awk -F',' '{print$2}' weather.txt | sort -n | tail -n1`


echo The maximum temperature is $maxtemp
day
