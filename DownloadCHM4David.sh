#!/bin/bash

echo "Here is a String" | grep -Po '(?<=(Here )).*(?= String)'
##get project name
wget -O - https://glihtdata.gsfc.nasa.gov/files/tmp/4David/  | grep -Po '(?<=(href=")).*(?=(/">FL))'> filenames_david.txt

####download
######

input="filenames_david.txt"
while IFS= read -r line
do
a='https://glihtdata.gsfc.nasa.gov/files/tmp/4David/'
b='/lidar/geotiff/'
c='_CHM.tar.gz'
web="${a}${line}${b}${line}${c}"
echo "${web}"
wget ${web}
done < "$input"





#https://glihtdata.gsfc.nasa.gov/files/G-LiHT/FL_20170326_FIA1/lidar/geotiff/FL_20170326_FIA1_CHM.tar.gz