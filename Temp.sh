#! /bin/bash

curl "https://www.wunderground.com/history/airport/GNV/2016/09/08/DailyHistory.html?&format=1" >> weather.txt

maxtemp=`awk -F',' '{print$2}' weather.txt | sort -n | tail -n1`


echo The maximum temperature is $maxtemp

