
#!/bin/bash


year=`date -d yesterday +%Y`

month=`date -d yesterday +%m`

day=`date -d yesterday +%d`


curl "https://www.wunderground.com/history/airport/GNV/$year/$month/$day/DailyHistory.html?&format=1" > weather.txt


maxtemp=`awk -F',' '{print$2}' weather.txt | sort -n | tail -n1`


echo The maximum temperature is $maxtemp
